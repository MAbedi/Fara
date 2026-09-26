-- Modify Data :  1405/06/26   fun&view_Accounting -- 

set nocount on

DECLARE @TopicType int
DECLARE @group int
DECLARE @Kol int
DECLARE @Moeen int
SET @TopicType=0

Select @group =CodeLength from  acc.AccTopicLevels
where LevelID = 1  and  acc.AccTopicLevels.TopicType=@TopicType
Select @Kol =CodeLength from  acc.AccTopicLevels
where LevelID = 2  and  acc.AccTopicLevels.TopicType=@TopicType
Select @Moeen =CodeLength from  acc.AccTopicLevels
where LevelID = 3  and  acc.AccTopicLevels.TopicType=@TopicType


--IF (SELECT COUNT(*) FROM Acc.Analyze where FieldName='Left(acc.Documents.TopicCode,'+LTRIM(@Moeen)+')') = 0
    ---DELETE FROM Acc.Analyze;



IF (SELECT COUNT(*) FROM Acc.Analyze) < 14
BEGIN
    DELETE FROM Acc.Analyze;

    INSERT INTO Acc.Analyze (ID, CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName)
    VALUES
    (1,  N'گروه',                     N'Left(acc.Documents.TopicCode,1)',                                    N'Acc.Categories',      N'MoeenName_L1',   N'C1',   N'TopicCode'),
    (2,  N'كل',                       N'Left(acc.Documents.TopicCode,2)',                                    N'Acc.Categories',      N'MoeenName_L1',   N'C2',   N'TopicCode'),
    (3,  N'معين',                     N'Left(acc.Documents.TopicCode,4)',                                    N'Acc.Categories',      N'MoeenName_L1',   N'C3',   N'TopicCode'),
    (4,  N'تفصيلي سطح یک',           N'acc.Documents.DetailCode',                                           N'acc.Details',         N'DetailName_L1',  N'D',    N'DetailCode'),
    (5,  N'تفصيلي سطح دو',           N'acc.Documents.CTopicCode',                                           N'Acc.CenterTopics',    N'CTopicName_l1',  N'CT1',  N'CTopicCode'),
    (6,  N'تفصيلي سطح سه',           N'acc.Documents.CTopicCode2',                                          N'Acc.CenterTopics2',   N'CTopicName2_L1', N'CT2',  N'CTopicCode2'),
    (7,  N'تفصيلي سطح چهار',        N'acc.Documents.CTopicCode3',                                          N'Acc.CTopicCode3',     N'CTopicName3_L1', N'CT3',  N'CTopicCode3'),
    (8,  N'سال‏مالي',                 N'Acc.DocGroups.YearID',                                               N'Util.MaliYear',       NULL,              N'Y',    N'YearID'),
    (9,  N'ماه',                      N'SUBSTRING(Acc.DocGroups.DocDate,6,2)',                               N'Acc.Months',          N'MonthName',      N'Months', N'MonthID'),
    (10, N'شماره سند',               N'LTRIM(Acc.DocGroups.Serial) + ''_'' + LTRIM(Acc.DocGroups.YearID) + ''_'' + LTRIM(Acc.DocGroups.CompanyCode)', N'Acc.DocList', N'DocDate', N'C5', N'Serial'),
    (11, N'بودجه',                   N'Acc.Documents.BudgetTopicID',                                        N'Acc.BudgetTopics',    N'BudgetCaption_L1', N'Nu', N'BudgetTopicID'),
    (12, N'طرح بودجه ای',            N'Acc.Documents.ProjectID',                                            N'Acc.Projects',        N'ProjectCaption_L1', N'Pr', N'ProjectID'),
    (13, N'نوع ارز',                 N'Acc.Documents.CurrencyType',                                         N'dbo.Currencies',      N'CurrenciesName', NULL,    NULL),
    (14, N'شرکت',                    N'Acc.DocGroups.CompanyCode',                                          N'Acc.Companies',       N'CompanyName_L1', N'Co',   N'CompanyCode');
END


if (select count(*) from Acc.BudgetTopics) =0
INSERT INTO Acc.BudgetTopics
                         (BudgetTopicID, BudgetCaption_L1, BudgetCaption_L2, LevelID, Essence)
VALUES        (0, '', '', 1,0)



if not exists (SELECT FormInfoID FROM  Acc.FormsInfo WHERE (FormType = 11) AND (InfoID = 99) )
begin
	declare @FormInfoID int

	SELECT @FormInfoID=MAX(FormInfoID) 
	FROM  Acc.FormsInfo

	INSERT INTO  Acc.FormsInfo  (FormInfoID, InfoID, InfoName_l1, FormType, InfoName_l2)
	SELECT     @FormInfoID+1, 0, 'افتتاحیه', 11,'خلاصه اسناد ماهیانه'
	union all
	SELECT     @FormInfoID+2, 98, 'سود و زیان', 11,'خلاصه اسناد ماهیانه'
	union all
	SELECT     @FormInfoID+3, 99, 'اختتامیه', 11,'خلاصه اسناد ماهیانه'
end
GO

UPDATE       Acc.FormsInfo
SET                SortID = InfoID
WHERE        (FormType = 11) AND (InfoID <> 0) AND (ISNULL(SortID, 0) = 0)


begin -- Alter table
	IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_Documents]', 'TR') IS NOT NULL 
		Alter table acc.documents disable trigger TR_ConfigChangeLog_Documents

	if ( COLUMNPROPERTY( OBJECT_ID('acc.Config'),'BudgetType','IsRowGuidCol')is  null )  
		Alter table acc.Config add BudgetType varchar(1000) null

	if ( COLUMNPROPERTY( OBJECT_ID('acc.Config'),'SanamaInfo','IsRowGuidCol')is  null )  
		Alter table acc.Config add SanamaInfo varchar(4000) null

	if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'EditableDetailRange','IsRowGuidCol')is  null )  
		ALTER TABLE [ACC].[Config] ADD [EditableDetailRange] [bit] NOT NULL  DEFAULT (1)

	if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'AccBookSortType','IsRowGuidCol')is  null )  
		ALTER TABLE [ACC].[Config] ADD [AccBookSortType] tinyint NOT NULL  DEFAULT (0)

	if ( COLUMNPROPERTY( OBJECT_ID('ACC.Config'),'ShowAccountInfoInDetailsReport','IsRowGuidCol')is  null )  
		ALTER TABLE [ACC].[Config] ADD [ShowAccountInfoInDetailsReport] tinyint NOT NULL  DEFAULT (0)

	IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_Documents]', 'TR') IS NOT NULL 
		Alter table acc.documents enable trigger TR_ConfigChangeLog_Documents

	IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Customers' AND type = 'F')
		ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Customers FOREIGN KEY(DetailCode)
		REFERENCES dbo.Customers (CustID)
		ON UPDATE CASCADE

	IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Customers1' AND type = 'F')
		ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Customers1 FOREIGN KEY(CTopicCode)
		REFERENCES dbo.Customers (CustID)

	IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Customers2' AND type = 'F')
		ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Customers2 FOREIGN KEY(CTopicCode2)
		REFERENCES dbo.Customers (CustID)

	IF NOT EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Documents_Customers3' AND type = 'F')
		ALTER TABLE Acc.Documents  WITH NOCHECK ADD  CONSTRAINT FK_Documents_Customers3 FOREIGN KEY(CTopicCode3)
		REFERENCES dbo.Customers (CustID)
end 
---000---

begin -- update /DELETE tables
	UPDATE Acc.Documents SET DetailCode = 0 WHERE (DetailCode IS NULL)
	UPDATE Acc.Documents SET CTopicCode = 0 WHERE (CTopicCode IS NULL)
	UPDATE Acc.Documents SET CTopicCode2 = 0 WHERE (CTopicCode2 IS NULL)
	UPDATE Acc.Documents SET CTopicCode3 = 0 WHERE (CTopicCode3 IS NULL)
	UPDATE Acc.Contacts  Set YearID = cast(left(enddate,2) as int) where YearId = 0
	UPDATE Acc.Documents SET AidDocNo = 0 WHERE (AidDocNo  IS NULL)
	Update Acc.Documents Set DetailCompany = CompanyCode  
	where  DetailCompany= 0 
			AND (SELECT  CompanyCode FROM  Acc.Companies WHERE     (CompanyCode = 0)) is null 

	--DELETE FROM util.ScanType WHERE ScanType = 1 
	--DELETE FROM util.ScanInfo WHERE ScanType = 1 
end
---000---


-- Drop Veiw -- 
Begin -- Drop Veiw
	if exists (select * from sysobjects where id = object_id(N'[Acc].[CenterTopics3]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view  [Acc].[CenterTopics3]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DocList]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view  [Acc].[DocList]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopics3FORUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view  [Acc].CTopics3FORUse

	if exists (select * from sysobjects where id = object_id(N'[Acc].MainDetailsRange') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view  [Acc].MainDetailsRange

	if exists (select * from sysobjects where id = object_id(N'[Acc].[Months]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[Months]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[_4UpdateCompanyCode]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[_4UpdateCompanyCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DocTypes]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[DocTypes]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DescTemplates]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[DescTemplates]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccCodeWith5Levels]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[AccCodeWith5Levels]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AuditTopicFORUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[AuditTopicFORUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[BudgetTopicsFORUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[BudgetTopicsFORUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CategoriesForUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[CategoriesForUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CompaniesFORUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[CompaniesFORUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopics2FORUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[CTopics2FORUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopicsFORUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[CTopicsFORUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[FinancialTopicsFORUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[FinancialTopicsFORUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[ProjectsFORUse]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[ProjectsFORUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[ShowBalance]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[ShowBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[TopicLevelWithUperLevel]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[TopicLevelWithUperLevel]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[TrialBalanceFORAccCode]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[TrialBalanceFORAccCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[TrialCTopicsBalanceFORAccCode]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[TrialCTopicsBalanceFORAccCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[TrialDetailsBalanceFORAccCode]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[TrialDetailsBalanceFORAccCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[OtherDocuments]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view [Acc].[OtherDocuments]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopicCode3]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[CTopicCode3]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopics2And3]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[CTopics2And3]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CenterTopicAllRange]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[CenterTopicAllRange]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CenterTopics2]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[CenterTopics2]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CenterTopics]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[CenterTopics]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CenterTopicRange]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[CenterTopicRange]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CtopicNotes]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[CtopicNotes]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopicRangeTogether]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[CTopicRangeTogether]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DetailGroups]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[DetailGroups]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[MainDetails]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[MainDetails]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[Details]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[Details]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DetailRange]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[DetailRange]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[SanamaView]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[SanamaView]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[Currencies]') AND OBJECTPROPERTY(id, N'IsView') = 1)
		DROP VIEW [Acc].[Currencies]
end 
---000---

--  Drop Function   --
begin --  Drop Function
	if exists (select * from sysobjects where id = object_id(N'Acc.rptElectronicsBooks') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION Acc.rptElectronicsBooks

	if exists (select * from sysobjects where id = object_id(N'Acc.rptElectronicsBooks_Detail') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION Acc.rptElectronicsBooks_Detail

	if exists (select * from sysobjects where id = object_id(N'Acc.rptElectronicsBooks_Summary') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION Acc.rptElectronicsBooks_Summary
		  
	if exists (select * from sysobjects where id = object_id(N'Acc.rptElectronicsBooks_Monthly') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION Acc.rptElectronicsBooks_Monthly

	if exists (select * from sysobjects where id = object_id(N'Acc.CheckAllDocumentsAre') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION Acc.CheckAllDocumentsAre

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopics3OnDetailCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[CTopics3OnDetailCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccUserDetailsBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccUserDetailsBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialCTopics3Balance_CTopics]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialCTopics3Balance_CTopics]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialCTopicsBalance3]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialCTopicsBalance3]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialCTopicsBalance3]') AND xtype in (N'FN', N'IF', N'TF'))
	drop FUNCTION [Acc].[AccTrialCTopicsBalance3]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopics3OnTopicCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[CTopics3OnTopicCode]

	if exists (select * from sysobjects where id = object_id(N'[dbo].[SanamaValue]') AND xtype in (N'FN', N'IF', N'TF'))
		DROP FUNCTION [dbo].[SanamaValue]

	if exists (select * from sysobjects where id = object_id(N'[dbo].[SanamaKind]') AND xtype in (N'FN', N'IF', N'TF'))
		DROP FUNCTION [dbo].[SanamaKind]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialDetailsBalance_arzi]') AND xtype in (N'FN', N'IF', N'TF'))
		DROP FUNCTION [Acc].[AccTrialDetailsBalance_arzi]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DetailsOnTopicBook_arzi]') AND xtype in (N'FN', N'IF', N'TF'))
		DROP FUNCTION [Acc].[DetailsOnTopicBook_arzi]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialBalance_Arzi]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialBalance_Arzi]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccBooksCategories_arzi]') AND xtype in (N'FN', N'IF', N'TF'))
		DROP FUNCTION [Acc].[AccBooksCategories_arzi]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[UserDetailsOnTopicBook]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[UserDetailsOnTopicBook]

	if exists (select * from sysobjects where id = object_id(N'[dbo].[bsell_variance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [dbo].[bsell_variance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[BudgetsInfo]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[BudgetsInfo]


	if exists (select * from sysobjects where id = object_id(N'[Acc].[BudgetTopicBook]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[BudgetTopicBook]


	if exists (select * from sysobjects where id = object_id(N'[Acc].[RptBudgetSettlement]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[RptBudgetSettlement]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[BudgetReportOnTopicCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[BudgetReportOnTopicCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[BudgetTrialBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[BudgetTrialBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DateDifferenceDoc]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[DateDifferenceDoc]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[SplitString]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[SplitString]
    if exists (select * from sysobjects WHERE id = object_id(N'[dbo].[SplitString]') and xtype in (N'FN', N'IF', N'TF'))
	DROP FUNCTION [dbo].[SplitString]
	
	
	if exists (select * from sysobjects where id = object_id(N'[Acc].[AnalyzeCORmparisonBalanceWithSelected]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AnalyzeCORmparisonBalanceWithSelected]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DetailsOnTopicBookRelated]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[DetailsOnTopicBookRelated]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccBookFORSomeYear]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccBookFORSomeYear]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CheckAccCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[CheckAccCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[rptBalaceCtopicWithSomeColumn]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[rptBalaceCtopicWithSomeColumn]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[RptPORtionDocs]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[RptPORtionDocs]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccBooksCategories]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccBooksCategories]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccComparisonMonthBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccComparisonMonthBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccComparisonMonthCTopicsBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccComparisonMonthCTopicsBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccComparisonMonthCTopics2Balance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccComparisonMonthCTopics2Balance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccComparisonMonthDetailsBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccComparisonMonthDetailsBalance]
 
	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccDetailBookFORSomeYear]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccDetailBookFORSomeYear]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialBalance]

if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialBalanceFin]') AND xtype in (N'FN', N'IF', N'TF'))
drop FUNCTION [Acc].[AccTrialBalanceFin]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialBalance_SomeColumn]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialBalance_SomeColumn]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialCTopicsBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialCTopicsBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialCTopicsBalance_Details]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialCTopicsBalance_Details]
 
	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialCTopicsBalance2]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialCTopicsBalance2]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialCTopics2Balance_CTopics]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialCTopics2Balance_CTopics]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AccTrialDetailsBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AccTrialDetailsBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AnalyzeAccBooks]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AnalyzeAccBooks]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AnalyzeAccountInfo]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AnalyzeAccountInfo]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AnalyzeAccountInfoFORUse]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AnalyzeAccountInfoFORUse]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AnalyzeCORmparisonBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AnalyzeCORmparisonBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AnalyzeTrialBalance]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[AnalyzeTrialBalance]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[BalanceSheet]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[BalanceSheet]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[BalanceTaxonomy]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[BalanceTaxonomy]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopics2OnDetailCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[CTopics2OnDetailCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopics2OnTopicCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[CTopics2OnTopicCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopicsOnDetailCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[CTopicsOnDetailCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[CTopicsOnTopicCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[CTopicsOnTopicCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DetailsOnTopicBook]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[DetailsOnTopicBook]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[DetailsOnTopicBookSpecial]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[DetailsOnTopicBookSpecial]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[FORmsInfo_FilterType]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[FORmsInfo_FilterType]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[GeneralJournal]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[GeneralJournal]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[rptBalaceDetaillWithSomeColumn]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[rptBalaceDetaillWithSomeColumn]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[rptBalaceKollWithSomeColumn]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[rptBalaceKollWithSomeColumn]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[rptDailyDocuments]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[rptDailyDocuments]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[Rptjournal]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[Rptjournal]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[rptMonthDocuments]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[rptMonthDocuments]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[UpdateCategories]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[UpdateCategories]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[UpdateCompanyCode]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[UpdateCompanyCode]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[RptPORtionDocs_Koll]') AND xtype in (N'FN', N'IF', N'TF'))
		drop FUNCTION [Acc].[RptPORtionDocs_Koll]

	if exists (select * from sysobjects where id = object_id(N'[Acc].[GetValueFromConfig]') AND xtype in (N'FN', N'IF', N'TF'))
		DROP FUNCTION [Acc].[GetValueFromConfig]

End 
GO
-- drop procedure
begin -- drop procedure
	if exists (select * from sysobjects where id = object_id(N'Acc.SpFinalizeDocs') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure Acc.SpFinalizeDocs

	if exists (select * from sysobjects where id = object_id(N'[Acc].[AddCodingAllBank]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [Acc].[AddCodingAllBank]
 
	if exists (select * from sysobjects where id = object_id(N'[Acc].[SpTrialBalance]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [Acc].[SpTrialBalance]
 
	if exists (select * from sysobjects where id = object_id(N'[Acc].[SpOffices]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure  [Acc].[SpOffices] 

	if exists (select * from sysobjects where id = object_id(N'[Acc].[USP_4_InsertIntoPORtion]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure  [Acc].[USP_4_InsertIntoPORtion] 

	IF EXISTS (SELECT id FROM sysobjects WHERE id = object_id(N'[Acc].[PROC_Currencies]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE  [Acc].[PROC_Currencies] 
 
	IF EXISTS (SELECT id FROM sysobjects WHERE id = object_id(N'[Acc].[SP_Matrix]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE  [Acc].[SP_Matrix] 
 
	IF EXISTS (SELECT id FROM sysobjects WHERE id = object_id(N'[dbo].[template]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE  [dbo].[template] 
 
	IF EXISTS (SELECT id FROM sysobjects WHERE id = object_id(N'[Acc].[CreateSanamaXML]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE [Acc].[CreateSanamaXML] 
 
	IF EXISTS (SELECT id FROM sysobjects WHERE id = object_id(N'[Acc].[CreateSanamaXML_By_DateRange]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE [Acc].[CreateSanamaXML_By_DateRange] 

	IF EXISTS (SELECT id FROM sysobjects WHERE id = object_id(N'[Acc].[CreateSanamaXML_By_DateRange_2]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
	DROP PROCEDURE [Acc].[CreateSanamaXML_By_DateRange_2] 
end 
---000---

--Drop Trigger --
--Begin --Drop Trigger
	IF OBJECT_ID ('[Acc].[TR_CleanDocument]', 'TR') IS NOT NULL 
	DROP TRIGGER [Acc].[TR_CleanDocument]

	IF OBJECT_ID ('[Acc].[TR_UpdateDocNo]', 'TR') IS NOT NULL 
	DROP TRIGGER [Acc].[TR_UpdateDocNo]

	IF OBJECT_ID ('[Acc].[TR_UpdateCurrencies]', 'TR') IS NOT NULL 
	DROP TRIGGER [Acc].[TR_UpdateCurrencies]

	IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_DocGroups_AfterInsert]', 'TR') IS NOT NULL 
	DROP TRIGGER [Acc].[TR_ConfigChangeLog_DocGroups_AfterInsert]

	IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_Documents]', 'TR') IS NOT NULL 
	DROP TRIGGER [Acc].[TR_ConfigChangeLog_Documents]

IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_AccBudgetItems]', 'TR') IS NOT NULL 
DROP TRIGGER [Acc].[TR_ConfigChangeLog_AccBudgetItems]

IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_AccBudgetRang]', 'TR') IS NOT NULL 
DROP TRIGGER [Acc].[TR_ConfigChangeLog_AccBudgetRang]

IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_AccBudgets]', 'TR') IS NOT NULL 
DROP TRIGGER [Acc].[TR_ConfigChangeLog_AccBudgets]

IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_AccBudgetsInfo]', 'TR') IS NOT NULL 
DROP TRIGGER [Acc].[TR_ConfigChangeLog_AccBudgetsInfo]

IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_AccBudgetTopicLevels]', 'TR') IS NOT NULL 
DROP TRIGGER [Acc].[TR_ConfigChangeLog_AccBudgetTopicLevels]

IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_AccBudgetTopicRange]', 'TR') IS NOT NULL 
DROP TRIGGER [Acc].[TR_ConfigChangeLog_AccBudgetTopicRange]

IF OBJECT_ID ('[Acc].[TR_ConfigChangeLog_AccBudgetTopics]', 'TR') IS NOT NULL 
DROP TRIGGER [Acc].[TR_ConfigChangeLog_AccBudgetTopics]


--End 
---000---
GO 


	SET QUOTED_IDENTIFIER ON 
	GO 
	SET ANSI_NULLS OFF 
	GO 
	CREATE FUNCTION [SplitString]  
	( 
		-- Add the parameters for the FUNCTION here 
		@myString varchar(8000), 
		@deliminator varchar(10) 
	) 
	RETURNS  
	@ReturnTable TABLE  
	( 
		-- Add the column definitions for the TABLE variable here 
		[id] [int] IDENTITY(1,1) NOT NULL, 
		[part] [varchar](50) NULL,
		RowEnter int null  
	) 
	AS 
	BEGIN 
			Declare @iSpaces int 
			Declare @RowEnter int=1 
			Declare @part varchar(50) 
 
			--initialize spaces 
			Select @iSpaces = charindex(@deliminator,@myString,0) 
			While @iSpaces > 0 
 
			Begin 
				Select @part = substring(@myString,0,charindex(@deliminator,@myString,0)) 
 
				Insert Into @ReturnTable(part,RowEnter) 
				Select @part ,@RowEnter
				set @RowEnter=@RowEnter+1
 
		Select @myString = substring(@mystring,charindex(@deliminator,@myString,0)+ len(@deliminator),len(@myString) - charindex(' ',@myString,0)) 
 
 
				Select @iSpaces = charindex(@deliminator,@myString,0) 
			end 
 
			If len(@myString) > 0 
				Insert Into @ReturnTable(part,RowEnter)  
				Select @myString ,@RowEnter
 
		RETURN  
	END  
	GO 
	SET QUOTED_IDENTIFIER OFF 
	GO 
	SET ANSI_NULLS ON 
	GO 
--END 


CREATE FUNCTION [Acc].[SplitString]  
( 
    -- Add the parameters fOR the function here 
    @myString varchar(8000), 
    @deliminatOR varchar(10) 
) 
RETURNS  
@ReturnTable TABLE  
( 
    -- Add the column definitions fOR the TABLE variable here 
    [id] [int] IDENTITY(1,1) NOT NULL, 
    [part] [varchar](8000) NULL 
) 
AS 
BEGIN 
        Declare @iSpaces int 
        Declare @part varchar(8000) 
 
        --initialize spaces 
        Select @iSpaces = charindex(@deliminatOR,@myString,0) 
        While @iSpaces > 0 
 
        Begin 
            Select @part = substring(@myString,0,charindex(@deliminatOR,@myString,0)) 
 
            Insert Into @ReturnTable(part) 
            Select @part 
 
    Select @myString = substring(@mystring,charindex(@deliminatOR,@myString,0)+ len(@deliminatOR),len(@myString) - charindex(' ',@myString,0)) 
 
 
            Select @iSpaces = charindex(@deliminatOR,@myString,0) 
        end 
 
        If len(@myString) > 0 
            Insert Into @ReturnTable 
            Select @myString 
 
    RETURN  
END  
GO


CREATE VIEW Acc.Currencies 
AS  
SELECT * FROM  dbo.Currencies

---000---
GO 
CREATE VIEW Acc.DocList
AS
SELECT     TOP (100) PERCENT LTRIM(Serial) + '_' + LTRIM(YearID) + '_' + LTRIM(CompanyCode) AS Serial, DocDate + ' - ' + RIGHT('0000000000' + LTRIM(SecondaryDocNo),
                          (SELECT     MAX(LEN(SecondaryDocNo)) AS Expr1
                             FROM         Acc.DocGroups AS DocGroups_2)) AS DocDate
FROM         Acc.DocGroups

---000--- 
GO 
CREATE VIEW Acc.AccCodeWith5Levels
AS
SELECT     Acc.Categories.TopicCode, Acc.Categories.MoeenName_L1, Acc.Categories.MoeenName_L2, Acc.Categories.LevelID, 
                      LEFT(RTRIM(LTRIM(STR(Acc.Categories.TopicCode))), AccTopicLevels_2.CodeLength) AS PrvTopicCode4, 
                      AccTopicLevels_1.LevelCaption_L1 AS LevelCaption4_L1, AccTopicLevels_1.LevelCaption_L2 AS LevelCaption4_L2, 
                      LEFT(RTRIM(LTRIM(STR(Acc.Categories.TopicCode))), AccTopicLevels_3.CodeLength) AS PrvTopicCode3, 
                      AccTopicLevels_2.LevelCaption_L1 AS LevelCaption3_L1, AccTopicLevels_2.LevelCaption_L2 AS LevelCaption3_L2, 
                      LEFT(RTRIM(LTRIM(STR(Acc.Categories.TopicCode))), AccTopicLevels_4.CodeLength) AS PrvTopicCode2, 
                      AccTopicLevels_3.LevelCaption_L1 AS LevelCaption2_L1, AccTopicLevels_3.LevelCaption_L2 AS LevelCaption2_L2, 
                      LEFT(RTRIM(LTRIM(STR(Acc.Categories.TopicCode))), AccTopicLevels_5.CodeLength) AS PrvTopicCode1, 
                      AccTopicLevels_4.LevelCaption_L1 AS LevelCaption1_L1, AccTopicLevels_4.LevelCaption_L2 AS LevelCaption1_L2, 
                      AccTopicLevels_4.PrvLevelID
FROM         Acc.AccTopicLevels AccTopicLevels_3 LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_4 LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_5 ON AccTopicLevels_4.PrvLevelID = AccTopicLevels_5.LevelID ON 
                      AccTopicLevels_3.PrvLevelID = AccTopicLevels_4.LevelID RIGHT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_2 ON AccTopicLevels_3.LevelID = AccTopicLevels_2.PrvLevelID RIGHT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_1 INNER JOIN
                      Acc.Categories ON AccTopicLevels_1.LevelID = Acc.Categories.LevelID ON AccTopicLevels_2.LevelID = AccTopicLevels_1.PrvLevelID

 

GO

CREATE VIEW [Acc].[DetailGroups]
AS
SELECT        CustomerGrpID AS DGID, CustomerGrpName AS DGName_L1, CustomerGrpName_L2 AS DGName_L2, StartCode AS StartRange, FinishCode AS EndRange, DetailType, 0 AS UseKindInCo, '' AS Comment_L1, 
                         '' AS Comment_L2, { fn NOW() } AS MakeDate
FROM            dbo.CustomersGroup

GO

CREATE VIEW [Acc].[MainDetailsRange]
AS
 
SELECT        1 AS CompanyCode, CustID AS DetailCode,  CustomerGrpID AS DetailGroup
from Customers
union all
SELECT        1 AS CompanyCode, cog.CustID AS DetailCode,  cog.CustomerGrpID AS DetailGroup
FROM    CustomersOtherGroups  cog 

GO

CREATE VIEW [Acc].[MainDetails]
AS
SELECT	1 AS CompanyCode
		, CustID AS DetailCode
		, isnull(CustFirstName,'') +' '+ isnull(CustName,' ') AS DetailName_L1
		, CustName_L2 AS DetailName_L2
		, CustomerGrpID AS DetailGroup
		, ModifyDate AS MakeDate
		, 0 AS UseKindInCo
		, NationalID
		, MaxCredit
		, Mobile
		, AccountKind AS CurrencyType
		, NULL AS AidNumber
		, NULL AS AidDate
		, 0 AS PortionCode
		, NULL AS AidQty
		, BankName
		, ManageName
		, CustAccountNumber 
		, PaymentCode
		, CustFirstName
		, CustName as FirstName
		, OperatorID
		, CustomerState
FROM    dbo.Customers

GO

CREATE VIEW [Acc].[Details]
AS
SELECT     Acc.MainDetails.CompanyCode, Acc.MainDetails.DetailCode, Acc.MainDetails.DetailName_L1, Acc.MainDetails.DetailName_L2, Acc.MainDetails.MakeDate, Acc.MainDetails.UseKindInCo, 
                      Acc.MainDetails.NationalID, Acc.MainDetails.MaxCredit, Acc.MainDetails.Mobile, Acc.MainDetails.CurrencyType, BankName, ManageName, CustAccountNumber,PaymentCode,OperatorID
FROM         Acc.MainDetails INNER JOIN
                      Acc.DetailGroups ON Acc.MainDetails.DetailGroup = Acc.DetailGroups.DGID
WHERE     (Acc.DetailGroups.DetailType = 1) OR
                      (Acc.MainDetails.DetailCode = 0)

GO

CREATE VIEW [Acc].[CenterTopics]
AS
SELECT     Acc.MainDetails.DetailCode AS CTopicCode, Acc.MainDetails.DetailName_L1 AS CTopicName_L1, Acc.MainDetails.DetailName_L2 AS CTopicName_L2, 61 AS LevelID, Acc.MainDetails.AidNumber, 
                      Acc.MainDetails.AidDate, Acc.MainDetails.MakeDate, Acc.MainDetails.PortionCode
FROM         Acc.MainDetails INNER JOIN
                      Acc.DetailGroups ON Acc.MainDetails.DetailGroup = Acc.DetailGroups.DGID
WHERE     (Acc.DetailGroups.DetailType = 2) OR
                      (Acc.MainDetails.DetailCode = 0)

GO

CREATE VIEW [Acc].[CenterTopics2]
AS
SELECT     Acc.MainDetails.DetailCode AS CTopicCode2, Acc.MainDetails.DetailName_L1 AS CTopicName2_L1, Acc.MainDetails.DetailName_L2 AS CTopicName2_L2, 71 AS LevelID, 
                      Acc.MainDetails.AidNumber, Acc.MainDetails.AidDate, Acc.MainDetails.MakeDate, Acc.MainDetails.PortionCode
FROM         Acc.MainDetails INNER JOIN
                      Acc.DetailGroups ON Acc.MainDetails.DetailGroup = Acc.DetailGroups.DGID
WHERE     (Acc.DetailGroups.DetailType = 3) OR
                      (Acc.MainDetails.DetailCode = 0)

GO

CREATE VIEW [Acc].[CTopicCode3] 
AS
SELECT     Acc.MainDetails.DetailCode AS CTopicCode3, Acc.MainDetails.DetailName_L1 AS CTopicName3_L1, Acc.MainDetails.DetailName_L2 AS CTopicName3_L2, Acc.MainDetails.AidNumber, 
                      Acc.MainDetails.AidQty, Acc.MainDetails.AidDate, Acc.MainDetails.MakeDate, CustomerState
FROM         Acc.MainDetails INNER JOIN
                      Acc.DetailGroups ON Acc.MainDetails.DetailGroup = Acc.DetailGroups.DGID
WHERE     (Acc.DetailGroups.DetailType = 4) OR
                      (Acc.MainDetails.DetailCode = 0)

GO

CREATE VIEW [Acc].[DetailRange]
AS
SELECT     cast(ROW_NUMBER() OVER (ORDER BY Acc.TopicRange.TopicCode) AS int) AS ID, Acc.TopicRange.TopicCode, Acc.MainDetailsRange.DetailCode, Acc.MainDetailsRange.CompanyCode, NULL 
AS AuditReferenceNo, '' AS AuditReferenceTxt
FROM         Acc.TopicRange INNER JOIN
                      Acc.DetailGroups ON Acc.TopicRange.DGID = Acc.DetailGroups.DGID INNER JOIN
                      Acc.MainDetailsRange ON Acc.DetailGroups.DGID = Acc.MainDetailsRange.DetailGroup
WHERE     (Acc.DetailGroups.DetailType = 1)
--SELECT     cast(ROW_NUMBER() OVER (ORDER BY Acc.TopicRange.TopicCode) AS int) AS ID, Acc.TopicRange.TopicCode, Acc.MainDetails.DetailCode, Acc.MainDetails.CompanyCode, NULL 
--AS AuditReferenceNo, '' AS AuditReferenceTxt
--FROM         Acc.TopicRange INNER JOIN
--                      Acc.DetailGroups ON Acc.TopicRange.DGID = Acc.DetailGroups.DGID INNER JOIN
--                      Acc.MainDetails ON Acc.DetailGroups.DGID = Acc.MainDetails.DetailGroup
--WHERE     (Acc.DetailGroups.DetailType = 1)

GO

CREATE VIEW [Acc].[CenterTopicRange]
AS
--SELECT     cast(ROW_NUMBER() OVER (ORDER BY Acc.TopicRange.TopicCode) AS INT) AS ID, Acc.TopicRange.TopicCode, Acc.MainDetails.DetailCode AS CTopicCode
--FROM         Acc.TopicRange INNER JOIN
--                      Acc.DetailGroups ON Acc.TopicRange.DGID = Acc.DetailGroups.DGID INNER JOIN
--                      Acc.MainDetails ON Acc.DetailGroups.DGID = Acc.MainDetails.DetailGroup
--WHERE     (Acc.DetailGroups.DetailType = 2)
SELECT     cast(ROW_NUMBER() OVER (ORDER BY Acc.TopicRange.TopicCode) AS INT) AS ID, Acc.TopicRange.TopicCode, Acc.MainDetailsRange.DetailCode AS CTopicCode
FROM         Acc.TopicRange INNER JOIN
                      Acc.DetailGroups ON Acc.TopicRange.DGID = Acc.DetailGroups.DGID INNER JOIN
                      Acc.MainDetailsRange ON Acc.DetailGroups.DGID = Acc.MainDetailsRange.DetailGroup
WHERE     (Acc.DetailGroups.DetailType = 2)

GO

CREATE VIEW [Acc].[CenterTopicAllRange] 
AS
SELECT     Acc.TopicRange.TopicCode, CASE WHEN Acc.DetailGroups.DetailType = 3 THEN Acc.MainDetailsRange.DetailCode END AS CTopicCode2, 
                      CASE WHEN Acc.DetailGroups.DetailType = 4 THEN Acc.MainDetailsRange.DetailCode END AS CTopicCode3
FROM         Acc.TopicRange INNER JOIN
                      Acc.DetailGroups ON Acc.TopicRange.DGID = Acc.DetailGroups.DGID INNER JOIN
                      Acc.MainDetailsRange ON Acc.DetailGroups.DGID = Acc.MainDetailsRange.DetailGroup
WHERE     (Acc.DetailGroups.DetailType IN (4, 3))
--SELECT     Acc.TopicRange.TopicCode, CASE WHEN Acc.DetailGroups.DetailType = 3 THEN Acc.MainDetails.DetailCode END AS CTopicCode2, 
--                      CASE WHEN Acc.DetailGroups.DetailType = 4 THEN Acc.MainDetails.DetailCode END AS CTopicCode3
--FROM         Acc.TopicRange INNER JOIN
--                      Acc.DetailGroups ON Acc.TopicRange.DGID = Acc.DetailGroups.DGID INNER JOIN
--                      Acc.MainDetails ON Acc.DetailGroups.DGID = Acc.MainDetails.DetailGroup
--WHERE     (Acc.DetailGroups.DetailType IN (4, 3))

GO

CREATE VIEW [Acc].[CTopicRangeTogether]
AS
SELECT distinct CTopicCode2 *1000 + CTopicCode as id , CTopicCode ,CTopicCode2

  FROM Acc.CenterTopicRange   C1 inner join 
		Acc.CenterTopicAllRange C2 on 
  c1.TopicCode=c2.TopicCode
where CTopicCode <>0 and CTopicCode2 <>0

GO

CREATE VIEW [Acc].[CTopics2And3] 
AS 
SELECT     0 AS CTopicCode3, 0 AS CTopicCode2

GO

CREATE VIEW [Acc].[CtopicNotes]
AS
SELECT     ID, TopicCode, DetailCode, Note, NoteDate, AttachFileName, MakeDate
FROM         Acc.DetailNotes

GO

 CREATE VIEW Acc.AuditTopicFORUse
AS
SELECT     Acc.AuditTopics.AuditCode, Acc.AuditTopics.AuditName_L1, Acc.AuditTopics.AuditName_L2, Acc.AuditTopics.LevelID, 
                      LEFT(RTRIM(LTRIM(STR(Acc.AuditTopics.AuditCode))), AccTopicLevels_1.CodeLength) AS PrvAuditCode, Acc.AccTopicLevels.PrvLevelID, 
                      AccTopicLevels_1.CodeLength AS PrvCodeLength, Acc.AuditTopics.MakeDate
FROM         Acc.AuditTopics INNER JOIN
                      Acc.AccTopicLevels ON Acc.AuditTopics.LevelID = Acc.AccTopicLevels.LevelID LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_1 ON Acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID

GO

CREATE VIEW Acc.BudgetTopicsFORUse
AS
SELECT     Acc.BudgetTopics.BudgetTopicID, Acc.BudgetTopics.BudgetCaption_L1, Acc.BudgetTopics.BudgetCaption_L2, Acc.BudgetTopics.LevelID, 
                      LEFT(RTRIM(LTRIM(STR(Acc.BudgetTopics.BudgetTopicID))), BudgetTopicLevels_1.CodeLength) AS PrvBudgetTopicID, 
                      Acc.BudgetTopicLevels.prvLevelID, BudgetTopicLevels_1.CodeLength AS PrvCodeLength
FROM         Acc.BudgetTopics INNER JOIN
                      Acc.BudgetTopicLevels ON Acc.BudgetTopics.LevelID = Acc.BudgetTopicLevels.LevelID LEFT OUTER JOIN
                      Acc.BudgetTopicLevels BudgetTopicLevels_1 ON Acc.BudgetTopicLevels.prvLevelID = BudgetTopicLevels_1.LevelID



GO
 
CREATE VIEW Acc.CategoriesForUse
AS
SELECT     Acc.Categories.TopicCode, Acc.Categories.MoeenName_L1, Acc.Categories.MoeenName_L2, Acc.Categories.LevelID, 
                      LEFT(Acc.Categories.TopicCode, AccTopicLevels_1.CodeLength) AS PrvTopicCode, Acc.AccTopicLevels.PrvLevelID, 
                      AccTopicLevels_1.CodeLength AS PrvCodeLength,Acc.Categories.Active
FROM         Acc.Categories INNER JOIN
                      Acc.AccTopicLevels ON Acc.Categories.LevelID = Acc.AccTopicLevels.LevelID LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_1 ON Acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID


GO

CREATE VIEW Acc.CompaniesFORUse
AS
SELECT     Acc.Companies.CompanyCode, Acc.Companies.CompanyName_L1, Acc.Companies.CompanyName_L2, Acc.Companies.LevelID, 
                      LEFT(RTRIM(LTRIM(STR(Acc.Companies.CompanyCode))), AccTopicLevels_1.CodeLength) AS PrvCompanyCode, Acc.AccTopicLevels.PrvLevelID, 
                      AccTopicLevels_1.CodeLength AS PrvCodeLength, Acc.Companies.MakeDate
FROM         Acc.AccTopicLevels INNER JOIN
                      Acc.Companies ON Acc.AccTopicLevels.LevelID = Acc.Companies.LevelID LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_1 ON Acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID


GO

CREATE VIEW Acc.CTopics2FORUse
AS
SELECT     Acc.CenterTopics2.CTopicCode2, Acc.CenterTopics2.CTopicName2_L1, Acc.CenterTopics2.CTopicName2_L2, Acc.CenterTopics2.LevelID, 
                      LEFT(RTRIM(LTRIM(STR(Acc.CenterTopics2.CTopicCode2))), AccTopicLevels_1.CodeLength) AS PrvTopicCode, Acc.AccTopicLevels.PrvLevelID, 
                      AccTopicLevels_1.CodeLength AS PrvCodeLength
FROM         Acc.CenterTopics2 INNER JOIN
                      Acc.AccTopicLevels ON Acc.CenterTopics2.LevelID = Acc.AccTopicLevels.LevelID LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_1 ON Acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID


GO

CREATE VIEW Acc.CTopicsFORUse
AS
SELECT     Acc.CenterTopics.CTopicCode, Acc.CenterTopics.CTopicName_L1, Acc.CenterTopics.CTopicName_L2 AS Expr1, Acc.CenterTopics.LevelID, 
                      LEFT(RTRIM(LTRIM(STR(Acc.CenterTopics.CTopicCode))), AccTopicLevels_1.CodeLength) AS PrvTopicCode, Acc.AccTopicLevels.PrvLevelID, 
                      AccTopicLevels_1.CodeLength AS PrvCodeLength
FROM         Acc.CenterTopics INNER JOIN
                      Acc.AccTopicLevels ON Acc.CenterTopics.LevelID = Acc.AccTopicLevels.LevelID LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_1 ON Acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID


GO

CREATE VIEW Acc.DescTemplates
AS
SELECT     InfoID AS TemplateCode, InfoName_L1 AS TemplateDesc_L1, InfoName_L2 AS TemplateDesc_L2
FROM         Acc.FORmsInfo
WHERE     (FORmType = 2)


GO

CREATE VIEW Acc.DocTypes
AS
SELECT     InfoID AS DocTypeCode, InfoName_L1 AS DocTypeName_L1, InfoName_L2 AS DocTypeName_L2 ,SORtID
FROM         Acc.FORmsInfo
WHERE     (FORmType = 1)


GO

CREATE VIEW Acc.FinancialTopicsFORUse
AS
SELECT     Acc.FinancialTopics.FinancialCode, Acc.FinancialTopics.FinancialName_L1, Acc.FinancialTopics.FinancialName_L2, Acc.FinancialTopics.LevelID, 
                      LEFT(RTRIM(LTRIM(STR(Acc.FinancialTopics.FinancialCode))), AccTopicLevels_1.CodeLength) AS PrvFinancialCode, Acc.AccTopicLevels.PrvLevelID, 
                      AccTopicLevels_1.CodeLength AS PrvCodeLength, Acc.FinancialTopics.FinancialType, Acc.FinancialTopics.Essence, 
                      Acc.FinancialTopics.MakeDate
FROM         Acc.FinancialTopics INNER JOIN
                      Acc.AccTopicLevels ON Acc.FinancialTopics.LevelID = Acc.AccTopicLevels.LevelID LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_1 ON Acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID


GO

CREATE view [Acc].[SanamaView]
as
SELECT        ID, EMP.ED.value('@SanamaType', 'bigint') AS sanamaType, EMP.ED.value('@SanamaValue', 'bigint') AS sanamaValue
FROM            Acc.Documents CROSS APPLY SanamaID.nodes('/Sanama/SanamaID') AS EMP(ED)
GO

--CREATE VIEW Acc.ProjectsFORUse
--AS
--SELECT     Acc.Projects.ProjectID, Acc.Projects.ProjectCaption_L1, Acc.Projects.ProjectCaption_L2, Acc.Projects.LevelID, 
--                      LEFT(RTRIM(LTRIM(STR(Acc.Projects.ProjectID))), BudgetTopicLevels_1.CodeLength) AS PrvProjectID, Acc.BudgetTopicLevels.prvLevelID, 
--                      BudgetTopicLevels_1.CodeLength AS PrvCodeLength, Acc.Projects.CTopic1, Acc.Projects.CTopic2
--FROM         Acc.Projects INNER JOIN
--                      Acc.BudgetTopicLevels ON Acc.Projects.LevelID = Acc.BudgetTopicLevels.LevelID LEFT OUTER JOIN
--                      Acc.BudgetTopicLevels BudgetTopicLevels_1 ON Acc.BudgetTopicLevels.prvLevelID = BudgetTopicLevels_1.LevelID



--GO
-- 
--GO
-- 
GO

CREATE VIEW Acc.ShowBalance
AS
SELECT     SUM(Debt - Credit) AS Balance
FROM         Acc.Documents
WHERE     (TopicCode = 124) AND (DetailCode = 0) AND (CTopicCode = 0) AND (CTopicCode2 = 0)


GO

CREATE VIEW Acc.TopicLevelWithUperLevel
AS
SELECT     Acc.AccTopicLevels.LevelID, Acc.AccTopicLevels.LevelCaption_L1, Acc.AccTopicLevels.PrvLevelID, Acc.AccTopicLevels.CodeLength, 
                      ISNULL(AccTopicLevels_1.LevelCaption_L1, '0') AS PrvLevelCaption, ISNULL(AccTopicLevels_1.CodeLength, 0) AS PrvCodeLength, 
                      Acc.AccTopicLevels.TopicType
FROM         Acc.AccTopicLevels LEFT OUTER JOIN
                      Acc.AccTopicLevels AccTopicLevels_1 ON Acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID
WHERE     (Acc.AccTopicLevels.TopicType = 0) AND (Acc.AccTopicLevels.LevelID = 1)


GO

CREATE VIEW Acc.TrialBalanceFORAccCode
AS
SELECT     TrialBalance.PrvAccCode, TrialBalance.AccCode, Categories_1.MoeenName_L1, Categories_1.MoeenName_L1 AS PrvMoeenName, TrialBalance.Debt, 
                      TrialBalance.Credit, TrialBalance.Balance
FROM         (SELECT     LEFT(D.TopicCode, 1) AS PrvAccCode, LEFT(D.TopicCode, 2) AS AccCode, SUM(D.Debt) AS Debt, 
                                              SUM(D.Credit) AS Credit, SUM(D.Debt - D.Credit) AS Balance
                        FROM         Acc.Documents D INNER JOIN
                                              Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                                              D.CompanyCode = DG.CompanyCode
                        WHERE     (DG.Status IN (1, 2, 3) OR
                                              DG.Status >= 0) AND (DG.DocTypeCode IN (1, 2, 3) OR
                                              DG.DocTypeCode >= 0) AND (DG.DocDate BETWEEN '0' AND '2147483647') AND 
                                              (DG.PrimaryDocNo BETWEEN 0 AND 2147483647) AND (DG.SecondaryDocNo BETWEEN 0 AND 2147483647) AND 
                                              (DG.CompanyCode BETWEEN 0 AND 2147483647)
                        GROUP BY LEFT(D.TopicCode, 1), LEFT(D.TopicCode, 2)) TrialBalance LEFT OUTER JOIN
                      Acc.Categories Categories_1 ON TrialBalance.PrvAccCode = Categories_1.TopicCode LEFT OUTER JOIN
                      Acc.Categories Categories_2 ON TrialBalance.AccCode = Categories_2.TopicCode


GO

CREATE VIEW Acc.TrialCTopicsBalanceFORAccCode
AS
SELECT      TrialBalance.PrvAccCode, TrialBalance.AccCode, TrialBalance.CTopicCode, Categories_1.MoeenName_l1 AS PrvMoeenName, 
                      Categories_1.MoeenName_l1, Acc.CenterTopics.CTopicName_l1, TrialBalance.Debt, TrialBalance.Credit, TrialBalance.Balance
FROM         (SELECT     LEFT(D.TopicCode, 1) AS PrvAccCode, LEFT(D.TopicCode, 2) AS AccCode, CTopicCode, 
                                              SUM(D.Debt) AS Debt, SUM(D.Credit) AS Credit, SUM(D.Debt - D.Credit) 
                                              AS Balance
                        FROM         Acc.Documents D INNER JOIN
                                              Acc.DocGroups  DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                                              D.CompanyCode = DG.CompanyCode
                        WHERE     (DG.Status IN (1, 2, 3) OR
                                              DG.Status >= 0) AND (DG.DocTypeCode IN (1, 2, 3) OR
                                              DG.DocTypeCode >= 0) AND (DG.DocDate BETWEEN '0' AND '2147483647') AND 
                                              (DG.PrimaryDocNo BETWEEN 0 AND 2147483647) AND (DG.SecondaryDocNo BETWEEN 0 AND 2147483647) AND 
                                              (DG.CompanyCode BETWEEN 0 AND 2147483647)
                        GROUP BY LEFT(D.TopicCode, 1), LEFT(D.TopicCode, 2), CTopicCode) TrialBalance LEFT OUTER JOIN
                      Acc.CenterTopics ON TrialBalance.CTopicCode = Acc.CenterTopics.CTopicCode LEFT OUTER JOIN
                      Acc.Categories Categories_1 ON TrialBalance.PrvAccCode = Categories_1.TopicCode LEFT OUTER JOIN
                      Acc.Categories Categories_2 ON TrialBalance.AccCode = Categories_2.TopicCode
WHERE     (TrialBalance.AccCode BETWEEN '0' AND '2147483647') AND (TrialBalance.CTopicCode BETWEEN 0 AND 2147483647)


GO

CREATE VIEW Acc.TrialDetailsBalanceFORAccCode
AS
SELECT     TOP 100 PERCENT TrialBalance.PrvAccCode, TrialBalance.AccCode, TrialBalance.detailCode, Categories_1.MoeenName_L1 AS PrvMoeenName, 
                      Categories_1.MoeenName_L1, Acc.Details.DetailName_L1, TrialBalance.Debt, TrialBalance.Credit, TrialBalance.Balance
FROM         (SELECT     LEFT(D.TopicCode, 1) AS PrvAccCode, LEFT(D.TopicCode, 2) AS AccCode, detailCode, 
                                              SUM(D.Debt) AS Debt, SUM(D.Credit) AS Credit, SUM(D.Debt - D.Credit) 
                                              AS Balance
                        FROM         Acc.Documents D INNER JOIN
                                              Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                                              D.CompanyCode = DG.CompanyCode
                        WHERE     (DG.Status IN (1, 2, 3) OR
                                              DG.Status >= 0) AND (DG.DocTypeCode IN (1, 2, 3) OR
                                              DG.DocTypeCode >= 0) AND (DG.DocDate BETWEEN '0' AND '2147483647') AND 
                                              (DG.PrimaryDocNo BETWEEN 0 AND 2147483647) AND (DG.SecondaryDocNo BETWEEN 0 AND 2147483647) AND 
                                              (DG.CompanyCode BETWEEN 0 AND 2147483647)
                        GROUP BY LEFT(D.TopicCode, 1), LEFT(D.TopicCode, 2), detailCode) TrialBalance LEFT OUTER JOIN
                      Acc.Categories Categories_1 ON TrialBalance.PrvAccCode = Categories_1.TopicCode LEFT OUTER JOIN
                      Acc.Details ON TrialBalance.detailCode = Acc.Details.DetailCode LEFT OUTER JOIN
                      Acc.Categories Categories_2 ON TrialBalance.AccCode = Categories_2.TopicCode
WHERE     (TrialBalance.detailCode BETWEEN 0 AND 2147483647) AND (TrialBalance.AccCode BETWEEN '0' AND '2147483647')


GO

CREATE VIEW ACC.Months
AS
SELECT     InfoID AS MonthID, InfoName_L1 AS MonthName
FROM         Acc.FORmsInfo
WHERE     (FORmType = 11)

GO

CREATE VIEW Acc.OtherDocuments
AS
SELECT LEFT(D.TopicCode, (SELECT CodeLength FROM Acc.AccTopicLevels WHERE (LevelID = 1))) AS Code1,
       LEFT(D.TopicCode, (SELECT CodeLength FROM Acc.AccTopicLevels WHERE (LevelID = 2))) AS Code2,
	   D.TopicCode AS Code3,
	   D.DetailCode AS Code4, D.CTopicCode AS Code5, D.CTopicCode2 AS Code6, D.ctopiccode3 AS Code7, 
	   Grouh.MoeenName_L1 AS Desc1, Kol.MoeenName_L1 AS Desc2,  Moeen.MoeenName_L1 AS Desc3,
	   DT.DetailName_L1 AS Desc4, C1.CTopicName_L1 AS Desc5, C2.CTopicName2_L1 AS Desc6, C3.CTopicName3_L1 AS Desc7, 
	   DG.SecondaryDocNo AS DocumentNO, DG.DocDate AS DocumentDate, D.Comment_L1 AS DocumentDesc, D.Debt AS DocumentDebit, D.Credit AS DocumentCredit, 
	   LTRIM(RTRIM(D.TopicCode))+'.'+ LTRIM(RTRIM(D.DetailCode)) +'.'+ LTRIM(RTRIM(D.CTopicCode)) +'.'+ LTRIM(RTRIM(D.CTopicCode2))+'.'+ LTRIM(RTRIM(D.ctopiccode3)) AS AccountCode, 
	   DG.YearID

FROM   Acc.DocGroups DG INNER JOIN
            (SELECT LEFT(TopicCode, (SELECT CodeLength FROM Acc.AccTopicLevels WHERE (LevelID = 1))) AS Grouh,
               LEFT(TopicCode, (SELECT CodeLength FROM Acc.AccTopicLevels WHERE (LevelID = 2))) AS Kol,
	           TopicCode , Serial, CompanyCode,  YearID, DetailCode, CTopicCode, CTopicCode2, ctopiccode3, Debt, Credit, Comment_L1 
			   FROM Acc.Documents DOC) D ON D.Serial = DG.Serial AND D.CompanyCode = DG.CompanyCode AND 
            D.YearID = DG.YearID INNER JOIN
            Acc.Details DT ON D.DetailCode = DT.DetailCode INNER JOIN
            Acc.CenterTopics C1 ON D.CTopicCode = C1.CTopicCode INNER JOIN
            Acc.CenterTopics2 C2 ON D.CTopicCode2 = C2.CTopicCode2 INNER JOIN
            Acc.CTopicCode3 C3 ON D.ctopiccode3 = C3.CTopicCode3 INNER JOIN
            Acc.Categories AS Grouh ON D.Grouh = Grouh.TopicCode INNER JOIN
            Acc.Categories AS Kol ON D.Kol = Kol.TopicCode INNER JOIN
            Acc.Categories AS Moeen ON D.TopicCode = Moeen.TopicCode

GO

CREATE VIEW [Acc].[CenterTopics3]
AS
SELECT        Acc.MainDetails.DetailCode AS CTopicCode3, Acc.MainDetails.DetailName_L1 AS CTopicName3_L1, Acc.MainDetails.DetailName_L2 AS CTopicName3_L2, 71 AS LevelID, Acc.MainDetails.AidNumber, Acc.MainDetails.AidDate, 
                         Acc.MainDetails.MakeDate, Acc.MainDetails.PortionCode
FROM            Acc.MainDetails INNER JOIN
                         Acc.DetailGroups ON Acc.MainDetails.DetailGroup = Acc.DetailGroups.DGID
WHERE        (Acc.DetailGroups.DetailType = 4) OR
                         (Acc.MainDetails.DetailCode = 0)

GO

CREATE VIEW [Acc].[CTopics3FORUse]
AS
SELECT        Acc.CenterTopics3.CTopicCode3, Acc.CenterTopics3.CTopicName3_L1, Acc.CenterTopics3.CTopicName3_L2,
 Acc.CenterTopics3.LevelID, LEFT(RTRIM(LTRIM(STR(Acc.CenterTopics3.CTopicCode3))), 
                         AccTopicLevels_1.CodeLength) AS PrvTopicCode, Acc.AccTopicLevels.PrvLevelID, AccTopicLevels_1.CodeLength AS PrvCodeLength
FROM            Acc.CenterTopics3 INNER JOIN
                         Acc.AccTopicLevels ON Acc.CenterTopics3.LevelID = Acc.AccTopicLevels.LevelID LEFT OUTER JOIN
                         Acc.AccTopicLevels AS AccTopicLevels_1 ON Acc.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID


GO

-- c r e a t e PROCEDURE  --- 
--  به این صورت نوشته میشود update در قسمت قبل view acc.details به علت ساخته شدن
CREATE PROCEDURE dbo.template
as begin
UPDATE     Acc.Documents
set DetailCompany =Acc.Details.CompanyCode
FROM	Acc.Details INNER JOIN
		Acc.Documents D ON Acc.Details.DetailCode = D.DetailCode AND Acc.Details.CompanyCode <> D.DetailCompany
		WHERE 1=1

end
exec dbo.template
drop PROCEDURE dbo.template
GO
--
CREATE PROCEDURE [Acc].[SpOffices] 
	-- Add other parameters fOR the stORed procedure here
						@BaseParam  varchar(2000),	
						@CirculationCode varchar(30),
						@aWhere varchar(2000),
						@BefOReWhere varchar(2000),
						@ActiveBefOReYear bit,
						--@ActiveArz char(1),
			            @CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0   


AS
BEGIN
SET NOCOUNT ON;

DECLARE @SqlFinal varchar(8000);
DECLARE @AccCode varchar(600)
DECLARE @BefOReYears Varchar(3000) 

SET @AccCode = ''; 
	SELECT @AccCode =  'Cast(' + FieldName +' AS Varchar(20)) +''-''+' + @AccCode      
	FROM ACC.Analyze  INNER JOIN ACC.SplitString(@BaseParam,',') SP ON SP.part = Acc.Analyze.ID 
	
SET @AccCode = LEFT(@AccCode,LEN(@AccCode)-5);


IF (@aWhere = '')
BEGIN

	SET @aWhere = 'Where ' + @AccCode + '=''' + @CirculationCode+'''';
	SET @BefOReWhere = 'Where ' + @AccCode + '=''' + @CirculationCode+'''';
	
END ELSE 
BEGIN
	SET @BefOReWhere = @BefOReWhere  + ' AND ' + @AccCode + '=''' + @CirculationCode+'''';
	SET @aWhere = @aWhere  + ' AND ' + @AccCode + '=''' + @CirculationCode+'''';
END;	

IF (@ActiveBefOReYear = 1)
BEGIN
	SET @BefOReYears =
		 'SELECT  '+@AccCode +'AS AccCode,Acc.DocGroups.YearId ,0 as Serial,  0 as ID, Acc.DocGroups.CompanyCode, 0 as SecondaryDocNo,'+CHAR(13)+
         '0 as PrimaryDocNo,''مجموع مانده از قبل  ''  as  Comment_L1 ,'''' AS DocTopic_L1 ,''01/01'' as DocDate, 0 as AidDocNo,   0 as BudgetTopicID, 0 as ProjectID, '+CHAR(13)+
         '''--'' as AidDocdate, 0 as AidAmount, sum(Acc.Documents.Debt) as debt, sum(Acc.Documents.Credit) as Credit, '+CHAR(13)+
         'sum(Acc.Documents.Debt - Acc.Documents.Credit) AS balance , '+CHAR(13)+
         'CASE sum(Acc.Documents.Debt - Acc.Documents.Credit) WHEN 0 THEN ''1'' ELSE ''0'' END as BedBes '+CHAR(13)+
		', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE Acc.Documents.CurrencyType END as CurrencyType' +CHAR(13)+
		', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE cu.CurrencyCode END as CurrencyCode' +CHAR(13)+
		', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE cu.CurrenciesName END as CurrenciesName' +CHAR(13)+
         ' ,SUM(Acc.Documents.CurrencyDebit) AS CurrencyDebit ' + CHAR(13)+ 
	     ' ,SUM(Acc.Documents.CurrencyCredit) AS CurrencyCredit '+CHAR(13)+
  	     ' ,SUM(Acc.Documents.CurrencyDebit - Acc.Documents.CurrencyCredit) AS CurrencyBalance '+CHAR(13)+	 

		 ', 0.0 AS AidDocNo_1, ''0000/00/00'' AS AidDocdate_1, 0.0 AS AidAmount_1'+CHAR(13)+
		 ' , dt.SORtID '+CHAR(13)+
         'FROM     Acc.Documents INNER JOIN Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroups.Serial '+CHAR(13)+
         'AND Acc.Documents.YearID = Acc.DocGroups.YearID AND Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCode ' +CHAR(13)+
		 ' left Join Acc.DocTypes dt on Acc.DocGroups.DocTypeCode = dt.DocTypeCode ' +CHAR(13)+
		 ' left Join dbo.Currencies cu on Acc.Documents.CurrencyType = cu.CurrenciesID ' +CHAR(13)
         + @BefOReWhere +CHAR(13)+
         ' group by   Acc.DocGroups.YearId ,Acc.DocGroups.CompanyCode, '+CHAR(13)+ 
				@AccCode +CHAR(13)+
				', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE Acc.Documents.CurrencyType END' +CHAR(13)+
				', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE cu.CurrencyCode END ' +CHAR(13)+
				', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE cu.CurrenciesName END ' +CHAR(13)+
				' , dt.SORtID '+CHAR(13)+
		        'Union All '+CHAR(13); 

END ELSE SET @BefOReYears = '';

SET @SqlFinal =
        @BefOReYears +
  		'SELECT  '+@AccCode+' as AccCode,Acc.DocGroups.YearId ,Acc.DocGroups.Serial, Acc.Documents.ID, Acc.DocGroups.CompanyCode,  Acc.DocGroups.SecondaryDocNo, ' +CHAR(13)+
		' Acc.DocGroups.PrimaryDocNo, Acc.Documents.Comment_L1,Acc.DocGroups.DocTopic_L1, Acc.DocGroups.DocDate, Acc.Documents.AidDocNo, Acc.Documents.BudgetTopicID, Acc.Documents.ProjectID , '+CHAR(13)+
		' Acc.Documents.AidDocdate, Acc.Documents.AidAmount, Acc.Documents.Debt, Acc.Documents.Credit, Acc.Documents.Debt - Acc.Documents.Credit AS balance, '+CHAR(13)+
		' CASE Acc.Documents.debt WHEN 0 THEN ''1'' ELSE ''0'' END AS BedBes'+CHAR(13)+
		', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE Acc.Documents.CurrencyType END as CurrencyType' +CHAR(13)+
		', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE cu.CurrencyCode END as CurrencyCode' +CHAR(13)+
		', CASE WHEN '+str(@CurrencyKind)+'=0 THEN null ELSE cu.CurrenciesName END as CurrenciesName' +CHAR(13)+
		', Acc.Documents.CurrencyDebit AS CurrencyDebit'+CHAR(13)+
        ', Acc.Documents.CurrencyCredit AS CurrencyCredit '+CHAR(13)+
        ', Acc.Documents.CurrencyDebit - Acc.Documents.CurrencyCredit AS CurrencyBalance '+CHAR(13)+
		', Acc.Documents.AidDocNo AS AidDocNo_1, Acc.Documents.AidDocdate AS AidDocdate_1, Acc.Documents.AidAmount AS AidAmount_1 '+CHAR(13)+
		' , dt.SORtID '+CHAR(13)+
		' FROM  Acc.Documents INNER JOIN acc.DocGroups  ON  Acc.Documents.Serial = Acc.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND '+CHAR(13)+
		' Acc.Documents.CompanyCode =Acc.DocGroups.CompanyCode ' +CHAR(13)+
		' left Join Acc.DocTypes dt on Acc.DocGroups.DocTypeCode = dt.DocTypeCode ' +CHAR(13)+
		' left Join dbo.Currencies cu on isnull(Acc.Documents.CurrencyType,0) = cu.CurrenciesID ' +CHAR(13)
		+ @aWhere 

SET @SqlFinal =
       	'SELECT ALLSql.*,
				ROW_NUMBER() OVER (partition by AccCode 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,ALLSql.id ) as _row,  
				SUM(Balance) over (partition by AccCode 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,ALLSql.id ) as  RunningBalance,   
				SUM(CurrencyBalance) over (partition by AccCode 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,ALLSql.id ) as RunningCurrencyBalance,  
				Fitful.FitfulIDc AS _CalBalance ,
				Fitful.FitfulIDc AS _rate,
				Fitful.FitfulIDc AS  _calcuRate,
		        Fitful.FitfulIDc AS  _CurBalance 
		  FROM( '+CHAR(13)+@SqlFinal+CHAR(13)+' )AS ALLSql  
		  CROSS JOIN Fitful 
		  ORDER BY AccCode ,DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,ALLSql.id ';
		  ----ISNULL(CASE WHEN '+@ActiveArz+'=1 THEN ALLSql.CurrencyType ELSE 0 END,0),

--print (@SqlFinal)
EXEC (@SqlFinal)

END;



--CREATE PROCEDURE [Acc].[SpOffices] 
--	-- Add the parameters fOR the stORed procedure here
--@BaseParam  varchar(30),	
--@CirculationCode varchar(30),
--@aWhere varchar(2000),
--@BefOReWhere varchar(2000),
--@ActiveBefOReYear bit,
--@ActiveArz char(1)

--AS
--BEGIN
--SET NOCOUNT ON;

--DECLARE @SqlFinal varchar(5000);
--DECLARE @AccCode varchar(600)
--DECLARE @BefOReYears Varchar(3000) 

--SET @AccCode = ''; 
--	SELECT @AccCode =  'Cast(' + FieldName +' AS Varchar(20)) +''-''+' + @AccCode      
--	FROM ACC.Analyze  INNER JOIN ACC.SplitString(@BaseParam,',') SP ON SP.part = Acc.Analyze.ID 
	
--SET @AccCode = LEFT(@AccCode,LEN(@AccCode)-5);


--IF (@aWhere = '')
--BEGIN

--	SET @aWhere = 'Where ' + @AccCode + '=''' + @CirculationCode+'''';
--	SET @BefOReWhere = 'Where ' + @AccCode + '=''' + @CirculationCode+'''';
	
--END ELSE 
--BEGIN
--	SET @BefOReWhere = @BefOReWhere  + ' AND ' + @AccCode + '=''' + @CirculationCode+'''';
--	SET @aWhere = @aWhere  + ' AND ' + @AccCode + '=''' + @CirculationCode+'''';
--END;	

--IF (@ActiveBefOReYear = 1)
--BEGIN
--	SET @BefOReYears =
--		 'SELECT  '+@AccCode +'AS AccCode,DG.YearId ,0 as Serial,  0 as ID, DG.CompanyCode, 0 as SecondaryDocNo,'+
--         '0 as PrimaryDocNo,''مجموع مانده از قبل  ''  as  Comment_L1 ,''01/01'' as DocDate, 0 as AidDocNo,   0 as BudgetTopicID, 0 as ProjectID, '+
--         '''--'' as AidDocdate, 0 as AidAmount, sum(D.Debt) as debt, sum(D.Credit) as Credit, '+
--         'sum(D.Debt - D.Credit) AS balance , '+
--         'CASE sum(D.Debt - D.Credit) WHEN 0 THEN ''1'' ELSE ''0'' END as BedBes '+
--         'FROM     Acc.Documents D INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial '+
--         'AND D.YearID = DG.YearID AND D.CompanyCode = DG.CompanyCode ' +
--         + @BefOReWhere +
--         'group by   DG.YearId ,DG.CompanyCode, '+ @AccCode +
--         'Union All '; 
         
--END ELSE SET @BefOReYears = '';

--SET @SqlFinal =
--        @BefOReYears +
--  		'SELECT  '+@AccCode+' as AccCode,DG.YearId ,DG.Serial, D.ID, DG.CompanyCode,  DG.SecondaryDocNo, ' +
--		' DG.PrimaryDocNo, D.Comment_L1, DG.DocDate, D.AidDocNo, D.BudgetTopicID, D.ProjectID , '+
--		' D.AidDocdate, D.AidAmount, D.Debt, D.Credit, D.Debt - D.Credit AS balance, '+
--		' CASE D.debt WHEN 0 THEN ''1'' ELSE ''0'' END AS BedBes'+
--		' FROM  Acc.Documents D INNER JOIN acc.DocGroups  ON  D.Serial = DG.Serial AND D.YearID = DG.YearID AND '+
--		' D.CompanyCode =DG.CompanyCode ' + @aWhere + ' ORDER BY DocDate,SecondaryDocNo, PrimaryDocNo,bedbes, ID';

--EXEC (@SqlFinal)

--END;
GO

CREATE PROCEDURE [Acc].[SpTrialBalance]
	@BaseParam Varchar(50),
	@AddParam Varchar(3),
	@Filter Varchar(100),
	@MergeCode bit,
	@MergeCaption bit,
	@SqlWhere Varchar(1000),
	@ShowColumnSamelevel bit ,
	@CurrencyKind int = 0,
	@OpenFromDate Varchar(10) = '',
	@OpenToDate Varchar(10) = ''
AS
BEGIN

SET NOCOUNT ON;

DECLARE @Sqlselect varchar(6000)
DECLARE @SqlJoin   varchar(4000)
DECLARE @SqlGroup  varchar(4000)
DECLARE @SqlTopic  varchar(4000)
DECLARE @SqlFinal  varchar(6000) 
DECLARE @SqlCurrency  varchar(2000) 

DECLARE @ALLColums varchar(1000)
DECLARE @ALLCaption varchar(1000)
DECLARE @OldAcc varchar(1000)

DECLARE @fldName     varchar(200)
DECLARE @AliasName   varchar(50)
DECLARE @tblName     varchar(30)
DECLARE @TopicName   varchar(200)
Declare @Current     Varchar(50) 
DECLARE @JoinFldName varchar(50)
DECLARE @CaptionName Nvarchar(50)
DECLARE @TempJoin varchar(100)

-- تاریخ شروع/پایان دوره مستقیم از دلفی به‌عنوان پارامتر می‌آد (نه استخراج
-- از متن @SqlWhere)، چون @SqlWhere ممکنه چندین شرط Between دیگه (کد حساب،
-- تفصیلی، شماره سند، ...) قبل از شرط تاریخ داشته باشه و اولین کوتیشن پیدا
-- شده لزوماً مال تاریخ نیست.
DECLARE @ExtractedFromDate Varchar(10) = @OpenFromDate
DECLARE @ExtractedToDate Varchar(10) = @OpenToDate

SET @Sqlselect  = '' ;
SET @SqlJoin    = '' ;
SET @SqlGroup   = '' ;
SET @SqlTopic   = '' ;
SET @ALLColums  = '' ;
SET @ALLCaption = '' ;
SET @OldAcc     = '' ;
SET @Current    = RTRIM(LTRIM(@BaseParam +',' + @AddParam))
SET @SqlCurrency = '' ;
SET @TempJoin = '';

-- جایگزینی شرط Between با شرط <=
DECLARE @OldCondition Varchar(200)
DECLARE @NewCondition Varchar(200)

IF @ExtractedFromDate <> '' AND @ExtractedToDate <> ''
BEGIN
    SET @OldCondition = 'acc.DocGroups.DocDate   Between ''' + @ExtractedFromDate + ''' And ''' + @ExtractedToDate + ''')'
    SET @NewCondition = 'acc.DocGroups.DocDate <= ''' + @ExtractedToDate + ''')'
    
    SET @SqlWhere = REPLACE(@SqlWhere, @OldCondition, @NewCondition)
    
    IF @SqlWhere NOT LIKE '%' + @NewCondition + '%'
    BEGIN
        SET @OldCondition = 'acc.DocGroups.DocDate Between ''' + @ExtractedFromDate + ''' And ''' + @ExtractedToDate + ''''
        SET @NewCondition = 'acc.DocGroups.DocDate <= ''' + @ExtractedToDate + ''''
        SET @SqlWhere = REPLACE(@SqlWhere, @OldCondition, @NewCondition)
    END
END

if (@ShowColumnSamelevel = 1 )
begin
	Set @MergeCode = 1		
	set @MergeCaption = 1
end;

DECLARE QAnalize CURSOR FOR(
	SELECT TableName,FieldName,AliasName ,JoinFieldName,CaptionName,TopicName
	FROM ACC.Analyze  INNER JOIN ACC.SplitString(@Current,',') SP ON SP.part =  Acc.Analyze.ID ); 

open QAnalize ;
FETCH FROM QAnalize into @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;
while @@fetch_status = 0 
begin
	-- شماره سند نیازی به join با Acc.DocList ندارد. استفاده از view در SQL
	-- پویا عبارت حاوی " - " تولید می‌کرد و در برخی ترکیب ستون‌ها نامعتبر می‌شد.
	IF @CaptionName = N'شماره سند'
	BEGIN
		SET @fldName = 'Acc.DocGroups.SecondaryDocNo';
		SET @JoinFldName = '';
		SET @TopicName = '';

		IF (@MergeCaption = 1)
		BEGIN
			IF (@ShowColumnSamelevel = 1)
				SET @SqlTopic = 'cast(MAX(Acc.DocGroups.DocDate) as nvarchar(4000)) AS [تاریخ سند],';
			ELSE
				SET @SqlTopic = @SqlTopic + 'cast(MAX(Acc.DocGroups.DocDate) as nvarchar(4000)) AS [تاریخ سند],';
		END;
	END;

	IF ((@JoinFldName <> '' ))
		SET @JoinFldName =   ISNULL(@AliasName,@tblName)  + '.' + @JoinFldName

    SET @ALLColums =  'Cast( ' + @fldName +' AS Varchar(18)) +''-''+' + @ALLColums; 
    
	IF ( (@JoinFldName <> '' )  AND  (@TopicName <> '')    )
	begin
		
		SET @SqlGroup      = @SqlGroup   +   'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' as nvarchar(4000)),' 
		
		SET @ALLCaption    =  @ALLCaption+'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' as nvarchar(4000)) +''-''+'  ;
		
		IF (@MergeCaption  = 1)
		begin
			if (@ShowColumnSamelevel = 1 )
				SET @SqlTopic  =    'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' as nvarchar(4000)) AS [عنوان ' + REPLACE(@CaptionName, N']', N']]') + N'],' ;
			else
				SET @SqlTopic  =  @SqlTopic  +  'cast( ' +ISNULL(@AliasName,@tblName) + '.' + @TopicName + ' as nvarchar(4000)) AS [عنوان ' + REPLACE(@CaptionName, N']', N']]') + N'],' ;
		end;
	end;

	IF ((@JoinFldName <> '' ) OR  (@JoinFldName <> NULL ) )
	BEGIN
		SET @SqlJoin = @tblName + ' ' + ISNULL(@AliasName,'') + ' ON ' + @JoinFldName  + ' = '+ @fldName + @TempJoin + ' INNER JOIN '+ Char(13) + @SqlJoin ;
	END

	IF (@MergeCode = 1)
	begin
		if (@ShowColumnSamelevel = 1 )
			SET @Sqlselect =  @fldName + ' AS  ''' +  @CaptionName  +''',' ;
		else
			SET @Sqlselect = @Sqlselect + ' ' + @fldName + ' AS  ''' +  @CaptionName  +''',' ;
		SET @SqlGroup  = @SqlGroup  + ' ' + @fldName + ' ,' ;
	end;			
	FETCH FROM QAnalize into @tblName,@fldName,@AliasName ,@JoinFldName ,@CaptionName,@TopicName ;
end;

CLOSE QAnalize ;	
DEALLOCATE QAnalize ; 

IF (@SqlJoin <> '')
	SET @SqlJoin   =  'INNER JOIN '+ LEFT (@SqlJoin  , (LEN(@SqlJoin) -  12)) ;
	
SET @ALLColums     =  LEFT (@ALLColums,  (LEN(@ALLColums) - 5)) ; 
SET @SqlGroup      =  @ALLColums +' , ' +@SqlGroup  ; 
set @SqlGroup =     LEFT (@SqlGroup , (LEN(@SqlGroup) -  1))

IF (@ALLCaption <> '')
Begin
	SET @ALLCaption    =  LEFT (@ALLCaption, (LEN(@ALLCaption) - 5)) ; 
	SET @SqlGroup     =  @ALLCaption + ',' + @SqlGroup
	SET @ALLCaption   =  @ALLCaption+' As AccName,'
end;

-- ➕➕➕ حذف کامای انتهایی برای استفاده در SELECT ➕➕
IF RIGHT(RTRIM(@ALLCaption), 1) = ','
    SET @ALLCaption = LEFT(RTRIM(@ALLCaption), LEN(RTRIM(@ALLCaption)) - 1)

IF RIGHT(RTRIM(@Sqlselect), 1) = ','
    SET @Sqlselect = LEFT(RTRIM(@Sqlselect), LEN(RTRIM(@Sqlselect)) - 1)

IF RIGHT(RTRIM(@SqlTopic), 1) = ','
    SET @SqlTopic = LEFT(RTRIM(@SqlTopic), LEN(RTRIM(@SqlTopic)) - 1)

begin 
if @CurrencyKind = 0 
 
SET @SqlCurrency = '
			   , 0 CurrencyType
			   , null  CurrencyCode
			   , null CurrenciesName
			   , SUM(Acc.Documents.CurrencyDebit)  AS CurrencyDebit
			   , SUM(Acc.Documents.CurrencyCredit)  AS CurrencyCredit
			   , case
				 when SUM(Acc.Documents.CurrencyDebit - Acc.Documents.CurrencyCredit) > 0 then
				  SUM(Acc.Documents.CurrencyDebit - Acc.Documents.CurrencyCredit)
				 else
				  0
			   END AS BalanceCurrencyDebit
		       , case
				 when SUM(Acc.Documents.CurrencyCredit - Acc.Documents.CurrencyDebit) > 0 then
				  SUM(Acc.Documents.CurrencyCredit - Acc.Documents.CurrencyDebit)
				 else
				  0
			   END AS BalanceCurrencyCredit
			   , SUM(CASE WHEN Acc.DocGroups.DocDate < ''' + @ExtractedFromDate + ''' THEN Acc.Documents.CurrencyDebit ELSE 0 END) AS OpenCurrencyDebit
			   , SUM(CASE WHEN Acc.DocGroups.DocDate < ''' + @ExtractedFromDate + ''' THEN Acc.Documents.CurrencyCredit ELSE 0 END) AS OpenCurrencyCredit
			'  ;
else 

SET @SqlCurrency = '
			   , case when ' + str(@CurrencyKind)+ ' = 0 then null else Acc.Documents.CurrencyType end CurrencyType
			   , case when ' + str(@CurrencyKind)+ ' = 0 then null else cu.CurrencyCode end CurrencyCode
			   , case when ' + str(@CurrencyKind)+ ' = 0 then null else cu.CurrenciesName end CurrenciesName
			   , case 
					when ' +  str(@CurrencyKind)+ ' = 0 then 0 
					else SUM(Acc.Documents.CurrencyDebit) 
			   END AS CurrencyDebit
			   , case 
					when ' +  str(@CurrencyKind)+ ' = 0 then 0 
					else SUM(Acc.Documents.CurrencyCredit)  
			   END AS CurrencyCredit
			   ,case 
					when ' +  str(@CurrencyKind)+ ' = 0 then 0 
					else 
			   case
				 when SUM(Acc.Documents.CurrencyDebit - Acc.Documents.CurrencyCredit) > 0 then
				  SUM(Acc.Documents.CurrencyDebit - Acc.Documents.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit
			   ,case 
					when ' +  str(@CurrencyKind) + ' = 0 then 0 
				else 
				   case
					 when SUM(Acc.Documents.CurrencyCredit - Acc.Documents.CurrencyDebit) > 0 then
						  SUM(Acc.Documents.CurrencyCredit - Acc.Documents.CurrencyDebit)
					 else
					  0
				   end 
			   END AS BalanceCurrencyCredit
			   , case when ' +  str(@CurrencyKind)+ ' = 0 then 0 
					else SUM(CASE WHEN Acc.DocGroups.DocDate < ''' + @ExtractedFromDate + ''' THEN Acc.Documents.CurrencyDebit ELSE 0 END) 
			   END AS OpenCurrencyDebit
			   , case when ' +  str(@CurrencyKind)+ ' = 0 then 0 
					else SUM(CASE WHEN Acc.DocGroups.DocDate < ''' + @ExtractedFromDate + ''' THEN Acc.Documents.CurrencyCredit ELSE 0 END) 
			   END AS OpenCurrencyCredit
			' ;

end 

IF  (@AddParam  <> '')
begin
	SELECT @OldAcc =  'Cast(' + FieldName +' AS Varchar(20)) +''-''+ '+ @OldAcc      
	FROM ACC.Analyze  INNER JOIN ACC.SplitString(@BaseParam,',') SP ON SP.part = Acc.Analyze.ID 

	SET @OldAcc   =  LEFT (@OldAcc, (LEN(@OldAcc) - 5))  ; 
	
	if (@Filter <> '') 
	begin
		if (@SqlWhere = '')  
			SET @SqlWhere =  ' where '+ @OldAcc +'='''+@Filter+' '''	
		else		
			SET @SqlWhere =  @SqlWhere +' AND '+ @OldAcc +'='''+@Filter+' '''		
	end;	
end;

SET @SqlFinal = ' SELECT  CAST(REPLACE(REPLACE(REPLACE('+@ALLColums+',''-'',''''),''_'',''''),'' '','''') AS DECIMAL(38,0)) AS ORdAccCode' +
                ' , '+@ALLColums+ ' as AccCode' +
                CASE WHEN @ALLCaption <> '' THEN ' , ' + @ALLCaption ELSE '' END +
                CASE WHEN @Sqlselect <> '' THEN ' , ' + @Sqlselect ELSE '' END +
                CASE WHEN @SqlTopic <> '' THEN ' , ' + @SqlTopic ELSE '' END +
                ' , SUM(CASE WHEN Acc.DocGroups.DocDate < ''' + @ExtractedFromDate + ''' THEN Acc.Documents.Debt ELSE 0 END) AS OpenDebt' +
                ' , SUM(CASE WHEN Acc.DocGroups.DocDate < ''' + @ExtractedFromDate + ''' THEN Acc.Documents.Credit ELSE 0 END) AS OpenCredit' +
                ' , sum(Acc.Documents.Debt) as SumDebt' +
                ' , sum(Acc.Documents.Credit) as SumCredit' +
                ' , case when SUM(Debt - Credit)>0 then SUM(Debt - Credit) else 0 end  AS   SumBalanceDebt ' +
                ' , case when SUM( Credit - Debt)>0 then SUM(Credit - Debt ) else 0 end  AS  SumBalanceCredit' +
                @SqlCurrency +	char(13)+			
                ' FROM Acc.DocGroups INNER JOIN '+ char(13)+
                ' Acc.Documents ON Acc.DocGroups.Serial = Acc.Documents.Serial AND Acc.DocGroups.YearID = Acc.Documents.YearID AND '+ char(13)+
                ' Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode  '+ char(13)+
                ' left Join dbo.Currencies cu on Acc.Documents.CurrencyType = cu.CurrenciesID '+ char(13)+
                 @SqlJoin  + char(13) +
                 @SqlWhere + Char(13) +
                ' GROUP BY '+ @SqlGroup +
                ' , case when ' +  str(@CurrencyKind)+ ' = 0 then null else Acc.Documents.CurrencyType end ' +
                ' , case when ' + str( @CurrencyKind)+ ' = 0 then null else cu.CurrencyCode end ' +
                ' , case when ' +  str(@CurrencyKind)+ ' = 0 then null else cu.CurrenciesName end ' +
                ' , CAST(REPLACE(REPLACE(REPLACE('+@ALLColums+',''-'',''''),''_'',''''),'' '','''') AS DECIMAL(38,0))' 

Exec(@SqlFinal)
END
GO

CREATE PROCEDURE [Acc].[AddCodingAllBank]
 @SqlType Tinyint,
 @Code bigint,
 @CBankName varchar(50)
AS
BEGIN
DECLARE @BankName nvarchar(50)
DECLARE @SelectBank nvarchar(100)
DECLARE @SqlTxt nvarchar(2000)

set @SelectBank= (select top 1 AccBankNames From acc.Config)

DECLARE QBank CURSOR FOR SELECT BankName FROM  faraSystems.dbo.Sections WHERE (@SelectBank  like '%'+bankName+',%'  )

open QBank;
FETCH NEXT FROM QBank into @BankName;
While @@fetch_status=0 begin


set @SqlTxt = Case  @SqlType 
when 1  then 
'if(SELECT     COUNT(TopicCode) FROM  '+@BankName+'.Acc.Categories WHERE (TopicCode = '+str(@Code)+'))= 0 '+
'INSERT INTO '+@BankName+'.Acc.Categories (TopicCode, MoeenName_L1, MoeenName_L2, LevelID, FinancialID, AuditID, Essence, ReactionFORRepEssence, TaxonomyType, '+
'TaxonomyTopicCode, LastYearTopicCode, LastTopicCode, AidInfoType, AuditReferenceNo, AuditReferenceTxt, RecalInterfaceID, KindInsertBudgetCode, '+
'BudgetTopicID, ProjectID, makeDate) '+
'SELECT     TopicCode, MoeenName_L1, MoeenName_L2, LevelID, FinancialID, AuditID, Essence, ReactionFORRepEssence, TaxonomyType, TaxonomyTopicCode, '+
'LastYearTopicCode, LastTopicCode, AidInfoType, AuditReferenceNo, AuditReferenceTxt, RecalInterfaceID, KindInsertBudgetCode, BudgetTopicID, '+
'ProjectID, makeDate FROM '+@CBankName+'.Acc.Categories AS Categories_1 WHERE     (TopicCode = '+str(@Code)+')'

when 2  then
'if(SELECT COUNT(DGID) FROM  '+@BankName+'.Acc.DetailGroups WHERE (DGID = '+str(@Code)+'))= 0 '+ 
'INSERT INTO '+@BankName+'.Acc.DetailGroups(DGID, DGName_L1, DGName_L2, StartRange, EndRange, Comment_L1, Comment_L2, MakeDate, UseKindInCo) '+
'SELECT DGID, DGName_L1, DGName_L2, StartRange, EndRange, Comment_L1, Comment_L2, MakeDate, UseKindInCo '+
' FROM   '+@CBankName+'.Acc.DetailGroups AS DetailGroups_1 WHERE     (DGID = '+str(@Code)+')'




when 3  then 
'if(SELECT COUNT(DetailCode) FROM  '+@BankName+'.Acc.Details WHERE (DetailCode = '+str(@Code)+'))= 0 '+ 
'INSERT INTO '+@BankName+'.Acc.Details(CompanyCode, DetailCode, DetailName_L1, DetailName_L2, MakeDate, UseKindInCo) '+
'SELECT CompanyCode, DetailCode, DetailName_L1, DetailName_L2, MakeDate, UseKindInCo FROM    '+@CBankName+'.Acc.Details AS Details_1 '+
'WHERE (DetailCode = '+str(@Code)+') '

when 4 then 
'if(SELECT COUNT(CTopicCode) FROM  '+@BankName+'.Acc.CenterTopics WHERE  (CTopicCode = '+str(@Code)+'))= 0 '+ 
'INSERT INTO '+@BankName+'.Acc.CenterTopics (CTopicCode, CTopicName_L1, CTopicName_L2, LevelID, AidNumber, AidDate, MakeDate) ' +
'SELECT CTopicCode, CTopicName_L1, CTopicName_L2, LevelID, AidNumber, AidDate, MakeDate FROM '+@CBankName+'.Acc.CenterTopics AS CenterTopics_1 '+ 
' WHERE     (CTopicCode = '+str(@Code)+') '

when 5 then 
'if(SELECT COUNT(CTopicCode2) FROM  '+@BankName+'.Acc.CenterTopics2 WHERE  (CTopicCode2 = '+str(@Code)+'))= 0 '+ 
'INSERT INTO '+@BankName+'.Acc.CenterTopics2 (CTopicCode2, CTopicName2_L1, CTopicName2_L2, LevelID, AidNumber, AidDate, MakeDate) ' + 
'SELECT CTopicCode2, CTopicName2_L1, CTopicName2_L2, LevelID, AidNumber, AidDate, MakeDate FROM   '+@CBankName+'.Acc.CenterTopics2 AS CenterTopics2_1 ' +
'WHERE     (CTopicCode2 = '+str(@Code)+') '

end;
exec(@SqlTxt)


FETCH NEXT FROM QBank into @BankName;
end;

CLOSE QBank;
DEALLOCATE QBank

END


GO

CREATE PROC Acc.PROC_Currencies
AS
BEGIN
--DECLARE @BsellName VARCHAR(1000)
--SET @BsellName = (SELECT CASE WHEN CHARINDEX(',', BsellBankNames) = 0 THEN BsellBankNames ELSE SUBSTRING(BsellBankNames, 0, CHARINDEX(',', BsellBankNames)) END FROM Acc.Config)
EXEC ('IF EXISTS (select * from sysobjects where id = object_id(''[Acc].[Currencies]'')) DROP VIEW [Acc].[Currencies] ')
--IF (LTRIM(RTRIM(@BsellName)) = '')
--	EXEC(' create view Acc.Currencies AS  SELECT 0 AS CurrenciesID, ''ریال'' AS CurrenciesName')
--ELSE  
	--EXEC(' create view Acc.Currencies AS  SELECT * FROM ' + @BsellName +'.dbo.Currencies')
	EXEC(' create view Acc.Currencies AS  SELECT * FROM  dbo.Currencies')
END

GO

CREATE PROC Acc.SP_Matrix  @COl varchar(2), @Row1 varchar(2), @Row2 varchar(2),  @CircleKind bigint, @Where varchar(8000), @ActiveRowShare bit = 0 , @ActiveColShare bit = 0,
 @CurrencyKind int = 0
AS BEGIN

DECLARE @Current varchar(20);
DECLARE @InnerSql varchar(8000);
DECLARE @Sql varchar(8000);

SET @Current = LTRIM(RTRIM(@COl)) + ',' + LTRIM(RTRIM(@Row1)) + ',' + LTRIM(RTRIM(@Row2));
SET @InnerSql = '';
SET @Sql = '';

DECLARE @Id          varchar(20)
DECLARE @fldName     varchar(200)
DECLARE @AliasName   varchar(50)
DECLARE @tblName     varchar(30)
DECLARE @TopicName   varchar(200)
DECLARE @JoinFldName varchar(50)
DECLARE @CaptionName Nvarchar(50)

SET @Id = '';
SET @fldName = '';
SET @AliasName = '';
SET @tblName = '';
SET @TopicName= '';
SET @JoinFldName = '';
SET @CaptionName = '';

DECLARE @Select varchar(8000);
DECLARE @Group varchar(1000);
DECLARE @Join varchar(1000);
DECLARE @PriceKind varchar(1000);

SET @Select = '';
SET @Group = '';
SET @Join = '';
SET @PriceKind = '';

DECLARE @Row1Name nvarchar(50)
DECLARE @Row2Name nvarchar(50)

IF (@COl = @Row1) OR (@COl = @Row2) OR (@Row1 = @Row2)
	RAISERROR ('نباید سطر یا ستون هم نام انتخاب شود', 16, 1) 


DECLARE cur_InnerSql CURSOR FOR(
	SELECT Acc.Analyze.ID, TableName,FieldName,AliasName ,JoinFieldName,CaptionName,TopicName
	FROM ACC.Analyze  INNER JOIN ACC.SplitString(@Current,',') SP ON SP.part =  Acc.Analyze.ID ); 

OPEN cur_InnerSql;
FETCH FROM cur_InnerSql into @Id, @tblName, @fldName, @AliasName, @JoinFldName, @CaptionName, @TopicName ;
WHILE @@fetch_status = 0 
	BEGIN
		IF ( @Row1 = @Id ) SET @Row1Name = @CaptionName 
		IF ( @Row2 = @Id ) SET @Row2Name = @CaptionName 
		SET @Select = @Select + 'cast( ' +@fldName + ' as nvarchar(500)) as C'+ CASE WHEN @Select = '' THEN '0' ELSE @Id END  + 
		', cast( ' +ISNULL(@AliasName,@tblName) + '.' + ISNULL(@TopicName, @JoinFldName) + ' as nvarchar(100)) as N'+ CASE WHEN @Select = '' THEN '0' ELSE @Id END+' ,' 
		  
		SET @Group = @Group + 'cast( ' +@fldName + ' as nvarchar(500)), cast( ' +ISNULL(@AliasName,@tblName) + '.' + ISNULL(@TopicName, @JoinFldName) + ' as nvarchar(100)) ,'  
		SET @Join = @tblName + ' ' + ISNULL(@AliasName,'') + ' ON ' + ISNULL(@AliasName,@tblName) + '.' + @JoinFldName  + ' = '+ @fldName + ' INNER JOIN '+ Char(13) + @Join ;

	FETCH NEXT FROM cur_InnerSql into @ID, @tblName, @fldName, @AliasName, @JoinFldName, @CaptionName, @TopicName ;
	END

	SET @Select = LEFT(@Select, (LEN(@Select) - 1)) ; 
	SET @Group = LEFT(@Group, (LEN(@Group) - 1)) ;
	SET @Join = LEFT(@Join, (LEN(@Join) - 12)) ; 

	IF OBJECT_ID('tempdb..##tblTemp') IS NOT NULL 
	   DROP TABLE ##tblTemp

	--SET @PriceKind = CASE @CircleKind WHEN 0 THEN 'SUM(Acc.Documents.Debt) - SUM(Acc.Documents.Credit)'
	--                                  WHEN 1 THEN 'SUM(Acc.Documents.Debt)'
	--								  WHEN 2 THEN 'SUM(Acc.Documents.Credit)'
	--								  WHEN 3 THEN 'SUM(Acc.Documents.Credit) - SUM(Acc.Documents.Debt)'
	--								  WHEN 4 THEN 'SUM(CASE WHEN Debt   <> 0 THEN AidAmount ELSE 0 END) - SUM(CASE WHEN Credit <> 0 THEN AidAmount ELSE 0 END)'
	--                                  WHEN 5 THEN 'SUM(CASE WHEN Debt   <> 0 THEN AidAmount ELSE 0 END)'
	--								  WHEN 6 THEN 'SUM(CASE WHEN Credit <> 0 THEN AidAmount ELSE 0 END)'
	--								  WHEN 7 THEN 'SUM(CASE WHEN Credit <> 0 THEN AidAmount ELSE 0 END) - SUM(CASE WHEN Debt   <> 0 THEN AidAmount ELSE 0 END)'
	--								  ELSE '' END; 
SET @PriceKind = '' 

/*if (@CircleKind & 1 = 1)     */ set @PriceKind= @PriceKind + ',SUM(Acc.Documents.Debt) - SUM(Acc.Documents.Credit) as P1'
/*if (@CircleKind & 2 = 2)     */ set @PriceKind= @PriceKind + ',SUM(Acc.Documents.Debt) as P2'
/*if (@CircleKind & 4 = 4)     */ set @PriceKind= @PriceKind + ',SUM(Acc.Documents.Credit) as P3'
/*if (@CircleKind & 8 = 8)     */ set @PriceKind= @PriceKind + ',SUM(Acc.Documents.Credit) - SUM(Acc.Documents.Debt) as P4'

/*if (@CircleKind & 16 = 16)   */ set @PriceKind= @PriceKind + ',SUM(Acc.Documents.CurrencyDebit) - SUM(Acc.Documents.CurrencyCredit) as P5'
/*if (@CircleKind & 32 = 32)   */ set @PriceKind= @PriceKind + ',SUM(Acc.Documents.CurrencyDebit) as P6'
/*if (@CircleKind & 64 = 64)   */ set @PriceKind= @PriceKind + ',SUM(Acc.Documents.CurrencyCredit) as P7'
/*if (@CircleKind & 128 = 128) */ set @PriceKind= @PriceKind + ',SUM(Acc.Documents.CurrencyCredit) - SUM(Acc.Documents.CurrencyDebit) as P8'
						  

	SET @InnerSql = 'SELECT ' + @Select +@PriceKind +  CHAR(13) +' Into ##tblTemp FROM ' 
	+' Acc.DocGroups INNER JOIN Acc.Documents  ON Acc.DocGroups.Serial = Acc.Documents.Serial AND Acc.DocGroups.CompanyCode = Acc.Documents.CompanyCode '
	+' AND Acc.DocGroups.YearID = Acc.Documents.YearID INNER JOIN'
	+ CHAR(13) + @Join + 
	+ @Where +' GROUP BY ' + @Group;

CLOSE cur_InnerSql ;	
DEALLOCATE cur_InnerSql ;
--print (@InnerSql)
EXEC (@InnerSql)

DECLARE @Code varchar(18);
DECLARE @Name varchar(100);
DECLARE @SumColumn1 varchar(20);
DECLARE @SumColumn2 varchar(20);
DECLARE @SumColumn3 varchar(20);
DECLARE @SumColumn4 varchar(20);
DECLARE @SumColumn5 varchar(20);
DECLARE @SumColumn6 varchar(20);
DECLARE @SumColumn7 varchar(20);
DECLARE @SumColumn8 varchar(20);
DECLARE @SelectTemp varchar(100);

DECLARE @CircleName1  varchar(100)='|مانده ( بد - بس )' 
DECLARE @CircleName2  varchar(100)='|گردش بدهكار' 
DECLARE @CircleName3  varchar(100)='|گردش بستانكار' 
DECLARE @CircleName4  varchar(100)='|مانده ( بس - بد )' 
DECLARE @CircleName5  varchar(100)='|مانده ( بد - بس )(ارزی)' 
DECLARE @CircleName6  varchar(100)='|گردش بدهكار(ارزی)' 
DECLARE @CircleName7  varchar(100)='|گردش بستانكار(ارزی)' 
DECLARE @CircleName8  varchar(100)='|مانده ( بس - بد )(ارزی)' 


SET @Select = '';
SET @SelectTemp = '';

DECLARE cur_Matrix CURSOR FOR
	SELECT C0 , ltrim(rtrim(N0)), CAST(SUM(P1) as varchar(20)) AS SumColumn1, CAST(SUM(P2) as varchar(20)) AS SumColumn2, CAST(SUM(P3) as varchar(20)) AS SumColumn3, CAST(SUM(P4) as varchar(20)) AS SumColumn4
	                            , CAST(SUM(P5) as varchar(20)) AS SumColumn5, CAST(SUM(P6) as varchar(20)) AS SumColumn6, CAST(SUM(P7) as varchar(20)) AS SumColumn7, CAST(SUM(P8) as varchar(20)) AS SumColumn8
	FROM ##tblTemp GROUP BY C0 , N0 ORDER BY C0; 
	
OPEN cur_Matrix;
FETCH FROM cur_Matrix into @Code , @Name , @SumColumn1, @SumColumn2, @SumColumn3, @SumColumn4, @SumColumn5, @SumColumn6, @SumColumn7, @SumColumn8 ;
WHILE @@fetch_status = 0 
	BEGIN
		--SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P else 0 END) AS ['+ @Name +'] ,'

if (@CircleKind & 1 = 1)      SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P1 else 0 END) AS ['+ @Name +@CircleName1+'] ,'
if (@CircleKind & 2 = 2)      SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P2 else 0 END) AS ['+ @Name +@CircleName2+'] ,'
if (@CircleKind & 4 = 4)      SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P3 else 0 END) AS ['+ @Name +@CircleName3+'] ,'
if (@CircleKind & 8 = 8)      SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P4 else 0 END) AS ['+ @Name +@CircleName4+'] ,'
if (@CircleKind & 16 = 16)    SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P5 else 0 END) AS ['+ @Name +@CircleName5+'] ,' 
if (@CircleKind & 32 = 32)    SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P6 else 0 END) AS ['+ @Name +@CircleName6+'] ,'
if (@CircleKind & 64 = 64)    SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P7 else 0 END) AS ['+ @Name +@CircleName7+'] ,'
if (@CircleKind & 128 = 128)  SET @Select = @Select +'SUM(CASE WHEN C0='+@Code + ' THEN P8 else 0 END) AS ['+ @Name +@CircleName8+'] ,' 
					  																											 

		if (@ActiveRowShare = 1 )
		begin
		--	SET @Select = @Select +'CAST( CASE SUM(P) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P else 0 END)/SUM(P)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +'] ,'

if (@CircleKind & 1 = 1)      SET @Select = @Select +'CAST( CASE SUM(P1) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P1 else 0 END)/SUM(P1)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +@CircleName1+'] ,' 
if (@CircleKind & 2 = 2)      SET @Select = @Select +'CAST( CASE SUM(P2) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P4 else 0 END)/SUM(P2)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +@CircleName2+'] ,' 
if (@CircleKind & 4 = 4)      SET @Select = @Select +'CAST( CASE SUM(P3) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P2 else 0 END)/SUM(P3)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +@CircleName3+'] ,' 
if (@CircleKind & 8 = 8)      SET @Select = @Select +'CAST( CASE SUM(P4) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P3 else 0 END)/SUM(P4)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +@CircleName4+'] ,' 
if (@CircleKind & 16 = 16)    SET @Select = @Select +'CAST( CASE SUM(P5) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P5 else 0 END)/SUM(P5)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +@CircleName5+'] ,' 
if (@CircleKind & 32 = 32)    SET @Select = @Select +'CAST( CASE SUM(P6) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P6 else 0 END)/SUM(P6)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +@CircleName6+'] ,' 
if (@CircleKind & 64 = 64)    SET @Select = @Select +'CAST( CASE SUM(P7) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P7 else 0 END)/SUM(P7)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +@CircleName7+'] ,' 
if (@CircleKind & 128 = 128)  SET @Select = @Select +'CAST( CASE SUM(P8) WHEN 0 THEN 0 ELSE ROUND(SUM(CASE WHEN C0='+@Code + ' THEN P8 else 0 END)/SUM(P8)*100, 2) END AS FLOAT) AS [س‏سطری'+ @Code +@CircleName8+'] ,' 

        end
		if (@ActiveColShare = 1 )
		begin
		--	SET @Select = @Select + CASE WHEN @SumColumn = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
		--	+ ' THEN P else 0 END)/CAST('+left(@SumColumn, len(@SumColumn)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code +'] ,'

if (@CircleKind & 1 = 1)     SET @Select = @Select + CASE WHEN @SumColumn1 = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
			+ ' THEN P1 else 0 END)/CAST('+left(@SumColumn1, len(@SumColumn1)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code +@CircleName1+'] ,' 

if (@CircleKind & 2 = 2)     SET @Select = @Select + CASE WHEN @SumColumn2 = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
			+ ' THEN P2 else 0 END)/CAST('+left(@SumColumn2, len(@SumColumn2)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code ++@CircleName2+'] ,' 

if (@CircleKind & 4 = 4)     SET @Select = @Select + CASE WHEN @SumColumn3 = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
			+ ' THEN P3 else 0 END)/CAST('+left(@SumColumn3, len(@SumColumn3)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code ++@CircleName3+'] ,' 

if (@CircleKind & 8 = 8)     SET @Select = @Select + CASE WHEN @SumColumn4 = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
			+ ' THEN P4 else 0 END)/CAST('+left(@SumColumn4, len(@SumColumn4)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code ++@CircleName4+'] ,' 

if (@CircleKind & 16 = 16)   SET @Select = @Select + CASE WHEN @SumColumn5 = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
			+ ' THEN P5 else 0 END)/CAST('+left(@SumColumn5, len(@SumColumn5)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code ++@CircleName5+'] ,' 

if (@CircleKind & 32 = 32)   SET @Select = @Select + CASE WHEN @SumColumn6 = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
			+ ' THEN P6 else 0 END)/CAST('+left(@SumColumn6, len(@SumColumn6)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code +@CircleName6+'] ,' 

if (@CircleKind & 64 = 64)   SET @Select = @Select + CASE WHEN @SumColumn7 = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
			+ ' THEN P7 else 0 END)/CAST('+left(@SumColumn7, len(@SumColumn7)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code +@CircleName7+'] ,' 

if (@CircleKind & 128 = 128) SET @Select = @Select + CASE WHEN @SumColumn8 = '0.00' THEN '0 ' ELSE ' CAST(ROUND(SUM(CASE WHEN C0='+@Code 
			+ ' THEN P8 else 0 END)/CAST('+left(@SumColumn8, len(@SumColumn8)-3)+' AS BIGINT)*100,2) AS FLOAT) ' END + 'AS [س‏ستونی'+ @Code +@CircleName8+'] ,' 

        end

		FETCH NEXT FROM cur_Matrix into @Code , @Name , @SumColumn1, @SumColumn2, @SumColumn3, @SumColumn4, @SumColumn5, @SumColumn6, @SumColumn7, @SumColumn8 ;
	END
CLOSE cur_Matrix ;	
DEALLOCATE cur_Matrix ;

SET @Group = 'C' + @Row1 + ', N'+ @Row1 + CASE WHEN @Row2 = '0' THEN '' ELSE ',C' + @Row2+ ',N'+ @Row2 END; 
SET @SelectTemp = 'C'+ @Row1 + ' AS [کد'+ @Row1Name +'], N'+ @Row1 +' AS ['+ @Row1Name+']' 
                  + CASE WHEN @Row2 = '0' THEN '' ELSE ',C' + @Row2+' AS [کد' + @Row2Name + '],N' + @Row2 + ' AS ['+ @Row2Name +']' END; 

--SET @Select = left(@Select, (LEN(@Select) - 1)) ; 
if RIGHT(@Select,1)=','
 SET @Select = left(@Select, (LEN(@Select) - 1)) ; 

if ltrim(@Select)<>''
 SET @Select =' , ' + @Select; 


declare @SumSelect varchar(500)=''
if (@CircleKind & 1 = 1)      SET @SumSelect = @SumSelect +',sum(P1) as [جمع‏کل '+ @Name +@CircleName1+']'
if (@CircleKind & 2 = 2)      SET @SumSelect = @SumSelect +',sum(P2) as [جمع‏کل '+ @Name +@CircleName2+']'
if (@CircleKind & 4 = 4)      SET @SumSelect = @SumSelect +',sum(P3) as [جمع‏کل '+ @Name +@CircleName3+']'
if (@CircleKind & 8 = 8)      SET @SumSelect = @SumSelect +',sum(P4) as [جمع‏کل '+ @Name +@CircleName4+']'
if (@CircleKind & 16 = 16)    SET @SumSelect = @SumSelect +',sum(P5) as [جمع‏کل '+ @Name +@CircleName5+']' 
if (@CircleKind & 32 = 32)    SET @SumSelect = @SumSelect +',sum(P6) as [جمع‏کل '+ @Name +@CircleName6+']'
if (@CircleKind & 64 = 64)    SET @SumSelect = @SumSelect +',sum(P7) as [جمع‏کل '+ @Name +@CircleName7+']'
if (@CircleKind & 128 = 128)  SET @SumSelect = @SumSelect +',sum(P8) as [جمع‏کل '+ @Name +@CircleName8+']'    
--sum('+@SumSelect+') as [جمع‏کل] 

if ltrim(@Select)<>''
 SET @Select = @Select+@SumSelect ; 
					  														 



SET @Sql = 'SELECT '+@SelectTemp + @Select + CHAR(13) + ' FROM (SELECT * FROM ##tblTemp) AS Temp ' 
             + 'GROUP BY '+@Group ;
             
if (@Row1=10)
SET @Sql =@Sql+' ORDER BY C' + @Row1
else
SET @Sql =@Sql+' ORDER BY CAST(C' + @Row1 +' AS BIGINT)'


DECLARE @MAXCol INTEGER


IF (LEN(@Sql) > 7995)
BEGIN
	IF (( SELECT COUNT(*) FROM (SELECT C0 , N0 FROM ##tblTemp GROUP BY C0 , N0) AS a)> 50) 
		BEGIN
			SET @MAXCol = CASE  CAST(@ActiveColShare AS smallint) + CAST(@ActiveRowShare AS smallint) WHEN 0 THEN 60 WHEN 1 THEN 30 WHEN 2 THEN  15 END
			RAISERROR ('تعداد ستونهای انتخابی نباید بیشتر از %d باشد', 16, 1 , @MAXCol )
		END
	ELSE
	RAISERROR ('لطفا در محدوده تعداد ستونهای انتخابی را کم کنید', 16, 1) 
END
--print @sql
EXEC (@Sql)
END

--------------------------------------- c r e a t e Function -------------------------------------------

  




GO

CREATE PROCEDURE [acc].[USP_4_InsertIntoPORtion] 
------------------------------		External Parameters OR Insert From MakeRepORt   ----------------------------
	@InfoID int ,
	@InfoName varchar(150) ,
	@DetailCode int ,
	@CTopicCode int ,
	@CtopicCode2 int ,
	@CTopicCode3 int ,
	@Mounth int ,
	@Cofficient Float ,
	@CofficientItem Float ,
	@YearId int ,
	@InsertKind int  , -- baray inkeh etelaat dar PORtionRange insert shavad 
	@PORtionKind int  , -- baray inkeh etelaat dar (1) pORtiontable ya (2)pORtionDoc insert shavad 
	@InsertCount int output
as 
begin
SET NOCOUNT ON
------------------------------		Internal Parameters AND Insert From Config   ---------------------------
DECLARE @TopicCodeFrom bigint
DECLARE @TopicCodeTo bigint
DECLARE @FORmInfoID int
DECLARE @CofficientID int


SET @TopicCodeFrom = ( select TopicCodeFrom from config )
SET @TopicCodeTo =( select TopicCodeTo from config )
--------------------	Insert Into FORmsInfo	     -------------------------------
if (SELECT InfoID FROM  Acc.FORmsInfo WHERE   (FORmType = 10) AND (InfoID = @InfoID))  is null
begin 
	SET @FORmInfoID = (SELECT MAX(FORmInfoID) FROM   Acc.FORmsInfo) +1 

	INSERT INTO Acc.FORmsInfo
		(FORmInfoID, InfoID, FORmType, InfoName_L1)
		VALUES     (@FORmInfoID, @InfoID, 10, @InfoName)
end else begin 
	SET @FORmInfoID = (SELECT top 1 FORmInfoID  FROM   Acc.FORmsInfo where InfoID=@InfoID )   
end 
--------------------	Insert Into PORtionRange     -------------------------------
if @InsertKind <> 0 
begin  
	INSERT INTO Acc.PORtionRange
                      (CompanyCode, TopicCode, DetailCode, CTopicCode, CTopicCode2, YearID, FORmInfoID)
	SELECT DISTINCT 
                      D.CompanyCode, D.TopicCode, D.DetailCode, D.CTopicCode, D.CTopicCode2, 
                      D.YearID, @FORmInfoID AS FORmInfoID
	FROM         Acc.Documents D Left OUTER JOIN
                      Acc.PORtionRange ON D.YearID = Acc.PORtionRange.YearID AND D.CompanyCode = Acc.PORtionRange.CompanyCode AND 
                      D.TopicCode = Acc.PORtionRange.TopicCode AND D.DetailCode = Acc.PORtionRange.DetailCode AND 
                      D.CTopicCode = Acc.PORtionRange.CTopicCode AND D.CTopicCode2 = Acc.PORtionRange.CTopicCode2
	WHERE     (Acc.PORtionRange.FORmInfoID IS NULL) AND (D.YearID = @YearId ) AND 
		(D.TopicCode BETWEEN @TopicCodeFrom AND @TopicCodeTo ) AND 
		(case @InsertKind 
			when 1 then D.CTopicCode 
			when 2 then D.CTopicCode2
		else 0 end  = 
		case @InsertKind
			when 1 then @InfoID
			when 2 then @InfoID
		else 1 end 
)
end 
--------==========
if @PORtionKind=1 
begin 
	--------------------	Insert Into PORtionTable     -------------------------------
	If (SELECT COUNT(*) FROM  Acc.PORtionTable WHERE (YearID = @YearId ) AND (PORtionCunt = @Mounth ) AND (FORmInfoID = @FORmInfoID ) AND (CTopicCode = @CTopicCode ) ) =0
	begin 
		SET @CofficientID = (SELECT  MAX(CofficientID) FROM Acc.PORtionTable) +1 
		INSERT INTO Acc.PORtionTable
			(CofficientID, FORmInfoID, CTopicCode, Cofficient, PORtionCunt, YearID)
		VALUES     ( @CofficientID , @FORmInfoID , @CTopicCode , @Cofficient , @Mounth , @YearId )
		SET @InsertCount =@InsertCount +1
	end else begin 
		SET @CofficientID = (SELECT   CofficientID  FROM Acc.PORtionTable  WHERE (YearID = @YearId ) AND (PORtionCunt = @Mounth ) AND (FORmInfoID = @FORmInfoID ) AND (CTopicCode =@CTopicCode ) )  
	end 
	--------------------	Insert Into PORtionTable     -------------------------------
	if @CtopicCode2 >0 
	begin 
		if (SELECT     COUNT(*) FROM  Acc.PORtionTableItems WHERE     (CofficientID = @CofficientID) AND (CTopicCode2 = @CtopicCode2 ) ) =0
		begin 
			INSERT INTO Acc.PORtionTableItems
	                      (CofficientID, CTopicCode2, CofficientItem)
			VALUES     ( @CofficientID , @CtopicCode2 , @CofficientItem )
			SET @InsertCount =@InsertCount +1
		end
	end 

end else --//@PORtionKind=2
begin 
	--------------------	Insert Into PORtionTable     -------------------------------
	If (SELECT COUNT(*) FROM Acc.PORtionDoc WHERE (DetailCode = @DetailCode) AND (FORmInfoID = @FORmInfoID) AND (CTopicCode = @CTopicCode) AND (CTopicCode2 = @CtopicCode2) AND (CTopicCode3 = @CTopicCode3) AND (YearID = @YearId)  AND (PORtionCount = @Mounth) ) =0
	begin 
		INSERT INTO Acc.PORtionDoc
                      (DetailCode, FORmInfoID, CTopicCode, CTopicCode2, CTopicCode3, YearID, PORtionCount)
		VALUES     ( @DetailCode , @FORmInfoID , @CTopicCode , @CtopicCode2 , @CTopicCode3 , @YearId , @Mounth )
		SET @InsertCount =@InsertCount +1
	end 
end 
--------==========
-----------------------           end              ---------------------
end
---000---
GO 

CREATE FUNCTION   [Acc].[AccBookFORSomeYear] 
		( 
			@LenAccCode Varchar(3)=[3] ,
			@DocDateFrom Varchar(10)='0001/01/01', 
			@DocDateTo  Varchar(10)='9999/99/99'  
		)
RETURNS table  AS  

return (
SELECT    serial ,id,CompanyCode, AccCode, SecondaryDocNo, PrimaryDocNo, DocDate, Comment_L1,Comment_L2, Debt, Credit,Debt-Credit  as balance,
                AidDocNo, AidDocdate,AidAmount , BudgetTopicID ,ProjectID , DocNote_L1 ,DocNote_L2,Status,bedbes
FROM	(
		SELECT	DG.serial,D.ID,DG.CompanyCode, 
			ABS(LEFT(D.TopicCode, @LenAccCode)) AS AccCode, DG.SecondaryDocNo,
			DG.PrimaryDocNo, DG.DocDate, D.Comment_L1,D.Comment_L2, D.Debt, 
			D.Credit,D.AidDocNo, D.AidDocdate, D.AidAmount ,
			D.BudgetTopicID, D.ProjectID, DG.DocNote_L1, DG.DocNote_L2, DG.Status ,
			CASE D.debt WHEN 0 THEN '1' ELSE '0' END as BedBes
		FROM	Acc.Documents D INNER JOIN
			Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
			D.CompanyCode = DG.CompanyCode
		WHERE (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND (DG.Status <> 0)
	UNION ALL
		SELECT	0 as serial,0 as id, DG.CompanyCode, ABS(LEFT(D.TopicCode, @LenAccCode)) AS AccCode, 
			0 AS SecondaryDocNo, 0 AS PrimaryDocNo,	'0' AS DocDate, 'مجموع مانده از قبل  ' AS Comment_L1, ' ' as Comment_L2 ,
			SUM(D.Debt), SUM(D.Credit), 0 AS AidDocNo, '0' AS AidDocdate,  0 as AidAmount ,
			'0' AS BudgetTopicID, '0' AS ProjectID,	'0' AS DocNote_L1 ,'0' AS DocNote_L2,0 as Status , 0 as bedbes
		FROM	Acc.Documents D INNER JOIN
			Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
			D.CompanyCode = DG.CompanyCode
		WHERE
			(DG.DocDate < @DocDateFrom ) AND (DG.Status <> 0)
		GROUP BY DG.CompanyCode, ABS(LEFT(D.TopicCode, @LenAccCode))

	) Docs
)


GO

CREATE FUNCTION [Acc].[BudgetTrialBalance]     (
					@LenBudgetCode Varchar(4)=[1] ,
					@BudgetCodeFrom Varchar(12)=[0],  @BudgetCodeTo Varchar(12)=2147483647 , 
					@FORmNoFrom Varchar(12)=[0] ,@FORmNoTo Varchar(12)=2147483647, 
					@DateFrom Varchar(10)='0001/01/01', @DateTo  Varchar(10)='9999/99/99',
					@FromYearID integer=[89] , @ToYearId integer =[89])
RETURNS table AS  
return
(
SELECT  left(Acc.BudgetItems.BudgetTopicID,@LenBudgetCode) as BudgetTopicCode  , 
		sum(Acc.BudgetItems.Bed) as bed , sum(Acc.BudgetItems.Bes) as bes , 
	case when sum(Acc.BudgetItems.Bed- Acc.BudgetItems.Bes ) >0 then 'بد' else 'بس' end as Mahiat  ,
		abs(SUM(Acc.BudgetItems.Bed - Acc.BudgetItems.Bes)) AS AbsBalance , 
		SUM(Acc.BudgetItems.Bed - Acc.BudgetItems.Bes) as Balance
FROM         Acc.BudgetItems INNER JOIN
                      Acc.Budgets ON Acc.BudgetItems.BudgetID = Acc.Budgets.BudgetID and Acc.BudgetItems.CompanyCode = Acc.Budgets.CompanyCode 
Where InterfaceID BETWEEN @FORmNoFrom AND @FORmNoTo AND 
	 BudgetDate BETWEEN @DateFrom AND @DateTo
GROUP BY left(Acc.BudgetItems.BudgetTopicID, @LenBudgetCode ) 
having left(Acc.BudgetItems.BudgetTopicID, @LenBudgetCode ) BETWEEN @BudgetCodeFrom AND @BudgetCodeTo

)
 

GO

--CREATE  FUNCTION [Acc].[BudgetsInfo]      
--				(
--					@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=2147483647, 
--					@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=2147483647 ,
--					@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99',
--					@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=2147483647 
--				)
--RETURNS table AS  
--return
--(
--SELECT	0 AS Kind,   BudgetItems.BudgetTopicID AS BudgetCode, BudgetItems.Bed - BudgetItems.Bes AS MosavabPrice,  
--		BudgetItems.Bes- BudgetItems.Bes  AS MasrafPrice , BudgetItems.BudgetTopicID- BudgetItems.BudgetTopicID AS AidTopicCode, 0 AS CTopicCode
	
--FROM	acc.BudgetItems as BudgetItems INNER JOIN
--		acc.Budgets as Budgets ON BudgetItems.BudgetID = Budgets.BudgetID ????and Acc.BudgetItems.CompanyCode = Acc.Budgets.CompanyCode 

--Where BudgetItems.BudgetTopicID = 0 AND  Budgets.BudgetDate BETWEEN @DocDateFrom AND @DocDateTo

--UNION ALL

--SELECT     1 as Kind ,  ISNULL(BudgetRang.BudgetCode, 0) AS BudgetCode ,  
--    0 as MosavaPrice , Debt -Credit as MasrafPrice  , Docs.TopicCode , Docs.CTopicCode

--FROM         (

--SELECT	

--Documents.TopicCode,
--	case 
--		when FirstBudgerRange.CTopicCode is null 
--			then left( Documents.CTopicCode ,1 )
--		else 0 end as CTopicCode ,
--	sum(Documents.Debt) as debt , sum(Documents.Credit ) as Credit
--	--Documents.Comment_L1


--FROM	acc.Documents as Documents  INNER JOIN
--	acc.DocGroups as DocGroups ON Documents.Serial = DocGroups.Serial LEFT OUTER JOIN
--		(SELECT     *
--		FROM         acc.BudgetRang as BudgetRang 
--		WHERE     ctopiccode = 0) FirstBudgerRange 
--	ON Documents.TopicCode = FirstBudgerRange.TopicCode
--where   DocGroups.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND  
--		DocGroups.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo AND 
--	 DocGroups.DocDate BETWEEN  @DocDateFrom AND @DocDateTo  
--Group By Documents.TopicCode , 	
--		case when FirstBudgerRange.CTopicCode is null 	then left( Documents.CTopicCode ,1 )	else 0 end
--) Docs LEFT OUTER JOIN acc.BudgetRang as BudgetRang 
--	ON Docs.TopicCode = BudgetRang.TopicCode AND Docs.CTopicCode = BudgetRang.CTopicCode
--where ( Docs.TopicCode BETWEEN  @AccCodeFrom AND  @AccCodeTo ) AND isnull(BudgetRang.BudgetCode,0) BETWEEN 0  AND 2147483647

--)

--GO

CREATE  FUNCTION [Acc].[AccBooksCategories]  -- Edit By Rezaei 1402/11/04 for Add Currency
					(
						@CompanyCodeFrom Varchar(12)=[0],
						@CompanyCodeTo Varchar(12)=[0] ,
						@LenAccCode Varchar(12)=[2], 
						@AccCode bigint=[11], 
						@SecondaryDocNoFrom Varchar(12)=[0] ,
						@SecondaryDocNoTo Varchar(12)=2147483647, 
						@PrimaryDocNoFrom  Varchar(12)=[0], 
						@PrimaryDocNoTo Varchar(12)=2147483647 ,
						@DocDateFrom Varchar(10)='0001/01/01', 
						@DocDateTo  Varchar(10)='9999/99/99',
						@Status1 varchar(150)='', 
						@Status2  integer=[-1],
						@FromYearID integer,
						@ToyearID integer,
                        @DocTypeCodeFrom varchar(150)='' ,
						@DocTypeCodeTo integer  =[9999],
						@CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0 
					)
RETURNS table  AS  
return (
	SELECT  ROW_NUMBER() OVER (partition by AccCode 
				order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id  ) as _row
		,serial
		,YearID 
		,id
		,CompanyCode
		,AccCode
		,SecondaryDocNo
		,PrimaryDocNo
		,DocDate
		,Comment_L1
		,Comment_L2
		,Debt
		,Credit
        --,Debt-Credit as balance
		,SUM(Debt-Credit) over (partition by AccCode 
				order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningBalance
        	,AidDocNo
		,AidDocdate
		,AidAmount 
		,BudgetTopicID 
		,ProjectID 
		,DocNote_L1 
		,DocNote_L2
		,Status
		,bedbes
		,SORtID
		,CurrencyType 
		,CurrencyCode 
		,CurrenciesName 
		,CurrencyDebit 
		,CurrencyCredit
		,SUM(CurrencyDebit-CurrencyCredit) over (partition by AccCode 
				order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id  ) as RunningCurrencybalance
FROM	(
	 SELECT  DG.YearID
			,DG.Serial
			,D.ID
			,DG.CompanyCode
			,cast(  ABS(LEFT(D.TopicCode, @LenAccCode)) AS bigint) AS AccCode
			,DG.SecondaryDocNo
			,DG.PrimaryDocNo
			,DG.DocDate
			,D.Comment_L1
			,D.Comment_L2
			,D.Debt
			,D.Credit
			,D.AidDocNo
			,D.AidDocdate
			,D.AidAmount
			,D.BudgetTopicID
			,D.ProjectID
			,DG.DocNote_L1
			,DG.DocNote_L2
			,DG.Status
			,CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes
			,acc.DocTypes.SORtID
			,d.CurrencyType
			,cu.CurrencyCode
			,cu.CurrenciesName
			,D.CurrencyDebit
			,D.CurrencyCredit
	FROM  acc.Documents D 
				INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
							D.CompanyCode = DG.CompanyCode  LEFT OUTER JOIN
							acc.DocTypes ON DG.DocTypeCode = acc.DocTypes.DocTypeCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
	WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo ) 
			AND( DG.YearID BETWEEN @FromYearID AND @ToyearID ) AND
				(ABS(LEFT(D.TopicCode, @LenAccCode)) =@AccCode ) AND
				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
				((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 AND (DG.Status <> 0)) OR
				( DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
				(CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR
				( DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  

	UNION ALL
		SELECT	DG.YearID,0 as serial,0 as id, DG.CompanyCode,cast( ABS(LEFT(D.TopicCode, @LenAccCode)) as bigint) AS AccCode, 
			0 AS SecondaryDocNo, 0 AS PrimaryDocNo,	'0' AS DocDate, 'مجموع مانده از قبل  ' AS Comment_L1, ' ' as Comment_L2 ,
			SUM(D.Debt), SUM(D.Credit), 0 AS AidDocNo, '0' AS AidDocdate,  0 as AidAmount ,
			'0' AS BudgetTopicID, 
			'0' AS ProjectID,	
			'0' AS DocNote_L1 ,
			'0' AS DocNote_L2,0 as Status , 
			0 as bedbes,
			0 as  SORtID,
			case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			sum(D.CurrencyDebit) CurrencyDebit ,
			sum(D.CurrencyCredit) CurrencyCredit

		FROM	Acc.Documents D INNER JOIN
			Acc.DocGroups  DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
			D.CompanyCode = DG.CompanyCode
			left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID

		WHERE (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo ) AND
		      ((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 AND (DG.Status <> 0)) OR
              (DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
              (CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR
              (DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))) AND
		      (DG.YearID BETWEEN @FromYearID AND @ToyearID ) AND
			  (ABS(LEFT(D.TopicCode, @LenAccCode)) =@AccCode ) AND
			  ((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
			  (DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
			  (DG.DocDate < @DocDateFrom ))
			  AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		GROUP BY DG.YearID
				,DG.CompanyCode
				,cast(ABS(LEFT(D.TopicCode, @LenAccCode)) as bigint)
				,case when @CurrencyKind = 0 then null else d.CurrencyType end 
			    ,case when @CurrencyKind = 0 then null else cu.CurrencyCode end 
			    ,case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
	) Docs
	/*order by AccCode
			,YearID
			,DocDate
			,PrimaryDocNo
			,SORtID
			,SecondaryDocNo
			,CompanyCode
			,serial
			,id*/
		
)

GO
 
CREATE FUNCTION [Acc].[AnalyzeCORmparisonBalanceWithSelected]       ( 
						@DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1]  ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=2147483647 ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=2147483647 , 
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=2147483647 , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=2147483647, 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=2147483647 ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99'  ,
						@CTopicCodeFrom Varchar(12)=[0],  @CTopicCodeTo Varchar(12)=2147483647 ,
						@CTopicCode2From Varchar(12)=[0],  @CTopicCode2To Varchar(12)=2147483647 ,
						@LenAcc1 integer=[1] ,@LenAcc2 integer  =[2]  ,@LenAcc3 integer=[4]  ,@LenAcc4 integer=[0] ,@LenAcc5 integer  =[0]  ,@LenAcc6 integer=[0]  ,
						@LenCompany1 integer=[1] ,@LenCompany2 integer  =[2]  ,@LenCompany3 integer=[4]  ,
						@LenCTopic1  integer=[1] ,@LenCTopic2  integer  =[2]  ,@LenCTopic3  integer=[4]  ,
						@LenCTopic2_1 integer=[1] ,@LenCTopic2_2 integer  =[2] ,
                                                @Status1 varchar(150)='', @Status2  integer=[-1] ,@FromYearID integer ,@ToYearId integer  )



RETURNS table AS  
return (
SELECT	 DG.YearId ,left(D.TopicCode,@LenAcc1) as TopicCode1 ,  left(D.TopicCode,@LenAcc2) as TopicCode2 ,
		 left(D.TopicCode,@LenAcc3) as TopicCode3 , left(D.TopicCode,@LenAcc4) as TopicCode4 ,
		 left(D.TopicCode,@LenAcc5)  as TopicCode5 , left(D.TopicCode,@LenAcc6) as TopicCode6 ,
		D.DetailCode, 
		 left(DG.CompanyCode,@LenCompany1)  as  CompanyCode1 ,  left(DG.CompanyCode,@LenCompany2) as CompanyCode2 , 
		 left(DG.CompanyCode,@LenCompany3)as  CompanyCode3 , 
		 left(D.CTopicCode,@LenCTopic1)  as CTopicCode1 , left(D.CTopicCode,@LenCTopic2) as CTopicCode2 ,
                            left(D.CTopicCode,@LenCTopic3)  as CTopicCode3 , 
		 left(D.CTopicCode2,@LenCTopic2_1) as CTopicCode2_1, left(D.CTopicCode2,@LenCTopic2_2) as CTopicCode2_2, 
		
		
		sum( case DG.DocTypeCode when 1 then D.Debt - D.Credit else 0 end ) as BalanceLastYear ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 1 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM1 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 2 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM2 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 3 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM3 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 4 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM4 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 5 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM5 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 6 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM6 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 7 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM7 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 8 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM8 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 9 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM9 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))=10 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM10 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))=11 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM11 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))=12 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM12 ,
		sum( case  when ( DG.DocTypeCode <> 1 ) then (D.Debt - D.Credit) else 0 end ) as allsuminYear,
		sum( D.Debt) as Debt , Sum(D.Credit) as Credit ,
		case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
		case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit 

FROM         Acc.Documents D LEFT OUTER JOIN
                      Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                      D.CompanyCode = DG.CompanyCode
WHERE     	
			(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',') ))
			AND 
		(DG.YearId  BETWEEN  @FromYearID AND  @ToYearId  ) AND 		
		(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	    (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) 
GROUP BY 	DG.YearId ,D.TopicCode, D.DetailCode, DG.CompanyCode, D.CTopicCode, D.CTopicCode2,DG.Status
HAVING      	(D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )  AND 
		(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo) AND
		(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
		(D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) AND 
		(D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To ) AND
 ( DG.Status in (Select part From [Acc].[SplitString] (@Status1,','))))

GO

CREATE FUNCTION [Acc].[AccTrialCTopicsBalance3] (@DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1] ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=2147483647 ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=2147483647 , 
						@CTopicCode3From Varchar(12)=[0],  @CTopicCode3To Varchar(12)=2147483647 , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=2147483647, 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=2147483647 ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
                        @Status1 varchar(150)='' , @Status2  integer=[-1],@FromYearID integer ,@ToYearID integer ,
			         @CurrencyTypeFrom  integer=0  , @CurrencyTypeTo  integer=99999, @CurrencyKind  integer=0  )

RETURNS table AS  
return
(
SELECT  	DG.YearID,D.TopicCode, D.CTopicCode3 as CTopicCode , Acc.Categories.MoeenName_L1 , Acc.Categories.MoeenName_L2 , 
		case D.CTopicCode3 when 0 Then moeenname_L1  else CTopicName3_L1 end as CTopicName_L1 , 
		case D.CTopicCode3 when 0 Then moeenname_L2  else CTopicName3_L2 end as CTopicName_L2 ,		
		SUM(D.Debt) AS Debt,SUM(D.Credit) AS Credit,
		case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
		case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit ,
					   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
			   case
				 when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				  SUM(D.CurrencyDebit - D.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
		       case
				 when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				  SUM(D.CurrencyCredit - D.CurrencyDebit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyCredit
		  -- end of currency 

FROM         Acc.Documents  D LEFT OUTER JOIN
                      Acc.CenterTopics3 ON D.ctopiccode3 = Acc.CenterTopics3.CTopicCode3 LEFT OUTER JOIN
                      Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT OUTER JOIN
                      Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                      D.CompanyCode = DG.CompanyCode
	    left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
WHERE   (CASE WHEN  @DocTypeCode1_Not = '' THEN 1 ELSE 0 END = 1 OR 	
		(DG.DocTypeCode in (Select Part from [Acc].[SplitString] (@DocTypeCode1_Not,',')))) AND
		(DG.YearId  BETWEEN  @FromYearID AND  @ToYearID  ) AND 
		(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	    (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
		(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo)  AND
		((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 AND (DG.Status <> 0)) OR
        (DG.Status in (Select Part from [Acc].[SplitString] (@Status1,',')))) 
GROUP BY 	DG.YearID,D.TopicCode, D.CTopicCode3, Acc.Categories.MoeenName_L1 , Acc.CenterTopics3.CTopicName3_L1,
                           Acc.Categories.MoeenName_L2 , Acc.CenterTopics3.CTopicName3_L2,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
HAVING      	(D.CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To )  AND 
		(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo) 
)

GO

CREATE  FUNCTION [Acc].[AccComparisonMonthBalance]     (@LenPrvAccCode Varchar(4)=[1] ,@LenAccCode Varchar(4)=[2], 
					@DocTypeCode1_Not Varchar(150)='' ,@DocTypeCode2_Not integer  =[-1] ,@DocTypeCode3_Not integer=[-1] ,
					@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
					@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=2147483647 ,
					 @AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=2147483647 , 
					@CTopicCodeFrom Varchar(12)=[0],  @CTopicCodeTo Varchar(12)=2147483647 , 
					@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=2147483647, 
					@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=2147483647 ,
					@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' , @Miladi  tinyint= 0,@FromYearID integer ,@ToYearID integer )
RETURNS table AS  
return
(
SELECT  DG.YearID,LEFT(D.TopicCode, @LenPrvAccCode) AS PrvTopicCode ,LEFT(D.TopicCode,@LenAccCode)  AS TopicCode , 
		sum( case DG.DocTypeCode when 1 then D.Debt - D.Credit else 0 end ) as BalanceLastYear ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 1 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM1 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 2 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM2 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 3 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM3 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  ) = 4 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM4 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 5 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM5 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 6 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM6 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 7 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM7 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 8 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM8 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 9 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM9 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=10 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM10 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=11 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM11 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=12 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM12 ,
		sum( case  when ( DG.DocTypeCode <> 1 ) then (D.Debt - D.Credit) else 0 end ) as allsum 


FROM         Acc.Documents D INNER JOIN
                      Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                      D.CompanyCode = DG.CompanyCode
WHERE 	(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',') )) AND
		(DG.YearId  BETWEEN  @FromYearID AND  @ToYearID  ) AND		
		(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	    (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
		(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
		(D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) 
GROUP BY DG.YearID,LEFT(D.TopicCode, @LenPrvAccCode) ,LEFT(D.TopicCode,@LenAccCode) 
HAVING       (LEFT(D.TopicCode, @LenAccCode) BETWEEN @AccCodeFrom AND @AccCodeTo )
)

 
GO

CREATE  FUNCTION [Acc].[AccComparisonMonthCTopics2Balance] 	(@DocTypeCode1_Not varchar(150)='' ,
					@DocTypeCode2_Not integer=[-1]   ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=2147483647 ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=2147483647 , 
						@CTopicCode2From Varchar(12)=[0],  @CTopicCode2To Varchar(12)=2147483647 ,
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=2147483647 , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=2147483647, 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=2147483647 ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' , @Miladi int=0, 
						@FromYearID integer ,@ToYearID integer )
RETURNS table AS  
return
(
SELECT  	D.TopicCode, D.CTopicCode2 , Acc.Categories.MoeenName_L1 , Acc.Categories.MoeenName_L2 , 
		case D.CTopicCode2 when 0 Then moeenname_L1  else CTopicName2_L1 end as CTopicName2_L1 , 
		case D.CTopicCode2 when 0 Then moeenname_L2  else CTopicName2_L2 end as CTopicName2_L2 ,		
		sum( case DG.DocTypeCode when 1 then D.Debt - D.Credit else 0 end ) as BalanceLastYear ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 1 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM1 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 2 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM2 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 3 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM3 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  ) = 4 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM4 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 5 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM5 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 6 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM6 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 7 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM7 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 8 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM8 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 9 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM9 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=10 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM10 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=11 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM11 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=12 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM12 ,
		sum( case  when ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as ALLSum	


FROM         Acc.Documents D Left OUTER JOIN
                      Acc.CenterTopics2 ON D.CTopicCode2 = Acc.CenterTopics2.CTopicCode2 LEFT OUTER JOIN
                      Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT OUTER JOIN
                      Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND 
                      D.CompanyCode = DG.CompanyCode

WHERE     	
			(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,','))) AND
			(DG.YearID BETWEEN @FromYearID AND @ToYearID) AND 
		    (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	        (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		    (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
		    (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
		    (D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo) 
		    

GROUP BY 	D.TopicCode, D.CTopicCode2, Acc.Categories.MoeenName_L1 , Acc.CenterTopics2.CTopicName2_L1,Acc.Categories.MoeenName_L2 , Acc.CenterTopics2.CTopicName2_L2

HAVING      	(D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )  AND 
          		(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo)
)

  
  

GO

CREATE FUNCTION [Acc].[AccComparisonMonthCTopicsBalance] 	(@DocTypeCode1_Not varchar(150)='' ,
					@DocTypeCode2_Not integer=[-1]   ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=2147483647 ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=2147483647 , 
						@CTopicCodeFrom Varchar(12)=[0],  @CTopicCodeTo Varchar(12)=2147483647 ,
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=2147483647 , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=2147483647, 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=2147483647 ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' , @Miladi int=0, 
						@FromYearID integer ,@ToYearID integer )
RETURNS table AS  
return
(
SELECT  	D.TopicCode, D.CTopicCode , Acc.Categories.MoeenName_L1 , Acc.Categories.MoeenName_L2 , 
		case D.CTopicCode when 0 Then moeenname_L1  else CTopicName_L1 end as CTopicName_L1 , 
		case D.CTopicCode when 0 Then moeenname_L2  else CTopicName_L2 end as CTopicName_L2 ,		
		sum( case DG.DocTypeCode when 1 then D.Debt - D.Credit else 0 end ) as BalanceLastYear ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 1 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM1 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 2 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM2 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 3 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM3 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  ) = 4 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM4 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 5 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM5 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 6 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM6 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 7 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM7 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 8 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM8 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 9 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM9 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=10 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM10 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=11 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM11 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=12 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM12 ,
		sum( case  when ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as ALLSum	


FROM         Acc.Documents D LEFT OUTER JOIN
                      Acc.CenterTopics ON D.CTopicCode = Acc.CenterTopics.CTopicCode LEFT OUTER JOIN
                      Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT OUTER JOIN
                      Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                      D.CompanyCode = DG.CompanyCode
WHERE     	
			(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,','))) AND
			(DG.YearID BETWEEN @FromYearID AND @ToYearID) AND 
		    (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	        (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		    (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
		    (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
		    (D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo) 
		    

GROUP BY 	D.TopicCode, D.CTopicCode, Acc.Categories.MoeenName_L1 , Acc.CenterTopics.CTopicName_L1,Acc.Categories.MoeenName_L2 , Acc.CenterTopics.CTopicName_L2

HAVING      	(D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo )  AND 
          		(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo)
)

  
  
  
GO

CREATE FUNCTION [Acc].[AccComparisonMonthDetailsBalance] 	
					(
						@DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1]  ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=2147483647 ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=2147483647 , 
						@CTopicCodeFrom Varchar(12)=[0],  @CTopicCodeTo Varchar(12)=2147483647,
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=2147483647, 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=2147483647 ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99',
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=2147483647  , 
						@miladi int =0  ,@FromYearID integer ,@ToYearID integer , @UserAdmin int=1 ,
						@UserID int=1 
					)
RETURNS table AS  
return
(
SELECT  DG.YearID,D.TopicCode, D.DetailCode, Acc.Categories.MoeenName_L1 , Acc.Categories.MoeenName_L2 , 
		case D.Detailcode when 0 Then moeenname_L1  else DetailName_L1 end as DetailName_L1 , 
		case D.Detailcode when 0 Then moeenname_L2  else DetailName_L2 end as DetailName_L2 ,		
		sum( case DG.DocTypeCode when 1 then D.Debt - D.Credit else 0 end ) as BalanceLastYear ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 1 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM1 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 2 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM2 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 3 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM3 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  ) = 4 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM4 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 5 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM5 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 6 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM6 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 7 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM7 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 8 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM8 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )= 9 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM9 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=10 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM10 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=11 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM11 ,
		sum( case  when ( abs( case when @Miladi=0 then   substring (DG.DocDate,6,2) else   MONTH(DocDateMiladi)  end  )=12 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM12 ,
                           sum( case  when ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as ALLSum
FROM    	Acc.Documents D Left OUTER JOIN
	             Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT OUTER JOIN
             		Acc.Details ON D.DetailCode = Acc.Details.DetailCode LEFT OUTER JOIN
	             Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
	             D.CompanyCode = DG.CompanyCode   CROSS JOIN acc.Config   
WHERE     	
		
		(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',') )) AND 
		(DG.YearId  BETWEEN @FromYearID  AND  @ToYearID  ) AND 
		(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	             (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
		(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
		(D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) 
		AND (( @UserAdmin = 1 ) OR ( UserIDFilter=0) OR( LevelID<>3) OR (((CHARINDEX(','+ltrim(@UserID)+',', ',' + Acc.Categories.UserRelated + ',') <> 0) ) )
		AND (((CHARINDEX(','+ltrim(@UserID)+',', ',' + Acc.Details.OperatorID + ',') <> 0) ) )		)

GROUP BY DG.YearID,D.TopicCode, D.DetailCode, Acc.Categories.MoeenName_L1 , Acc.Details.DetailName_L1 ,Acc.Categories.MoeenName_L2 , Acc.Details.DetailName_L2
HAVING      	(D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )  AND 
		(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo)
)

GO
 
CREATE FUNCTION [Acc].[AccDetailBookFORSomeYear]  (@DocdateFrom Varchar(10)='0001/01/01' , @DocdateTo Varchar(10)=[99/12/30]   )
RETURNS table  AS  
return ( SELECT        DG.Serial, D.ID, DG.CompanyCode,D.TopicCode AS AccCode, D.DetailCode, 
                     DG.SecondaryDocNo, DG.PrimaryDocNo, DG.DocDate, D.Comment_L1, D.AidDocNo, 
                     D.BudgetTopicID, D.ProjectID, D.AidDocdate, D.AidAmount, D.Debt, 
                     D.Credit, D.Debt - D.Credit AS balance,
                     D.Credit AS calcuBalance ,CASE D.debt WHEN 0 THEN '1' ELSE '0' END as BedBes,DG.Status
					 ,0 CurrencyType 
		,0 CurrencyCode 
		,'' CurrenciesName 
		,0.0 CurrencyDebit
		,0.0 CurrencyCredit
		,0.0 Currencybalance
FROM           Acc.Documents D INNER JOIN
                     Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                     D.CompanyCode = DG.CompanyCode
Where (Docdate BETWEEN @DocdateFrom AND @DocdateTo) and (DG.Status <> 0)
Union all
SELECT     0 AS Serial, 0 AS ID, D.CompanyCode AS CompanyCode, D.TopicCode AS AccCode, D.DetailCode AS DetailCode, 
                      0 AS SecondaryDocNo, 0 AS PrimaryDocNo, '0001/01/01' AS DocDate, ' ' AS Comment_L1, 0 AS AidDocNo, 0 AS BudgetTopicID, 0 AS ProjectID, 
                      ' ' AS AidDocdate, 0 AS AidAmount, SUM(D.Debt) AS Debt, SUM(D.Credit) AS Credit, SUM(D.Debt - D.Credit) 
                      AS balance, 0 AS calcuBalance, '0' AS BedBes, 0 AS Status
					  ,0 CurrencyType 
		,0 CurrencyCode 
		,'' CurrenciesName 
		,0.0 CurrencyDebit
		,0.0 CurrencyCredit
		,0.0 Currencybalance
FROM         Acc.Documents D INNER JOIN
                      Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                      D.CompanyCode = DG.CompanyCode
WHERE (DocDate <@DocdateFrom)  and (DG.Status <> 0)
GROUP BY D.CompanyCode, D.TopicCode, D.DetailCode

)
GO

CREATE FUNCTION [Acc].[AccTrialBalance]  -- Edit By Rezaei 1402/11/04 for Add Currency
						( 
							@LenPrvAccCode Varchar(4)=[1] , 
							@DocTypeCode1_Not varchar(150)='' ,
							@DocTypeCode2_Not integer  =[-1] ,
							@DocTypeCode3_Not integer=[-1] ,
							@DocTypeCodeFrom integer=[0] ,
							@DocTypeCodeTo integer  =[9999] ,
							@CompanyCodeFrom Varchar(12)=[0] ,
							@CompanyCodeTo Varchar(12)=2147483647 ,
							@LenAccCode Varchar(4)=[2], 
							@AccCodeFrom Varchar(18)=[0],  
							@AccCodeTo Varchar(18)=2147483647 , 
							@SecondaryDocNoFrom Varchar(12)=[0] ,
							@SecondaryDocNoTo Varchar(12)=2147483647, 
							@PrimaryDocNoFrom  Varchar(12)=[0], 
							@PrimaryDocNoTo Varchar(12)=2147483647 ,
							@DocDateFrom Varchar(10)='0001/01/01', 
							@DocDateTo  Varchar(10)='9999/99/99',
							@Status1 varchar(150)='', 
							@Status2  integer=[-1],
							@FromYearID integer , 
							@ToYearId integer, 
							@CTopicCode3From int=-214748364 , 
							@CTopicCode3To int=2147483647  ,
							@CurrencyTypeFrom  integer=0  , 
							@CurrencyTypeTo  integer=99999, 
							@CurrencyKind  integer=0
						)
RETURNS table AS  
return
(
		SELECT LEFT(D.TopicCode, @LenPrvAccCode) AS PrvTopicCode,
			   LEFT(D.TopicCode, @LenAccCode) AS TopicCode,
			   SUM(D.Debt) AS Debt,
			   SUM(D.Credit) AS Credit,
			   case
				 when SUM(D.Debt - D.Credit) > 0 then
				  SUM(D.Debt - D.Credit)
				 else
				  0
			   end AS BalanceDebt,
			   case
				 when SUM(D.Credit - D.Debt) > 0 then
				  SUM(D.Credit - D.Debt)
				 else
				  0
			   end AS BalanceCredit,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
			   case
				 when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				  SUM(D.CurrencyDebit - D.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
		       case
				 when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				  SUM(D.CurrencyCredit - D.CurrencyDebit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyCredit
		  -- end of currency 
		  FROM Acc.Documents D
			   INNER JOIN Acc.DocGroups DG 
					ON D.Serial = DG.Serial
				   AND D.YearID = DG.YearID
				   AND D.CompanyCode = DG.CompanyCode
		      left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		 WHERE ((CASE
				 WHEN @DocTypeCode1_Not = '' THEN
				  1
				 ELSE
				  0
			   END) = 1 OR
			   (DG.DocTypeCode in
			   (Select part From acc.SplitString (@DocTypeCode1_Not, ','))))
		   AND (DG.YearID BETWEEN @FromYearID AND @ToYearID)
		   AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND  @SecondaryDocNoTo)
		   AND (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)
		   AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo)
		   AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND  @CompanyCodeTo)
		   AND ((CASE
				 WHEN @Status1 = '' THEN
				  1
				 ELSE
				  0
			   END = 1 AND (DG.Status <> 0)) OR
			   (DG.Status in
			   (Select part From Acc.SplitString(@Status1, ','))))
		   AND (LEFT(D.TopicCode, @LenAccCode) BETWEEN @AccCodeFrom AND   @AccCodeTo)
		   AND (D.CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To)
		   AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		 GROUP BY
			LEFT(D.TopicCode, @LenPrvAccCode),
			LEFT(D.TopicCode, @LenAccCode),
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 


--HAVING       (LEFT(D.TopicCode, @LenAccCode) BETWEEN @AccCodeFrom AND @AccCodeTo )
)
GO
CREATE FUNCTION Acc.AccTrialBalanceFin     (@LenPrvAccCode Varchar(4)=[1] , 
					@DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1] ,@DocTypeCode3_Not integer=[-1] ,
					@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
					@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=2147483647 ,
					@LenAccCode Varchar(4)=[2], @AccCodeFrom Varchar(18)=[0],  @AccCodeTo Varchar(18)=2147483647 , 
					@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=2147483647, 
					@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=2147483647 ,
					@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99'
                    ,@Status1 varchar(150)='', @Status2  integer=[-1],@FromYearID integer , @ToYearId integer
					, @CTopicCode3From int=-214748364 , @CTopicCode3To int=2147483647  ,
							@CurrencyTypeFrom  integer=0  , 
							@CurrencyTypeTo  integer=99999, 
							@CurrencyKind  integer=0)
RETURNS table AS  
return
(
SELECT     LEFT(max(D.TopicCode), @LenPrvAccCode) AS PrvTopicCode, f.FinancialName_L2  AS TopicCode,
		 SUM(D.Debt) AS Debt, SUM(D.Credit) AS Credit ,
		 case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
		 case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit 
			   -- for currency 
			   ,case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
			   case
				 when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				  SUM(D.CurrencyDebit - D.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
		       case
				 when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				  SUM(D.CurrencyCredit - D.CurrencyDebit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyCredit
		  -- end of currency 

FROM         Acc.Documents D INNER JOIN
                      Acc.DocGroups Dg ON D.Serial = Dg.Serial AND D.YearID = Dg.YearID AND     
                      D.CompanyCode = Dg.CompanyCode
					  join   Acc.Categories C On C.TopicCode = D.TopicCode
					  join acc.financialtopicsforuse F ON F.FinancialCode = c.FinancialID
		      left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
WHERE  
((CASE  WHEN @DocTypeCode1_Not = '' THEN 1 ELSE 0 END) = 1 OR
          (Dg.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',') )))
		  AND
		  (Dg.YearID  BETWEEN @FromYearID  AND  @ToYearID  )
		  AND
		  (Dg.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	      (Dg.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) 
		  AND (Dg.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) 
		  AND (Dg.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
		  AND   ((CASE  WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 AND (Dg.Status <> 0)) OR  (Dg.Status in (Select part From [Acc].[SplitString] (@Status1,','))))
		  --AND  (LEFT(D.TopicCode, @LenAccCode) BETWEEN @AccCodeFrom AND @AccCodeTo )
		  AND (D.CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To )


GROUP BY f.FinancialName_L2 ,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 

--HAVING       (LEFT(Acc.Documents.TopicCode, @LenAccCode) BETWEEN @AccCodeFrom AND @AccCodeTo )
)


GO


CREATE  FUNCTION [Acc].[AccTrialBalance_SomeColumn] 
						(
							@LenPrvAccCode		Varchar(4)=[1] , 
							@DocTypeCode1_Not	integer=[-1] ,
							@DocTypeCode2_Not	integer  =[-1] ,
							@DocTypeCode3_Not	integer=[-1] ,
							@DocTypeCodeFrom	integer=[0] ,
							@DocTypeCodeTo		integer  =[9999] ,
							@CompanyCodeFrom	Varchar(12)=[0] ,
							@CompanyCodeTo		Varchar(12)=2147483647 ,
							@LenAccCode			Varchar(4)=[2], 
							@AccCodeFrom		Varchar(12)=[0],  
							@AccCodeTo			Varchar(12)=2147483647 , 
							@SecondaryDocNoFrom Varchar(12)=[0] ,
							@SecondaryDocNoTo	Varchar(12)=2147483647, 
							@PrimaryDocNoFrom	Varchar(12)=[0], 
							@PrimaryDocNoTo		Varchar(12)=2147483647 ,
							@DocDateFrom		Varchar(10)='0001/01/01', 
							@DocDateTo			Varchar(10)='9999/99/99',
							@CurrencyTypeFrom	integer=0  , 
							@CurrencyTypeTo		integer=999, 
							@CurrencyKind		integer=0
					    )
RETURNS table AS  
return
(
		SELECT LEFT(D.TopicCode, @LenPrvAccCode) AS PrvTopicCode,
			   LEFT(D.TopicCode, @LenAccCode) AS TopicCode,
			   SUM(D.Debt) AS Debt,
			   SUM(D.Credit) AS Credit,
			   case
				 when SUM(D.Debt - D.Credit) > 0 then
				  SUM(D.Debt - D.Credit)
				 else
				  0
			   end AS BalanceDebt,
			   case
				 when SUM(D.Credit - D.Debt) > 0 then
				  SUM(D.Credit - D.Debt)
				 else
				  0
			   end AS BalanceCredit,
		-- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
			   case
				 when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				  SUM(D.CurrencyDebit - D.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
		       case
				 when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				  SUM(D.CurrencyCredit - D.CurrencyDebit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyCredit
		  -- end of currency 
	  FROM Acc.Documents D
			INNER JOIN Acc.DocGroups DG 
				ON D.Serial = DG.Serial
				AND D.YearID = DG.YearID
				AND D.CompanyCode = DG.CompanyCode
			left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
	 WHERE (DG.DocTypeCode <> (@DocTypeCode1_Not) AND
		   DG.DocTypeCode <> @DocTypeCode2_Not)
	   AND (DG.DocTypeCode <> @DocTypeCode3_Not)
	   AND (DG.DocTypeCode BETWEEN @DocTypeCodeFrom AND
		   @DocTypeCodeTo)
	   AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND
		   @SecondaryDocNoTo)
	   AND (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND
		   @PrimaryDocNoTo)
	   AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo)
	   AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND
		   @CompanyCodeTo)
	 GROUP BY
	  LEFT(D.TopicCode, @LenPrvAccCode),
	  LEFT(D.TopicCode, @LenAccCode),
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
	HAVING(
	  LEFT(D.TopicCode, @LenAccCode) BETWEEN @AccCodeFrom AND @AccCodeTo)

)



GO

CREATE FUNCTION [Acc].[AccTrialCTopicsBalance] -- Edit By Rezaei 1402/11/04 for Add Currency
				(
					@DocTypeCode1_Not varchar(150)='' ,
					@DocTypeCode2_Not integer = [-1], 
					@DocTypeCode3_Not integer=[-1]  ,
					@DocTypeCodeFrom integer=[0] ,
					@DocTypeCodeTo integer  =[9999] ,
					@CompanyCodeFrom Varchar(12)=[0] ,
					@CompanyCodeTo Varchar(12)=2147483647 ,
					@AccCodeFrom Varchar(12)=[0],  
					@AccCodeTo Varchar(12)=2147483647 , 
					@CTopicCodeFrom Varchar(12)=[0],  
					@CTopicCodeTo Varchar(12)=[2147483647] , 
					@SecondaryDocNoFrom Varchar(12)=[0] ,
					@SecondaryDocNoTo Varchar(12)=2147483647, 
					@PrimaryDocNoFrom  Varchar(12)=[0], 
					@PrimaryDocNoTo Varchar(12)=2147483647 ,
					@DocDateFrom Varchar(10)='0001/01/01', 
					@DocDateTo  Varchar(10)='9999/99/99',
                    @Status1 varchar(150)='', @Status2  integer=[-1],
					@FromYearID integer,@ToYearID integer,
			        @CurrencyTypeFrom  integer=0  , 
					@CurrencyTypeTo  integer=99999, 
					@CurrencyKind  integer=0 
				 )

RETURNS table AS  
return
(
SELECT DG.YearID,
       D.TopicCode,
       D.CTopicCode,
       C.MoeenName_L1,
       C.MoeenName_L2,
       case D.CTopicCode
         when 0 Then
          moeenname_L1
         else
          CTopicName_L1
       end as CTopicName_L1,
       case D.CTopicCode
         when 0 Then
          moeenname_L2
         else
          CTopicName_L2
       end as CTopicName_L2,
       SUM(D.Debt) AS Debt,
       SUM(D.Credit) AS Credit,
       case
         when SUM(D.Debt - D.Credit) > 0 then
          SUM(D.Debt - D.Credit)
         else
          0
       end AS BalanceDebt,
       case
         when SUM(D.Credit - D.Debt) > 0 then
          SUM(D.Credit - D.Debt)
         else
          0
       end AS BalanceCredit,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
			   case
				 when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				  SUM(D.CurrencyDebit - D.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
		       case
				 when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				  SUM(D.CurrencyCredit - D.CurrencyDebit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyCredit
		  -- end of currency 
  FROM Acc.Documents D
		LEFT OUTER JOIN Acc.CenterTopics CT
			ON D.CTopicCode = CT.CTopicCode
		LEFT OUTER JOIN Acc.Categories C
			ON D.TopicCode = C.TopicCode
		LEFT OUTER JOIN Acc.DocGroups DG
			ON D.Serial = DG.Serial
			AND D.YearID = DG.YearID
			AND D.CompanyCode = DG.CompanyCode
		left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID

 WHERE (DG.YearID BETWEEN @FromYearID AND @ToYearID)
   AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo)
   AND (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)
   AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo)
   AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo)
   AND ((CASE
         WHEN @Status1 = '' THEN
          1
         ELSE
          0
       END = 1 AND (DG.Status <> 0)) OR
       DG.Status in
       (Select part From Acc.SplitString (@Status1, ',')))
   AND ((CASE
         WHEN @DocTypeCode1_Not = '' THEN
          1
         ELSE
          0
       END) = 1 OR
       DG.DocTypeCode in
       (Select part From Acc.SplitString (@DocTypeCode1_Not, ',')))
	   AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
 GROUP BY DG.YearID,
          D.TopicCode,
          D.CTopicCode,
          C.MoeenName_L1,
          CT.CTopicName_L1,
          C.MoeenName_L2,
          CT.CTopicName_L2,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 

HAVING  (D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo) 
		AND (D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo)

)


 
GO

CREATE FUNCTION [Acc].[AccTrialCTopicsBalance_Details] -- Edit By Rezaei 1402/11/04 for Add Currency
				(
					@DocTypeCode_Not varchar(150)='-1',
						@CompanyCodeFrom INT =[0] ,@CompanyCodeTo INT =2147483647 ,
						@AccCodeFrom BIGINT =[0], @AccCodeTo BIGINT =2147483647 , 
						@CTopicCodeFrom INT =[0], @CTopicCodeTo INT =2147483647 , 
						@DetailCodeFrom INT = [0], @DetailCodeTo INT = [2000000000] ,
						@SecondaryDocNoFrom INT =[0] ,@SecondaryDocNoTo INT =2147483647, 
						@PrimaryDocNoFrom  INT =[0], @PrimaryDocNoTo INT =2147483647 ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99',
                        @Status varchar(150)='-1', @FromYearID INT = [50], @ToYearID INT = [99],
			         @CurrencyTypeFrom  integer=0  , @CurrencyTypeTo  integer=99999, @CurrencyKind  integer=0 
				)

RETURNS TABLE AS  
RETURN
(
SELECT D.TopicCode,
       D.CTopicCode,
       D.DetailCode,
       C.MoeenName_L1,
       C.MoeenName_L2,
       C.MoeenName_L1 + ' - ' + DE.DetailName_L1 +
       ' - ' + CT.CTopicName_L1 AS Name,
       C.MoeenName_L2 + ' - ' + DE.DetailName_L2 +
       ' - ' + CT.CTopicName_L2 AS Name_L2,
       DE.DetailName_L1 AS DetailName,
       DE.DetailName_L2 AS DetailName_L2,
       CT.CTopicName_L1 AS CTopicName,
       CT.CTopicName_L2 AS CTopicName_L2,
       SUM(D.Debt) AS Debt,
       SUM(D.Credit) AS Credit,
       CASE
         WHEN SUM(D.Debt - D.Credit) > 0 THEN
          SUM(D.Debt - D.Credit)
         ELSE
          0
       END AS BalanceDebt,
       CASE
         WHEN SUM(D.Credit - D.Debt) > 0 THEN
          SUM(D.Credit - D.Debt)
         ELSE
          0
       END AS BalanceCredit ,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
			   case
				 when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				  SUM(D.CurrencyDebit - D.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
		       case
				 when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				  SUM(D.CurrencyCredit - D.CurrencyDebit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyCredit
		  -- end of currency 
	FROM Acc.Documents D
		INNER JOIN Acc.Categories C ON D.TopicCode = C.TopicCode
		INNER JOIN Acc.Details DE  ON D.DetailCode = DE.DetailCode --AND D. = DE.CompanyCode 
		INNER JOIN Acc.CenterTopics CT  ON D.CTopicCode = CT.CTopicCode
		INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial
				AND D.YearID = DG.YearID
				AND D.CompanyCode = DG.CompanyCode
		left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID

 WHERE (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND   @SecondaryDocNoTo)
   AND (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND   @PrimaryDocNoTo)
   AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo)
   AND (D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo)
   AND (D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo)
   AND (D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo)
   AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND   @CompanyCodeTo)
   AND (DG.YearID BETWEEN @FromYearID AND @ToYearID)
   AND ((CASE
         WHEN @Status = '-1' THEN
          1
         ELSE
          0
       END = 1 AND (DG.Status <> 0)) OR
       DG.Status in
       (Select part From .SplitString (@Status, ',')))
   AND ((CASE
         WHEN @DocTypeCode_Not = '-1' THEN
          1
         ELSE
          0
       END) = 1 OR
       DG.DocTypeCode in
       (Select part From .SplitString (@DocTypeCode_Not, ',')))
	AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
 GROUP BY D.TopicCode,
          D.CTopicCode,
          D.DetailCode,
          C.MoeenName_L1,
          C.MoeenName_L2,
          C.MoeenName_L1,
          DE.DetailName_L1,
          CT.CTopicName_L1,
          C.MoeenName_L2,
          DE.DetailName_L2,
          CT.CTopicName_L2,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
		  )

GO

CREATE FUNCTION [Acc].[AccTrialCTopicsBalance2] -- Edit By Rezaei 1402/11/04 for Add Currency
					(
						@DocTypeCode1_Not varchar(150)='' ,
						@DocTypeCode2_Not integer  =[-1] ,
						@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,
						@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,
						@CompanyCodeTo Varchar(12)=2147483647 ,
						@AccCodeFrom Varchar(12)=[0],  
						@AccCodeTo Varchar(12)=2147483647 , 
						@CTopicCode2From Varchar(12)=[0],  
						@CTopicCode2To Varchar(12)=2147483647 , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,
						@SecondaryDocNoTo Varchar(12)=2147483647, 
						@PrimaryDocNoFrom  Varchar(12)=[0], 
						@PrimaryDocNoTo Varchar(12)=2147483647 ,
						@DocDateFrom Varchar(10)='0001/01/01', 
						@DocDateTo  Varchar(10)='9999/99/99' ,
                        @Status1 varchar(150)='' , 
						@Status2  integer=[-1],
						@FromYearID integer ,
						@ToYearID integer ,
						@CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0  
					)

RETURNS table AS  
return
(
	SELECT	DG.YearID,
			D.TopicCode, D.CTopicCode2 as CTopicCode , 
			Acc.Categories.MoeenName_L1 , 
			Acc.Categories.MoeenName_L2 , 
			case D.CTopicCode2 when 0 Then moeenname_L1  else CTopicName2_L1 end as CTopicName_L1 , 
			case D.CTopicCode2 when 0 Then moeenname_L2  else CTopicName2_L2 end as CTopicName_L2 ,		
			SUM(D.Debt) AS Debt,
			SUM(D.Credit) AS Credit,
			case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
			case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit ,
			-- for currency 
			case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			case 
				when @CurrencyKind = 0 then 0 
				else SUM(D.CurrencyDebit) 
			END AS CurrencyDebit,
			case 
				when @CurrencyKind = 0 then 0 
				else SUM(D.CurrencyCredit)  
			END AS CurrencyCredit,
			case 
				when @CurrencyKind = 0 then 0 
				else 
			case
				when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				SUM(D.CurrencyDebit - D.CurrencyCredit)
				else
				0
			end  
			END AS BalanceCurrencyDebit,
			case 
				when @CurrencyKind = 0 then 0 
				else 
		    case
				when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				SUM(D.CurrencyCredit - D.CurrencyDebit)
				else
				0
			end  
			END AS BalanceCurrencyCredit
		  -- end of currency 
	FROM	Acc.Documents D 
			Left OUTER JOIN Acc.CenterTopics2 ON D.CTopicCode2 = Acc.CenterTopics2.CTopicCode2 
			LEFT OUTER JOIN Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode 
			LEFT OUTER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
							AND D.YearID = DG.YearID 
							AND D.CompanyCode = DG.CompanyCode
			left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
	WHERE   (CASE WHEN  @DocTypeCode1_Not = '' THEN 1 ELSE 0 END = 1 OR 	
			(DG.DocTypeCode in (Select Part from [Acc].[SplitString] (@DocTypeCode1_Not,',')))) AND
			(DG.YearId  BETWEEN  @FromYearID AND  @ToYearID  ) AND 
			(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
			(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
			(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
			(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo)  AND
			((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 AND (DG.Status <> 0)) OR
			(DG.Status in (Select Part from [Acc].[SplitString] (@Status1,',')))) 
			AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
	GROUP BY	DG.YearID,D.TopicCode, 
				D.CTopicCode2, 
				Acc.Categories.MoeenName_L1 , 
				Acc.CenterTopics2.CTopicName2_L1,
				Acc.Categories.MoeenName_L2 , 
				Acc.CenterTopics2.CTopicName2_L2,
				case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
	HAVING    (D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )  
			AND (D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo) 

)


GO

CREATE FUNCTION [Acc].[AccTrialCTopics2Balance_CTopics] -- Edit By Rezaei 1402/11/04 for Add Currency
				(
					@DocTypeCode_Not varchar(150)='-1' ,
					@CompanyCodeFrom INT=[0] ,@CompanyCodeTo INT=2147483647 ,
					@AccCodeFrom INT=[0],  @AccCodeTo INT=2147483647 , 
					@DetailCodeFrom INT=[0],  @DetailCodeTo INT=2147483647 , 
					@CTopicCodeFrom INT=[0],  @CTopicCodeTo INT=2147483647 ,
					@CTopicCode2From INT=[0],  @CTopicCode2To INT=2147483647 , 
					@SecondaryDocNoFrom INT=[0] ,@SecondaryDocNoTo INT=2147483647, 
					@PrimaryDocNoFrom INT=[0], @PrimaryDocNoTo INT=2147483647 ,
					@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
                    @Status varchar(150)='-1', @FromYearID INT ,@ToYearID INT,
			        @CurrencyTypeFrom  integer=0  , 
					@CurrencyTypeTo  integer=99999, 
					@CurrencyKind  integer=0  ,
					@CTopicCode3From INT=[0],  @CTopicCode3To INT=2147483647
				)

RETURNS table AS  
return
(
	SELECT  D.TopicCode ,  
			D.DetailCode ,  
			D.CTopicCode , 
			Categories.MoeenName_L1,
            D.CTopicCode2 ,		   
			Categories.MoeenName_L1 + '-'  + Details.DetailName_L1+' - ' +CenterTopics.CTopicName_L1 + '-' +  +  CenterTopics2.CTopicName2_L1 AS _Name, 
            Categories.MoeenName_L2 + '-' + Details.DetailName_L2 + '-' +  CenterTopics.CTopicName_L2 + '-' +    CenterTopics2.CTopicName2_L2 AS Name_L2,
            SUM( D.Debt) AS Debt, 
			SUM( D.Credit) AS Credit,
            CASE WHEN SUM(D.Debt - D.Credit) > 0 THEN SUM(D.Debt - D.Credit) ELSE 0 END AS BalanceDebt,
            CASE WHEN SUM(D.Credit - D.Debt) > 0 THEN SUM(D.Credit - D.Debt) ELSE 0 END AS BalanceCredit,
			-- for currency 
			case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			case 
				when @CurrencyKind = 0 then 0 
				else SUM(D.CurrencyDebit) 
			END AS CurrencyDebit,
			case 
				when @CurrencyKind = 0 then 0 
				else SUM(D.CurrencyCredit)  
			END AS CurrencyCredit,
			case 
				when @CurrencyKind = 0 then 0 
				else 
			case
				when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				SUM(D.CurrencyDebit - D.CurrencyCredit)
				else
				0
			end  
			END AS BalanceCurrencyDebit,
			case 
				when @CurrencyKind = 0 then 0 
				else 
		    case
				when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				SUM(D.CurrencyCredit - D.CurrencyDebit)
				else
				0
			end  
			END AS BalanceCurrencyCredit
			-- end of currency 
	FROM    Acc.Documents AS D 
            INNER JOIN Acc.CenterTopics2 AS CenterTopics2 ON D.CTopicCode2 = CenterTopics2.CTopicCode2 
            INNER JOIN Acc.CenterTopics AS CenterTopics ON D.CTopicCode = CenterTopics.CTopicCode 
            INNER JOIN Acc.Categories AS Categories ON D.TopicCode = Categories.TopicCode 
            INNER JOIN Acc.Details AS Details ON D.DetailCode = Details.DetailCode 
            INNER JOIN Acc.DocGroups AS DocGroups ON D.Serial = DocGroups.Serial 
									AND D.CompanyCode = DocGroups.CompanyCode 
									AND D.YearID = DocGroups.YearID
			left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
	WHERE  (DocGroups.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo )
            AND ( DocGroups.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo )
            AND ( DocGroups.DocDate BETWEEN  @DocDateFrom AND @DocDateTo )
            AND ( D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo ) 
            AND ( D.DetailCode BETWEEN @DetailCodeFrom  AND @DetailCodeTo )  
            AND ( D.CTopicCode BETWEEN @CtopicCodeFrom AND @CtopicCodeTo )
            AND ( D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )                
            AND ( D.CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To )                
            AND ( D.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo )                
            AND ( DocGroups.YearID BETWEEN @FromYearID AND @ToYearID)
            AND (
				(CASE  WHEN @Status = '-1' THEN 1 ELSE 0 END = 1 and (DocGroups.Status <> 0)) OR
				DocGroups.Status in (Select part From [Acc].[SplitString] (@Status,','))
				)
			AND (
				(CASE  WHEN @DocTypeCode_Not = '-1' THEN 1 ELSE 0 END) = 1 OR
				DocGroups.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode_Not,','))
				)
	GROUP BY   D.CTopicCode,  D.CTopicCode2,  D.TopicCode,  D.DetailCode, 
				Categories.MoeenName_L1, CenterTopics.CTopicName_L1, Details.DetailName_L1,  CenterTopics2.CTopicName2_L1,
				Categories.MoeenName_L2, CenterTopics.CTopicName_L2, Details.DetailName_L2, CenterTopics2.CTopicName2_L2,
				case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
)


GO

CREATE FUNCTION Acc.AccTrialDetailsBalance 	-- Edit By Rezaei 1402/11/04 for Add Currency
				(
					@DocTypeCode1_Not varchar(150)='' ,
					@DocTypeCode2_Not integer  =[-1]  ,
					@DocTypeCode3_Not integer=[-1]  ,
					@DocTypeCodeFrom integer=[0] ,
					@DocTypeCodeTo integer  =[9999] ,
					@CompanyCodeFrom Varchar(12)=[0] ,
					@CompanyCodeTo Varchar(12)=2147483647 ,
					@AccCodeFrom Varchar(12)=[0],  
					@AccCodeTo Varchar(12)=2147483647 , 
					@DetailCodeFrom Varchar(12)=[0],  
					@DetailCodeTo Varchar(12)=2147483647 , 
					@SecondaryDocNoFrom Varchar(12)=[0] ,
					@SecondaryDocNoTo Varchar(12)=2147483647, 
					@PrimaryDocNoFrom  Varchar(12)=[0], 
					@PrimaryDocNoTo Varchar(12)=2147483647 ,
					@DocDateFrom Varchar(10)='0001/01/01', 
					@DocDateTo  Varchar(10)='9999/99/99' ,
                    @Status1 varchar(150)='', 
					@Status2  integer=[-1],
					@FromYearID integer , 
					@ToYearID integer,
					@GroupOnCompany tinyint = 0 , 
					@CTopicCode3From int=-214748364 , 
					@CTopicCode3To int=2147483647 ,
			        @CurrencyTypeFrom  integer=0  , 
					@CurrencyTypeTo  integer=99999, 
					@CurrencyKind  integer=0 
				)

RETURNS table AS  
return
(
SELECT  D.TopicCode, D.DetailCode, C.MoeenName_L1 , C.MoeenName_L2 , 
		    case D.Detailcode when 0 Then C.moeenname_L1  else DetailName_L1 end as DetailName_L1 , 
		    case D.Detailcode when 0 Then C.moeenname_L2  else DetailName_L2 end as DetailName_L2 ,		
		    SUM(D.Debt) AS Debt,SUM(D.Credit) AS Credit, Dt.Mobile,
		    case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
		    case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit ,
	      CASE when CF.ActivePartCompany =1 THEN    DG.CompanyCode ELSE 1 END AS CompanyCode, Dt.CustAccountNumber, Dt.ManageName, Dt.BankName, Dt.PaymentCode
		  ,
		  			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
			   case
				 when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				  SUM(D.CurrencyDebit - D.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
		       case
				 when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				  SUM(D.CurrencyCredit - D.CurrencyDebit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyCredit
		  -- end of currency 
FROM    acc.Documents D  LEFT OUTER JOIN
            acc.Categories C ON D.TopicCode = C.TopicCode LEFT OUTER JOIN
            Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
            D.CompanyCode = DG.CompanyCode CROSS JOIN Acc.Config CF
			LEFT OUTER JOIN acc.Details Dt ON
             D.DetailCode = Dt.DetailCode 
			--AND  D. = CASE when CF.ActivePartCompany =1 THEN    DG.CompanyCode ELSE 1 END 
		left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID 
WHERE ( (@DocTypeCode1_Not = '') OR DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',')))
		     AND (DG.YearID  BETWEEN @FromYearID  AND  @ToYearID  ) 
		     AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) 
	         AND (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)
		     AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) 
		     AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
		     AND (D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )   
		     AND (D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo)
		     AND ( (@Status1 = '' and (DG.Status <> 0)) OR (DG.Status IN (Select part From [Acc].[SplitString] (@Status1,','))) )
			 AND (D.CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To )
			 AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
GROUP BY D.TopicCode, D.DetailCode, C.MoeenName_L1 , Dt.DetailName_L1 ,
           C.MoeenName_L2 , Dt.DetailName_L2, Dt.Mobile, CASE when CF.ActivePartCompany =1 THEN    DG.CompanyCode ELSE 1 END,
		   Dt.CustAccountNumber, Dt.ManageName, Dt.BankName,Dt.PaymentCode,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
		   )


GO
 
CREATE FUNCTION [Acc].[AnalyzeAccBooks]	 	-- Edit By Rezaei 1402/11/04 for Add Currency
				(
						@DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1]  ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=[214748364799] , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99'  ,
						@TopicCodeFrom Varchar(12)=[0],  @TopicCodeTo Varchar(12)=[214748364799] ,
						@CTopicCodeFrom Varchar(12)=[0],  @CTopicCodeTo Varchar(12)=[214748364799] ,
						@CTopicCode2From Varchar(12)=[0],  @CTopicCode2To Varchar(12)=[214748364799] ,
						@LenAcc1 integer=[4] ,@LenAcc2 integer  =[0]  ,@LenAcc3 integer=[0]  ,@LenAcc4 integer=[0] ,@LenAcc5 integer  =[0]  ,@LenAcc6 integer=[0]  ,
						@LenCompany1 integer=[0] ,@LenCompany2 integer  =[0]  ,@LenCompany3 integer=[0]  ,
						@LenCTopic1  integer=[0] ,@LenCTopic2  integer  =[0]  ,@LenCTopic3  integer=[0]  ,
						@LenCTopic2_1 integer=[0] ,@LenCTopic2_2 integer  =[0]  ,@LenDetailCode integer=[0] ,
                        @TopicCode1From integer=[0],  @TopicCode1To integer=[21474836479] , 
			    	    @TopicCode2From integer=[0],  @TopicCode2To integer=[21474836479] , 
				    	@TopicCode3From integer=[0],  @TopicCode3To integer=[99999] , 
					    @TopicCode4From integer=[0],  @TopicCode4To integer=[99999] , 
			     		@TopicCode5From integer=[0],  @TopicCode5To integer=[21474836479] , 
				    	@TopicCode6From integer=[0],  @TopicCode6To integer=[21474836479] , 
					    @CompanyCode1From integer=[0] ,@CompanyCode1To integer=[21474836479] ,
			    		@CompanyCode2From integer=[0] ,@CompanyCode2To integer=[214748364799] ,
				     	@CompanyCode3From integer=[0] ,@CompanyCode3To integer=[2147483647] ,
                        @DetailCode1From integer=[0]  , @DetailCode1To integer=[214748364799],
						@CTopicCode_1From integer=[0],  @CTopicCode_1To integer=[2147483647] ,
						@CTopicCode_2From integer=[0],  @CTopicCode_2To integer=[2147483647] ,
						@CTopicCode_3From integer=[0],  @CTopicCode_3To integer=[2147483647] ,
						@CTopicCode2_1From integer=[0],  @CTopicCode2_1To integer=[2147483647] ,
						@CTopicCode2_2From integer=[0],  @CTopicCode2_2To integer=[21474836479] ,
                        @Status1 varchar(150)='', 
						@Status2  integer=[-1],
						@FromYearID integer=88 ,
						@ToYearID integer=88 ,
			            @CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0 
					)
RETURNS table AS 
 return (
	select  ROW_NUMBER() OVER ( 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id  ) as _row,
			YearID,
			serial,
			id,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			Comment_L2,
			Debt,
			CompanyCode,
			Credit,
			SUM(Balance) over ( order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningBalance,
		--	balance,
		--	calcuBalance,
			AidDocNo,
			AidAmount,
			AidDocdate,
			BudgetTopicID,
			ProjectID,
			TopicCode1,
			TopicCode2,
			TopicCode3,
			TopicCode4,
			TopicCode5,
			TopicCode6,
			DetailCode,
			CompanyCode1,
			CompanyCode2,
			CompanyCode3,
			CTopicCode1,
			CTopicCode2,
			CTopicCode3,
			CTopicCode2_1,
			CTopicCode2_2,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			SUM(Currencybalance) over ( 
					order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningCurrencyBalance 
	from(
	SELECT	DG.YearID,
			0 as serial  ,
			0 as id,
			0 as  SecondaryDocNo,
			0 as  PrimaryDocNo,
			'01/01' as  DocDate,
			'مجموع مانده از قبل  ' as  Comment_L1,
			'' as Comment_L2,
			sum(D.Debt) as  Debt, 
			0 as CompanyCode, 
			sum(D.Credit) as Credit , 
			sum(Debt-Credit) as balance ,
			0 as calcuBalance ,0 as  AidDocNo,0 as  AidAmount,'' as  AidDocdate,0 as  BudgetTopicID ,0 as ProjectID ,
			left(D.TopicCode,@LenAcc1) as TopicCode1 ,left(D.TopicCode,@LenAcc2) as TopicCode2 ,
			left(D.TopicCode,@LenAcc3) as TopicCode3 ,left(D.TopicCode,@LenAcc4) as TopicCode4 ,
			left(D.TopicCode,@LenAcc5) as TopicCode5 ,left(D.TopicCode,@LenAcc6) as TopicCode6 ,
			left(D.DetailCode,@LenDetailCode)  AS DetailCode, 
			left(DG.CompanyCode,@LenCompany1) CompanyCode1 , left(DG.CompanyCode,@LenCompany2) CompanyCode2 , 
			left(DG.CompanyCode,@LenCompany3) CompanyCode3 , 
			left(D.CTopicCode,@LenCTopic1) as CTopicCode1 , left(D.CTopicCode,@LenCTopic2) as CTopicCode2 , left(D.CTopicCode,@LenCTopic3) as CTopicCode3 , 
			left(D.CTopicCode2,@LenCTopic2_1) as CTopicCode2_1, 
			left(D.CTopicCode2,@LenCTopic2_2) as CTopicCode2_2,
			-- for currency 
				   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
				   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
				   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
				   case 
						when @CurrencyKind = 0 then 0 
						else SUM(D.CurrencyDebit) 
				   END AS CurrencyDebit,
				   case 
						when @CurrencyKind = 0 then 0 
						else SUM(D.CurrencyCredit)  
				   END AS CurrencyCredit,
				   case 
					 when @CurrencyKind = 0 then 0 
					 else SUM(D.CurrencyDebit - D.CurrencyCredit)
				   END AS CurrencyBalance
				   , dt.SORtID
				   ,case when sum(Debt-credit) >0 then 1 else 2 end bedbes
			  -- end of currency 
	FROM    Acc.Documents D 
			INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
							AND D.YearID = DG.YearID 
							AND D.CompanyCode = DG.CompanyCode
			left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
			left Join Acc.DocTypes dt on dg.DocTypeCode = dt.DocTypeCode
	WHERE  	(
				 (DG.DocTypeCode<@DocTypeCodeFrom)  or
				 (DG.SecondaryDocNo<@SecondaryDocNoFrom)  or 
				 (DG.PrimaryDocNo<@PrimaryDocNoFrom)  or 
				 (DG.DocDate<@DocDateFrom )
			 )
			 AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
			 -- And
	 		--((D.DetailCode<@DetailCodeFrom)  or 
			 --(DG.CompanyCode<@CompanyCodeFrom) or
			 --(D.TopicCode< @TopicCodeFrom) or 
			 --(D.CTopicCode< @CTopicCodeFrom) or 
			 --(D.CTopicCode2<@CTopicCode2From))

	--WHERE 
	-- (  
	--		((CASE WHEN @DocTypeCode1_Not = '' THEN 1 ELSE 0 END = 1 OR 
	--		(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',')))) OR
	--		(DG.SecondaryDocNo<@SecondaryDocNoFrom) OR 
	--	    (DG.PrimaryDocNo<@PrimaryDocNoFrom) OR 
	--		(DG.DocDate<@DocDateFrom)) AND
	--	 	((D.DetailCode<@DetailCodeFrom) OR 
	--		(DG.CompanyCode<@CompanyCodeFrom) OR
	--		(D.TopicCode< @TopicCodeFrom) OR 
	--		(D.CTopicCode< @CTopicCodeFrom) OR 
	--		(D.CTopicCode2<@CTopicCode2From))) AND
	--		(D.YearID BETWEEN @FromYearID AND @ToYearID)
		
		
		
	group by DG.YearID,
			left(D.TopicCode,@LenAcc1)  ,left(D.TopicCode,@LenAcc2) ,
			left(D.TopicCode,@LenAcc3)  ,left(D.TopicCode,@LenAcc4) ,
			left(D.TopicCode,@LenAcc5) ,left(D.TopicCode,@LenAcc6)  ,
			left(D.DetailCode,@LenDetailCode)  , 
			left(DG.CompanyCode,@LenCompany1) , left(DG.CompanyCode,@LenCompany2) , 
			left(DG.CompanyCode,@LenCompany3) , 
			left(D.CTopicCode,@LenCTopic1) , left(D.CTopicCode,@LenCTopic2)  , left(D.CTopicCode,@LenCTopic3) , 
			left(D.CTopicCode2,@LenCTopic2_1), left(D.CTopicCode2,@LenCTopic2_2),
				case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
				, dt.SORtID 
	union all

	SELECT	DG.YearID, D.serial  ,D.id, SecondaryDocNo, PrimaryDocNo, DocDate, Comment_L1,Comment_L2,D.Debt , D.CompanyCode,
			D.Credit , Debt-Credit as balance ,Credit as calcuBalance , AidDocNo, AidAmount, AidDocdate, BudgetTopicID ,ProjectID ,
			left(D.TopicCode,@LenAcc1) as TopicCode1 ,left(D.TopicCode,@LenAcc2) as TopicCode2 ,
			left(D.TopicCode,@LenAcc3) as TopicCode3 ,left(D.TopicCode,@LenAcc4) as TopicCode4 ,
			left(D.TopicCode,@LenAcc5) as TopicCode5 ,left(D.TopicCode,@LenAcc6) as TopicCode6 ,
			left(D.DetailCode,@LenDetailCode)  AS DetailCode, 
			left(DG.CompanyCode,@LenCompany1) CompanyCode1 , left(DG.CompanyCode,@LenCompany2) CompanyCode2 , 
			left(DG.CompanyCode,@LenCompany3) CompanyCode3 , 
			left(D.CTopicCode,@LenCTopic1) as CTopicCode1 , left(D.CTopicCode,@LenCTopic2) as CTopicCode2 , left(D.CTopicCode,@LenCTopic3) as CTopicCode3 , 
			left(D.CTopicCode2,@LenCTopic2_1) as CTopicCode2_1, left(D.CTopicCode2,@LenCTopic2_2) as CTopicCode2_2, 
					d.CurrencyType ,
					cu.CurrencyCode ,
					cu.CurrenciesName ,
					d.CurrencyDebit,
					d.CurrencyCredit,
					(d.CurrencyDebit - d.CurrencyCredit )Currencybalance
					, dt.SORtID,case when Debt >0 then 1 else 2 end bedbes
	FROM    Acc.Documents D 
			INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
							AND D.YearID = DG.YearID 
							AND D.CompanyCode = DG.CompanyCode
			left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
			left Join Acc.DocTypes dt on dg.DocTypeCode = dt.DocTypeCode
	WHERE   (CASE WHEN @DocTypeCode1_Not = '' THEN 1 ELSE 0 END = 1 OR 
			(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',')))) AND 
			(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
			(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
			(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
	 		(D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )  AND 
			(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
			(D.TopicCode BETWEEN @TopicCodeFrom AND @TopicCodeTo ) AND 
			(D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) AND 
			(D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )AND
			((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 AND (DG.Status <> 0)) OR 
			(DG.Status in (Select part From [Acc].[SplitString] (@Status1,','))))
			AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
	) fun 
	where    (TopicCode1  BETWEEN @TopicCode1From AND @TopicCode1To)  AND
			 (TopicCode2 BETWEEN @TopicCode2From AND @TopicCode2To) AND
			 (TopicCode3 BETWEEN @TopicCode3From AND @TopicCode3To) AND
			 (TopicCode4  BETWEEN @TopicCode4From AND @TopicCode4To) AND
			 (TopicCode5 BETWEEN @TopicCode5From AND @TopicCode5To) AND
			 (TopicCode6 BETWEEN @TopicCode6From AND @TopicCode6To) AND
			 (DetailCode  BETWEEN @DetailCode1From AND @DetailCode1To) AND
			 (CompanyCode1 BETWEEN @CompanyCode1From AND @CompanyCode1To) AND
			 (CompanyCode2  BETWEEN @CompanyCode2From AND @CompanyCode2To) AND
			 (CompanyCode3  BETWEEN @CompanyCode3From AND @CompanyCode3To) AND
			 (CTopicCode1 BETWEEN @CTopicCode_1From AND @CTopicCode_1To) AND
			 (CTopicCode2  BETWEEN @CTopicCode_2From AND @CTopicCode_2To) AND
			 (CTopicCode3  BETWEEN @CTopicCode_3From AND @CTopicCode_3To) AND
			 (CTopicCode2_1 BETWEEN @CTopicCode2_1From AND @CTopicCode2_1To) AND
			 (CTopicCode2_2  BETWEEN @CTopicCode2_2From AND @CTopicCode2_2To) AND 
			 (YearId BETWEEN @FromYearID AND @ToYearID)
 )

GO

CREATE  FUNCTION [Acc].[AnalyzeAccountInfo]  	
					(
						@DocTypeCode1_Not varchar(150)='1,2,3,4,5,6,7,8,9,10' ,@DocTypeCode2_Not integer  =[-1]  ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@YearIDFrom integer=[0] ,@YearIDTo integer  =[99],
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] , 
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=[214748364799] , 
						@CTopicCodeFrom Varchar(12)=[0],  @CTopicCodeTo Varchar(12)=[214748364799] , 
						@CTopicCode2From Varchar(12)=[0],  @CTopicCode2To Varchar(12)=[214748364799] , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
                        @Status1 varchar(150)='0,1,2,3', @Status2  integer=[-1] ,
                        @RowKind1 integer=[2], @RowKind2  integer=[-1] ,@ColumnKind integer=[3], 
						@PriceKind  integer=[0]  
					)
RETURNS TABLE  AS  
RETURN
(     SELECT  	
		case @RowKind1
			 when 0 Then  Categories_1.TopicCode
			 when 1 Then  D.TopicCode
			 when 2 Then  D.DetailCode 
			 when 3 Then  D.CTopicCode 
			 when 4 Then  D.CTopicCode2
             when 5 Then  D.CTopicCode3   
			 when 6 Then  D.CompanyCode 
			 when 7 Then  DG.YearID 
		else 0 end as RowCode1 , 
		case @RowKind1
			 when 0 Then  Categories_1.MoeenName_L1
			 when 1 Then  Acc.Categories.MoeenName_L1
			 when 2 Then  Acc.Details.DetailName_L1 
			 when 3 Then  Acc.CenterTopics.CTopicName_L1
			 when 4 Then  Acc.CenterTopics2.CTopicName2_L1
			 when 5 Then  Acc.CTopicCode3.CTopicName3_L1 
			 when 6 Then  Acc.Companies.CompanyName_L1
			 when 7 Then  str(DG.YearID) 
		else ' - ' end as RowName1 ,   
		
			case @RowKind2
			 when 0 Then  Categories_1.TopicCode
			 when 1 Then  D.TopicCode
			 when 2 Then  D.DetailCode 
			 when 3 Then  D.CTopicCode 
			 when 4 Then  D.CTopicCode2  
			 when 5 Then  D.CTopicCode3  
			 when 6 Then  D.CompanyCode 
			 when 7 Then  DG.YearID  
		else 0 end as RowCode2 , 
		case @RowKind2
			 when 0 Then  Categories_1.MoeenName_L1
			 when 1 Then  Acc.Categories.MoeenName_L1
			 when 2 Then  Acc.Details.DetailName_L1 
			 when 3 Then  Acc.CenterTopics.CTopicName_L1
			 when 4 Then  Acc.CenterTopics2.CTopicName2_L1
			 when 5 Then  Acc.CTopicCode3.CTopicName3_L1 
			 when 6 Then  Acc.Companies.CompanyName_L1
			 when 7 Then  str(DG.YearID)
		else ' - '  end as RowName2 , 
		case @ColumnKind
			 when 0 Then  Categories_1.TopicCode
			 when 1 Then  D.TopicCode
			 when 2 Then  D.DetailCode 
			 when 3 Then  D.CTopicCode 
			 when 4 Then  D.CTopicCode2  
			 when 5 Then  D.CTopicCode3  
			 when 6 Then  D.CompanyCode 
			 when 7 Then  DG.YearID 
		else 0 end as ColumnCode , 
		case @ColumnKind
			 when 0 Then  Categories_1.MoeenName_L1
			 when 1 Then  Acc.Categories.MoeenName_L1
			 when 2 Then  Acc.Details.DetailName_L1 
			 when 3 Then  Acc.CenterTopics.CTopicName_L1
			 when 4 Then  Acc.CenterTopics2.CTopicName2_L1
			 when 5 Then  Acc.CTopicCode3.CTopicName3_L1 
			 when 6 Then  Acc.Companies.CompanyName_L1
			 when 7 Then  str(DG.YearID)
		else ' - '  end as ColumnName , 
		sum (case @PriceKind
			 when 0 Then D.Debt - D.Credit
			 when 1 Then  D.Debt 
			 when 2 Then  D.Credit
			 when 3 Then  D.Credit - D.Debt
		else 0 end) as Price 
		
FROM         Acc.Documents D INNER JOIN
                      Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode INNER JOIN
                      Acc.Categories AS Categories_1 ON LEFT(D.TopicCode,
                          (SELECT     CodeLength
                             FROM         Acc.AccTopicLevels
                             WHERE     (LevelID =
                                                       (SELECT     LevelIDOnKol
                                                          FROM         Acc.Config)))) = Categories_1.TopicCode INNER JOIN
                      Acc.Details ON D.DetailCode = Acc.Details.DetailCode INNER JOIN
                      Acc.CenterTopics ON D.CTopicCode = Acc.CenterTopics.CTopicCode INNER JOIN
                      Acc.CenterTopics2 ON D.CTopicCode2 = Acc.CenterTopics2.CTopicCode2 INNER JOIN
                      Acc.Companies ON D.CompanyCode = Acc.Companies.CompanyCode INNER JOIN
                      Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND 
                      D.CompanyCode = DG.CompanyCode INNER JOIN
                      Acc.CTopicCode3 ON D.ctopiccode3 = Acc.CTopicCode3.CTopicCode3



WHERE     	
	(DG.DocTypeCode in (1,2,3,4,5,7,8,9,10,11)) AND
		(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	             (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )  AND
		(DG.YearID BETWEEN @YearIDFrom AND @YearIDTo )  AND
	 	(D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )  AND
		(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
		(D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo )  AND 
		(D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )  AND 
		(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo) AND
                   
			 ( DG.Status in (1,2,3))

GROUP BY
		case @RowKind1
			 when 0 Then  Categories_1.TopicCode
			 when 1 Then  D.TopicCode
			 when 2 Then  D.DetailCode 
			 when 3 Then  D.CTopicCode 
			 when 4 Then  D.CTopicCode2
             when 5 Then  D.CTopicCode3   
			 when 6 Then  D.CompanyCode
			 when 7 Then  DG.YearID  
		else 0 end  , 
		case @RowKind1
			 when 0 Then  Categories_1.MoeenName_L1
			 when 1 Then  Acc.Categories.MoeenName_L1
			 when 2 Then  Acc.Details.DetailName_L1 
			 when 3 Then  Acc.CenterTopics.CTopicName_L1
			 when 4 Then  Acc.CenterTopics2.CTopicName2_L1
			 when 5 Then  Acc.CTopicCode3.CTopicName3_L1 
			 when 6 Then  Acc.Companies.CompanyName_L1
			 when 7 Then  str(DG.YearID)  
		else ' - ' end , 
		case @RowKind2
			 when 0 Then  Categories_1.TopicCode
			 when 1 Then  D.TopicCode
			 when 2 Then  D.DetailCode 
			 when 3 Then  D.CTopicCode 
			 when 4 Then  D.CTopicCode2  
			 when 5 Then  D.CTopicCode3  
			 when 6 Then  D.CompanyCode 
			 when 7 Then  DG.YearID  
		else 0 end  , 
		case @RowKind2
			 when 0 Then  Categories_1.MoeenName_L1
			 when 1 Then  Acc.Categories.MoeenName_L1
			 when 2 Then  Acc.Details.DetailName_L1 
			 when 3 Then  Acc.CenterTopics.CTopicName_L1
			 when 4 Then  Acc.CenterTopics2.CTopicName2_L1
			 when 5 Then  Acc.CTopicCode3.CTopicName3_L1 
			 when 6 Then  Acc.Companies.CompanyName_L1
			 when 7 Then  str(DG.YearID)
		else ' - '  end  , 
		case @ColumnKind
			 when 0 Then  Categories_1.TopicCode
			 when 1 Then  D.TopicCode
			 when 2 Then  D.DetailCode 
			 when 3 Then  D.CTopicCode 
			 when 4 Then  D.CTopicCode2 
			 when 5 Then  D.CTopicCode3  
			 when 6 Then  D.CompanyCode 
			 when 7 Then  DG.YearID 
		else 0 end , 
		case @ColumnKind
			 when 0 Then  Categories_1.MoeenName_L1
			 when 1 Then  Acc.Categories.MoeenName_L1
			 when 2 Then  Acc.Details.DetailName_L1 
			 when 3 Then  Acc.CenterTopics.CTopicName_L1
			 when 4 Then  Acc.CenterTopics2.CTopicName2_L1
			 when 5 Then  Acc.CTopicCode3.CTopicName3_L1 
			 when 6 Then  Acc.Companies.CompanyName_L1
			 when 7 Then  str(DG.YearID)
		else ' - ' end  
HAVING  	sum (case @PriceKind
			 when 0 Then D.Debt - D.Credit
			 when 1 Then  D.Debt 
			 when 2 Then  D.Credit
			 when 3 Then  D.Credit - D.Debt
		else 0 end) <>0

)



  

GO

CREATE FUNCTION [Acc].[AnalyzeAccountInfoFORUse]  	(@DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1]  ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@YearIDFrom integer=[0] ,@YearIDTo integer  =[99],
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] , 
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=[214748364799] , 
						@CTopicCodeFrom Varchar(12)=[0],  @CTopicCodeTo Varchar(12)=[214748364799] , 
						@CTopicCode2From Varchar(12)=[0],  @CTopicCode2To Varchar(12)=[214748364799] , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
                        @Status1 varchar(150)='', @Status2  integer=[-1] ,
                        @RowKind1 integer=[2], @RowKind2  integer=[-1] ,@ColumnKind integer=[1], @PriceKind  integer=[0] )
RETURNS TABLE  AS  
RETURN
(   

SELECT     AnalyzeAccountInfo.*, ROUND(AnalyzeAccountInfo.Price / isnull (SumColumnFORpercent.SumPrice,-1) * 100, 2) AS ColumnPercent, 
                      ROUND(AnalyzeAccountInfo.Price / isnull(SumRowFORPercent.SumPrice,-1) * 100, 2) AS RowPercent, SumColumnFORpercent.SumPrice AS ColumnSumPrice, 
                      SumRowFORPercent.SumPrice AS RowSumPrice
FROM         Acc.AnalyzeAccountInfo(
				@DocTypeCode1_Not ,@DocTypeCode2_Not  ,@DocTypeCode3_Not   ,
				@DocTypeCodeFrom  ,@DocTypeCodeTo ,
				@YearIDFrom  ,@YearIDTo ,
				@CompanyCodeFrom  ,@CompanyCodeTo  ,
				@AccCodeFrom ,  @AccCodeTo  ,
				@DetailCodeFrom ,  @DetailCodeTo  , 
				@CTopicCodeFrom ,  @CTopicCodeTo , 
				@CTopicCode2From ,  @CTopicCode2To , 
				@SecondaryDocNoFrom  ,@SecondaryDocNoTo , 
				@PrimaryDocNoFrom  , @PrimaryDocNoTo  ,
				@DocDateFrom , @DocDateTo  ,
                                                     @Status1 , @Status2   ,
                                                     @RowKind1 , @RowKind2   ,@ColumnKind , @PriceKind  
				) AnalyzeAccountInfo INNER JOIN
                          (SELECT     ColumnCode, SUM(Price) AS SumPrice
                             FROM         Acc.AnalyzeAccountInfo(
				@DocTypeCode1_Not ,@DocTypeCode2_Not  ,@DocTypeCode3_Not   ,
				@DocTypeCodeFrom  ,@DocTypeCodeTo ,
				@YearIDFrom  ,@YearIDTo ,
				@CompanyCodeFrom  ,@CompanyCodeTo  ,
				@AccCodeFrom ,  @AccCodeTo  ,
				@DetailCodeFrom ,  @DetailCodeTo  , 
				@CTopicCodeFrom ,  @CTopicCodeTo , 
				@CTopicCode2From ,  @CTopicCode2To , 
				@SecondaryDocNoFrom  ,@SecondaryDocNoTo , 
				@PrimaryDocNoFrom  , @PrimaryDocNoTo  ,
				@DocDateFrom , @DocDateTo  ,
                                                     @Status1 , @Status2   ,
                                                     @RowKind1 , @RowKind2   ,@ColumnKind , @PriceKind 
				) AnalyzeAccountInfo
                             GROUP BY ColumnCode
                             HAVING     SUM(Price) <> 0   ) SumColumnFORpercent ON AnalyzeAccountInfo.ColumnCode = SumColumnFORpercent.ColumnCode INNER JOIN
                          (SELECT     RowCode1, RowCode2, SUM(Price) AS SumPrice
                             FROM         Acc.AnalyzeAccountInfo(
				@DocTypeCode1_Not ,@DocTypeCode2_Not  ,@DocTypeCode3_Not   ,
				@DocTypeCodeFrom  ,@DocTypeCodeTo ,
				@YearIDFrom  ,@YearIDTo ,
				@CompanyCodeFrom  ,@CompanyCodeTo  ,
				@AccCodeFrom ,  @AccCodeTo  ,
				@DetailCodeFrom ,  @DetailCodeTo  , 
				@CTopicCodeFrom ,  @CTopicCodeTo , 
				@CTopicCode2From ,  @CTopicCode2To , 
				@SecondaryDocNoFrom  ,@SecondaryDocNoTo , 
				@PrimaryDocNoFrom  , @PrimaryDocNoTo  ,
				@DocDateFrom , @DocDateTo  ,
                                                     @Status1 , @Status2   ,
                                                     @RowKind1 , @RowKind2   ,@ColumnKind , @PriceKind  
				) AnalyzeAccountInfo

                             GROUP BY RowCode1, RowCode2
                             HAVING     SUM(Price) <> 0	) SumRowFORPercent ON AnalyzeAccountInfo.RowCode1 = SumRowFORPercent.RowCode1 AND 
                      AnalyzeAccountInfo.RowCode2 = SumRowFORPercent.RowCode2
where price <>0
)

  



GO

CREATE FUNCTION [Acc].[AnalyzeCORmparisonBalance]       ( 
						@DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1]  ,@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] , 
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=[214748364799] , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99'  ,
						@CTopicCodeFrom Varchar(12)=[0],  @CTopicCodeTo Varchar(12)=[214748364799] ,
						@CTopicCode2From Varchar(12)=[0],  @CTopicCode2To Varchar(12)=[214748364799] ,
						@LenAcc1 integer=[1] ,@LenAcc2 integer  =[2]  ,@LenAcc3 integer=[4]  ,@LenAcc4 integer=[0] ,@LenAcc5 integer  =[0]  ,@LenAcc6 integer=[0]  ,
						@LenCompany1 integer=[1] ,@LenCompany2 integer  =[2]  ,@LenCompany3 integer=[4]  ,
						@LenCTopic1  integer=[1] ,@LenCTopic2  integer  =[2]  ,@LenCTopic3  integer=[4]  ,
						@LenCTopic2_1 integer=[1] ,@LenCTopic2_2 integer  =[2] 
                                                                               ,@Status1 varchar(150)='', @Status2  integer=[-1]  ,@FromYearID integer ,@ToYearId integer  )  



RETURNS table AS  
return (
SELECT	 left(D.TopicCode,@LenAcc1) as TopicCode1 ,  left(D.TopicCode,@LenAcc2) as TopicCode2 ,
		 left(D.TopicCode,@LenAcc3) as TopicCode3 , left(D.TopicCode,@LenAcc4) as TopicCode4 ,
		 left(D.TopicCode,@LenAcc5)  as TopicCode5 , left(D.TopicCode,@LenAcc6) as TopicCode6 ,
		D.DetailCode, 
		 left(DG.CompanyCode,@LenCompany1)  as  CompanyCode1 ,  left(DG.CompanyCode,@LenCompany2) as CompanyCode2 , 
		 left(DG.CompanyCode,@LenCompany3)as  CompanyCode3 , 
		 left(D.CTopicCode,@LenCTopic1)  as CTopicCode1 , left(D.CTopicCode,@LenCTopic2) as CTopicCode2 ,
                            left(D.CTopicCode,@LenCTopic3)  as CTopicCode3 , 
		 left(D.CTopicCode2,@LenCTopic2_1) as CTopicCode2_1, left(D.CTopicCode2,@LenCTopic2_2) as CTopicCode2_2, 

		sum( case DG.DocTypeCode when 1 then D.Debt - D.Credit else 0 end ) as BalanceLastYear ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 1 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM1 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 2 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM2 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 3 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM3 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 4 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM4 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 5 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM5 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 6 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM6 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 7 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM7 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 8 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM8 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))= 9 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM9 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))=10 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM10 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))=11 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM11 ,
		sum( case  when ( abs(substring (DG.DocDate,6,2))=12 )  AND ( DG.DocTypeCode <> 1 ) then D.Debt - D.Credit else 0 end ) as BalanceM12 ,
		sum( case  when ( DG.DocTypeCode <> 1 ) then (D.Debt - D.Credit) else 0 end ) as allsuminYear,
		sum( D.Debt) as Debt , Sum(D.Credit) as Credit ,
		case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
		case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit 

FROM         Acc.Documents D Left OUTER JOIN
                      Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                      D.CompanyCode = DG.CompanyCode
WHERE     	
		
			(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',') ))AND 
						
		(DG.YearId  BETWEEN  @FromYearID AND  @ToYearId  ) AND 	
		(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	             (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) 
GROUP BY 	D.TopicCode, D.DetailCode, DG.CompanyCode, D.CTopicCode, D.CTopicCode2,DG.Status
HAVING      	(D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )  AND 
		(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo) AND
		(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
		(D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) AND 
		(D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To ) AND
	 ( DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))
)



GO

CREATE FUNCTION [Acc].[AnalyzeTrialBalance]     -- Edit By Rezaei 1402/11/04 for Add Currency       
					( 
						@DocTypeCode1_Not varchar(150)='' ,
						@DocTypeCode2_Not integer  =[-1]  ,
						@DocTypeCode3_Not integer=[-1]  ,
						@DocTypeCodeFrom integer=[0] ,
						@DocTypeCodeTo integer  =[9999] ,
						@CompanyCodeFrom Varchar(12)=[0] ,
						@CompanyCodeTo Varchar(12)=[2147483647] ,
						@AccCodeFrom Varchar(12)=[0],  
						@AccCodeTo Varchar(12)=[214748364799] , 
						@DetailCodeFrom Varchar(12)=[0],  
						@DetailCodeTo Varchar(12)=[214748364799] , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,
						@SecondaryDocNoTo Varchar(12)=[2147483647999], 
						@PrimaryDocNoFrom  Varchar(12)=[0], 
						@PrimaryDocNoTo Varchar(12)=[214748364799] ,
						@DocDateFrom Varchar(10)='0001/01/01', 
						@DocDateTo  Varchar(10)='9999/99/99'  ,
						@CTopicCodeFrom Varchar(12)=[0],  
						@CTopicCodeTo Varchar(12)=[214748364799] ,
						@CTopicCode2From Varchar(12)=[0],  
						@CTopicCode2To Varchar(12)=[214748364799] ,
						@LenAcc1 integer=[1] ,@LenAcc2 integer  =[2]  ,
						@LenAcc3 integer=[4]  ,@LenAcc4 integer=[0] ,
						@LenAcc5 integer  =[0]  ,@LenAcc6 integer=[0]  ,
						@LenCompany1 integer=[1] ,
						@LenCompany2 integer  =[2]  ,
						@LenCompany3 integer=[4]  ,
						@LenCTopic1  integer=[1] ,
						@LenCTopic2  integer  =[2]  ,
						@LenCTopic3  integer=[4]  ,
						@LenCTopic2_1 integer=[1] ,
						@LenCTopic2_2 integer  =[2] ,
                        @Status1 varchar(150)='', 
						@Status2  integer=[-1] ,
						@FromYearID integer ,
						@ToYearId integer,
			            @CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0   
					)
RETURNS table AS  
return (
		SELECT	DG.YearId ,
				left(D.TopicCode,@LenAcc1) as TopicCode1 ,  left(D.TopicCode,@LenAcc2) as TopicCode2 ,
				left(D.TopicCode,@LenAcc3) as TopicCode3 , left(D.TopicCode,@LenAcc4) as TopicCode4 ,
				left(D.TopicCode,@LenAcc5)  as TopicCode5 , left(D.TopicCode,@LenAcc6) as TopicCode6 ,
				D.DetailCode, 
				left(DG.CompanyCode,@LenCompany1)  as  CompanyCode1 ,  left(DG.CompanyCode,@LenCompany2) as CompanyCode2 , 
				left(DG.CompanyCode,@LenCompany3)as  CompanyCode3 , 
				left(D.CTopicCode,@LenCTopic1)  as CTopicCode1 , left(D.CTopicCode,@LenCTopic2) as CTopicCode2 ,
				left(D.CTopicCode,@LenCTopic3)  as CTopicCode3 , 
				left(D.CTopicCode2,@LenCTopic2_1) as CTopicCode2_1, left(D.CTopicCode2,@LenCTopic2_2) as CTopicCode2_2, 
				sum( D.Debt) as Debt , Sum(D.Credit) as Credit ,
				case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
				case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit ,
				-- for currency 
				case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
				case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
				END AS CurrencyDebit,
				case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
				END AS CurrencyCredit,
				case 
					when @CurrencyKind = 0 then 0 
					else 
				case
					when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
					SUM(D.CurrencyDebit - D.CurrencyCredit)
					else
					0
				end  
				END AS BalanceCurrencyDebit,
				case 
					when @CurrencyKind = 0 then 0 
					else 
				case
					when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
					SUM(D.CurrencyCredit - D.CurrencyDebit)
					else
					0
				end  
				END AS BalanceCurrencyCredit
				  -- end of currency 
		FROM    Acc.Documents D 
				inner JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
								AND D.YearID = DG.YearID 
								AND D.CompanyCode = DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE     	
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',') )) AND
				(DG.YearId  BETWEEN  @FromYearID AND  @ToYearId  ) AND 		
				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) 
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		GROUP BY DG.YearId ,D.TopicCode, D.DetailCode, DG.CompanyCode, D.CTopicCode, D.CTopicCode2,DG.Status,
				case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
		HAVING  (D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )  AND 
				(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo) AND
				(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
				(D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) AND 
				(D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To ) AND
					 ( DG.Status in (Select part From [Acc].[SplitString] (@Status1,','))))
            
GO

CREATE FUNCTION [Acc].[BalanceSheet]      (@LenPrvAccCode Varchar(4)=[1] , 
					@DocTypeCode1_Not integer=[-1] ,@DocTypeCode2_Not integer  =[-1] ,@DocTypeCode3_Not integer=[-1] ,
					@DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
					@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
					@LenAccCode Varchar(4)=[2], @AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] , 
					@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
					@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
					@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' )
RETURNS table AS  
return
(

SELECT      LEFT(Acc.FinancialTopics.FinancialCode, @LenPrvAccCode) AS PrvTopicCode, LEFT(Acc.FinancialTopics.FinancialCode, @LenAccCode) AS TopicCode,
		 SUM(D.Debt) AS Debt, SUM(D.Credit) AS Credit ,
		 case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
		 case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit 
FROM         Acc.Documents D INNER JOIN
                     Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
                      D.CompanyCode = DG.CompanyCode INNER JOIN
                      Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT OUTER JOIN
                      Acc.FinancialTopics ON Acc.Categories.FinancialID = Acc.FinancialTopics.FinancialCode
WHERE     	(DG.DocTypeCode <>  (@DocTypeCode1_Not) AND DG.DocTypeCode<> @DocTypeCode2_Not  ) AND (DG.DocTypeCode<> @DocTypeCode3_Not  ) AND 
		(DG.DocTypeCode  BETWEEN @DocTypeCodeFrom  AND  @DocTypeCodeTo  ) AND 
		(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	             (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
		(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
GROUP BY  LEFT(Acc.FinancialTopics.FinancialCode, @LenPrvAccCode) , LEFT(Acc.FinancialTopics.FinancialCode, @LenAccCode) 
HAVING       (LEFT(Acc.FinancialTopics.FinancialCode, @LenAccCode)  BETWEEN @AccCodeFrom AND @AccCodeTo )
)


GO

CREATE FUNCTION Acc.BalanceTaxonomy ( )  
RETURNS  table AS  
return 
(
SELECT D.TopicCode ,D.DetailCode, SUM(D.Debt) as Debt ,SUM( D.Credit) as Credit ,SUM(D.Debt - D.Credit) as balance ,
case FORmsInfo_2.InfoID 
	when 1 then case when -SUM(D.Debt - D.Credit)>0 then -SUM(D.Debt - D.Credit) else 0 end
	when 2 then 
		case FORmsInfo_1.InfoID 
			when 1 then case 
				when SUM(D.Debt - D.Credit)>=0 then 0 
					else case when -SUM(D.Debt - D.Credit)>0 then -SUM(D.Debt - D.Credit) else 0 end 
				end 
			when 2 then case 
				when SUM(D.Debt - D.Credit)<=0 then 0 
					else case when -SUM(D.Debt - D.Credit)>0 then -SUM(D.Debt - D.Credit) else 0 end
				 end 
			else 0 
		end 
	else 0
end   as Taxdebit,
case FORmsInfo_2.InfoID 
	when 1 then case when  SUM(D.Debt - D.Credit)>0 then  SUM(D.Debt - D.Credit) else 0 end
	when 2 then 
		case FORmsInfo_1.InfoID 
			when 1 then case 
				when SUM(D.Debt - D.Credit)>=0 then 0 
					else case when  SUM(D.Debt - D.Credit)>0 then  SUM(D.Debt - D.Credit) else 0 end 
				end 
			when 2 then case 
				when SUM(D.Debt - D.Credit)<=0 then 0 
					else case when  SUM(D.Debt - D.Credit)>0 then  SUM(D.Debt - D.Credit) else 0 end
				 end 
			else 0 
		end 
	else 0
end   as Taxcredit,
case FORmsInfo_2.InfoID 
	when 1 then TaxonomyTopicCode 
	when 2 then 
		case FORmsInfo_1.InfoID 
			when 1 then case 
					when SUM(D.Debt - D.Credit)>=0 then 0 else TaxonomyTopicCode end 
			when 2 then case 
					when SUM(D.Debt - D.Credit)<=0 then 0 else TaxonomyTopicCode end 
			else 0 
		end 
	else 0
end   as TaxTopicCode

FROM       Acc.Documents D INNER JOIN
                      Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT OUTER JOIN
                      Acc.FORmsInfo FORmsInfo_1 ON acc.Categories.Essence = FORmsInfo_1.FORmInfoID LEFT OUTER JOIN
                      Acc.FORmsInfo FORmsInfo_2 ON acc.Categories.TaxonomyType = FORmsInfo_2.FORmInfoID
GROUP BY D.TopicCode ,FORmsInfo_1.InfoID,FORmsInfo_2.InfoID ,TaxonomyTopicCode ,D.DetailCode
union all


select *
from (
SELECT case FORmsInfo_2.InfoID 
		when 1 then TaxonomyTopicCode 
		when 2 then 
			case FORmsInfo_1.InfoID 
				when 1 then case 
						when SUM(D.Debt - D.Credit)>=0 then D.TopicCode else TaxonomyTopicCode end 
				when 2 then case 
						when SUM(D.Debt - D.Credit)<=0 then D.TopicCode else TaxonomyTopicCode end 
				else D.TopicCode 
			end 
		else D.TopicCode
	end   as TaxTopicCode ,
D.DetailCode, 0 as Debt ,0 as Credit , 0 as balance ,
case when -SUM(D.Debt - D.Credit)>0 then -SUM(D.Debt - D.Credit) else 0 end  AS TaxDebit ,
case when  SUM(D.Debt - D.Credit)>0 then  SUM(D.Debt - D.Credit) else 0 end  AS TaxCredit ,

D.TopicCode 


FROM       Acc.Documents D INNER JOIN
                      Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT OUTER JOIN
                      Acc.FORmsInfo FORmsInfo_1 ON Acc.Categories.Essence = FORmsInfo_1.FORmInfoID LEFT OUTER JOIN
                      Acc.FORmsInfo FORmsInfo_2 ON Acc.Categories.TaxonomyType = FORmsInfo_2.FORmInfoID
GROUP BY D.TopicCode ,FORmsInfo_1.InfoID,FORmsInfo_2.InfoID ,TaxonomyTopicCode ,D.DetailCode
) TaxonomyDocuments
where topicCode<> TaxTopicCode

)

GO

CREATE FUNCTION [Acc].[CTopics2OnDetailCode]  -- Edit By Rezaei 1402/11/04 for Add Currency
							(
								@CompanyCodeFrom Varchar(12)=[0],
								@CompanyCodeTo Varchar(12)=[0] ,
								@AccCode Varchar(12)=[2], 
								@CTopicCode2 Varchar(12)=[11], 
								@DetailCode Varchar(12)=[11], 
				                @SecondaryDocNoFrom Varchar(12)=[0] ,
								@SecondaryDocNoTo Varchar(12)=[2147483647999], 
                                @PrimaryDocNoFrom  Varchar(12)=[0],
								@PrimaryDocNoTo Varchar(12)=[214748364799] ,
                                @DocDateFrom Varchar(10)='0001/01/01', 
								@DocDateTo  Varchar(10)='9999/99/99' ,
                                @Status1 Varchar(150)='', @Status2  integer=[-1],
								@FromYearID integer,
								@ToYearID integer,
                                @DocTypeCodeFrom varchar(150)='' ,
								@CurrencyTypeFrom  integer=0  , 
								@CurrencyTypeTo  integer=99999, 
								@CurrencyKind  integer=0 ,
								@CTopicCodeFrom integer=0 ,
								@CTopicCodeTo integer=2147483647 ,
								@CTopicCode3From integer=0 ,
								@CTopicCode3To integer=2147483647 
							)
RETURNS table  AS  
return (  
	select  ROW_NUMBER() OVER (partition by TopicCode,DetailCode,CTopicCode2 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as _row,
			YearId,
			Serial,
			ID,
			CompanyCode,
			TopicCode,
			CTopicCode2,
			DetailCode,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			AidDocNo,
			BudgetTopicID,
			ProjectID,
			AidDocdate,
			AidAmount,
			Debt,
			Credit,
			SUM(Balance) over (partition by TopicCode,DetailCode,CTopicCode2 
					order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id) as RunningBalance,
			BedBes,
			SORtID,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			SUM(Currencybalance) over (partition by TopicCode,DetailCode,CTopicCode2 
							order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningCurrencybalance 
	from (
		SELECT	DG.YearId , 
				0 as Serial,  
				0 as ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.CTopicCode2, 
				D.DetailCode, 
				0 as SecondaryDocNo, 
				0 as PrimaryDocNo, 
				'01/01' as DocDate,'مجموع مانده از قبل  '  as  Comment_L1, 
				0 as AidDocNo, 
				0 as BudgetTopicID, 
				0 as ProjectID, 
				'--' as AidDocdate, 
				0 as AidAmount, 
				sum(D.Debt) as debt, 
				sum(D.Credit) as Credit, 
				sum(D.Debt - D.Credit) AS balance ,
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes, 
				0 as SORtID ,
			-- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
				 when @CurrencyKind = 0 then 0 
				 else SUM(D.CurrencyDebit - D.CurrencyCredit)
			   END AS CurrencyBalance
		  -- end of currency 
		FROM    Acc.Documents D 
				INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
								AND D.YearID = DG.YearID 
								AND D.CompanyCode = DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) 
				AND (DG.YearID BETWEEN @FromYearID AND @ToYearID ) 
				AND (D.TopicCode = @AccCode) 
				AND (D.CTopicCode2 =@CTopicCode2 ) 
				AND (D.DetailCode =@DetailCode ) 
			    AND (
						(DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
						(DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
						(DG.DocDate < @DocDateFrom )) and (DG.Status <> 0)
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
				AND (D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) 
				AND (D.CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To ) 
		group by DG.YearId,
				DG.CompanyCode, 
				D.TopicCode, 
				D.CTopicCode2, 
				D.DetailCode,
				case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end 

		Union All

        SELECT	DG.YearId ,DG.Serial, D.ID, DG.CompanyCode, D.TopicCode, D.CTopicCode2, D.DetailCode, 
				DG.SecondaryDocNo, DG.PrimaryDocNo, DG.DocDate, D.Comment_L1, D.AidDocNo, 
				D.BudgetTopicID, D.ProjectID, D.AidDocdate, D.AidAmount, D.Debt, D.Credit, 
				D.Debt - D.Credit AS balance, 
				CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, 
				acc.DocTypes.SORtID,
				d.CurrencyType ,
			    cu.CurrencyCode ,
			    cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit )Currencybalance
		FROM    Acc.Documents D 
				INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
							AND D.YearID = DG.YearID 
							AND D.CompanyCode = DG.CompanyCode  
				LEFT JOIN acc.DocTypes ON DG.DocTypeCode = acc.DocTypes.DocTypeCode
				LEFT JOIN dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) 
				AND (DG.YearID   BETWEEN @FromYearID AND @ToYearID ) 
				AND (D.TopicCode = @AccCode) 
				AND (D.CTopicCode2 =@CTopicCode2 ) 
				AND (D.DetailCode =@DetailCode ) 
				AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) 
				AND (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) 
				AND	(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )
				AND	(
						(CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR 
						(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))
					) 
				AND ( 
						CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
						(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))
					)
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo 
	 			AND (D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) 
				AND (D.CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To ) 
)DocOnDetailCode

)


GO

CREATE FUNCTION [Acc].[CTopics2OnTopicCode]  -- Edit By Rezaei 1402/11/04 for Add Currency 
				(
					@CompanyCode Varchar(12)=[0] ,
					@AccCode Varchar(12)=[2], 
					@CTopicCode2 Varchar(12)=[11], 
				    @SecondaryDocNoFrom Varchar(12)=[0] ,
					@SecondaryDocNoTo Varchar(12)=[2147483647999], 
                    @PrimaryDocNoFrom  Varchar(12)=[0],
					@PrimaryDocNoTo Varchar(12)=[214748364799] ,
                    @DocDateFrom Varchar(10)='0001/01/01', 
					@DocDateTo  Varchar(10)='9999/99/99' ,
                    @Status1 varchar(150)='', 
					@Status2  integer=[-1],
					@FromyearId integer,
					@ToYearId integer,
                    @DocTypeCodeFrom varchar(150)='',
			        @CurrencyTypeFrom  integer=0  , 
					@CurrencyTypeTo  integer=9999999, 
					@CurrencyKind  integer=0  
				)
RETURNS table  AS  
return (  
	select  ROW_NUMBER() OVER (partition by TopicCode, CTopicCode2 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as _row,
			YearId,
			Serial,
			ID,
			CompanyCode,
			TopicCode,
			CTopicCode2,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			AidDocNo,
			BudgetTopicID,
			ProjectID,
			AidDocdate,
			AidAmount,
			Debt,
			Credit,
			SUM(Balance) over (partition by TopicCode, CTopicCode2 
					order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningBalance,
			BedBes,
			SORtID,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			SUM(Currencybalance) over (partition by TopicCode, CTopicCode2 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningCurrencybalance

	from (
		SELECT  DG.YearId ,  
				0 as Serial,  
				0 as ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.CTopicCode2, 
				0 as SecondaryDocNo, 
				0 as PrimaryDocNo, 
				'01/01' as DocDate,'مجموع مانده از قبل  '  as  Comment_L1, 
				0 as AidDocNo, 
				0 as BudgetTopicID, 
				0 as ProjectID, 
				'--' as AidDocdate, 
				0 as AidAmount, 
				sum(D.Debt) as debt, 
				sum(D.Credit) as Credit, 
				sum(D.Debt - D.Credit) AS balance, 
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes,
				0 As SORtID ,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
				 when @CurrencyKind = 0 then 0 
				 else SUM(D.CurrencyDebit - D.CurrencyCredit)
			   END AS CurrencyBalance
		  -- end of currency 
		FROM    Acc.Documents D 
				INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
								AND D.YearID = DG.YearID 
								AND D.CompanyCode = DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode = @CompanyCode) AND
				(DG.YearId BETWEEN @FromyearId AND @ToYearId) AND
				(D.TopicCode = @AccCode) AND 
				(D.CTopicCode2 =@CTopicCode2 ) AND 
				((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
				(DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
				(DG.DocDate < @DocDateFrom )) and (DG.Status <> 0)
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		group by DG.YearId , DG.CompanyCode, D.TopicCode, D.CTopicCode2,
				case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
		
		Union All
		
		SELECT  DG.YearId , 
				DG.Serial, 
				D.ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.CTopicCode2, 
				DG.SecondaryDocNo, 
				DG.PrimaryDocNo, 
				DG.DocDate, 
				D.Comment_L1, 
				D.AidDocNo, 
				D.BudgetTopicID, 
				D.ProjectID, 
				D.AidDocdate, 
				D.AidAmount, 
				D.Debt, 
				D.Credit, 
				D.Debt - D.Credit AS balance, 
				CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, acc.DocTypes.SORtID	,
				d.CurrencyType ,
				cu.CurrencyCode ,
				cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit )Currencybalance
		FROM         Acc.Documents D INNER JOIN
							  Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
							  D.CompanyCode = DG.CompanyCode  LEFT OUTER JOIN
							  acc.DocTypes ON DG.DocTypeCode = acc.DocTypes.DocTypeCode
							  left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
                      
		WHERE   (DG.CompanyCode = @CompanyCode)  AND  (DG.YearId BETWEEN @FromyearId AND @ToYearId) AND 
				(D.TopicCode = @AccCode) AND 
				(D.CTopicCode2 =@CTopicCode2 ) AND 
  				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
				((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR 
				(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND
				( CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))) 
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
	 )DocOnCTopicCode2

)

GO

CREATE  FUNCTION [Acc].[CTopicsOnDetailCode]  -- Edit By Rezaei 1402/11/04 for Add Currency
					(
						@CompanyCodeFrom Varchar(12)=[0] ,
						@CompanyCodeTo Varchar(12)=[0],
						@AccCode Varchar(12)=[2], 
						@CTopicCode Varchar(12)=[11], 
						@DetailCode Varchar(12)=[11], 
				        @SecondaryDocNoFrom Varchar(12)=[0] ,
						@SecondaryDocNoTo Varchar(12)=[2147483647999], 
                        @PrimaryDocNoFrom  Varchar(12)=[0],
						@PrimaryDocNoTo Varchar(12)=[214748364799] ,
                        @DocDateFrom Varchar(10)='0001/01/01', 
						@DocDateTo  Varchar(10)='9999/99/99' ,
                        @Status1 varchar(150)='', 
						@Status2  integer=[-1],
						@FromYearID integer, 
						@ToYearID integer,
                        @DocTypeCodeFrom varchar(150)='',
						@CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0 
					)
RETURNS table  AS  
return (  
	select  ROW_NUMBER() OVER (partition by TopicCode ,DetailCode,CTopicCode 
							order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as _row,
			YearId,
			Serial,
			ID,
			CompanyCode,
			TopicCode,
			CTopicCode,
			DetailCode,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			AidDocNo,
			BudgetTopicID,
			ProjectID,
			AidDocdate,
			AidAmount,
			Debt,
			Credit,
			--balance,
			SUM(Balance) over (partition by TopicCode ,DetailCode,CTopicCode 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as Runningbalance,
			BedBes,
			SORtID,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			SUM(Currencybalance) over (partition by TopicCode ,DetailCode,CTopicCode 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningCurrencybalance
	from (
		SELECT	DG.YearId ,
				0 as Serial,  
				0 as ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.CTopicCode, 
				D.DetailCode, 
				0 as SecondaryDocNo, 
				0 as PrimaryDocNo, 
				'01/01' as DocDate,
				'مجموع مانده از قبل  '  as  Comment_L1, 
				0 as AidDocNo, 
				0 as BudgetTopicID, 
				0 as ProjectID, '--' as AidDocdate, 
				0 as AidAmount, sum(D.Debt) as debt, 
				sum(D.Credit) as Credit, 
				sum(D.Debt - D.Credit) AS balance, 
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes,
				0 As SORtID,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
				 when @CurrencyKind = 0 then 0 
				 else SUM(D.CurrencyDebit - D.CurrencyCredit)
			   END AS CurrencyBalance
		  -- end of currency 
		FROM    Acc.Documents D 
				INNER JOIN  Acc.DocGroups DG ON D.Serial = DG.Serial 
								AND D.YearID = DG.YearID 
								AND D.CompanyCode = DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
				AND (DG.YearID BETWEEN @FromYearID AND @ToYearID )AND
			   (D.TopicCode = @AccCode) AND 
			   (D.CTopicCode =@CTopicCode ) AND 
			   (D.DetailCode =@DetailCode ) AND 
			   ((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
			   (DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
			   (DG.DocDate < @DocDateFrom )) and (DG.Status <> 0)
			   AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		group by DG.YearId ,
				DG.CompanyCode, 
				D.TopicCode, 
				D.CTopicCode, 
				D.DetailCode,
				case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
		
		Union All
		
		SELECT	DG.YearId ,DG.Serial, D.ID, DG.CompanyCode, D.TopicCode, D.CTopicCode, D.DetailCode, 
				DG.SecondaryDocNo, DG.PrimaryDocNo, DG.DocDate, D.Comment_L1, D.AidDocNo, 
				D.BudgetTopicID, D.ProjectID, D.AidDocdate, D.AidAmount, D.Debt, D.Credit, 
				D.Debt - D.Credit AS balance, 
				CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, 
				acc.DocTypes.SORtID,
				d.CurrencyType ,
			    cu.CurrencyCode ,
			    cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit )Currencybalance
		FROM    Acc.Documents D 
				INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
								AND D.YearID = DG.YearID 
								AND D.CompanyCode = DG.CompanyCode  
				LEFT OUTER JOIN acc.DocTypes ON DG.DocTypeCode = acc.DocTypes.DocTypeCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo)
				AND (DG.YearID BETWEEN @FromYearID AND @ToYearID )AND
				(D.TopicCode = @AccCode) AND 
				(D.CTopicCode =@CTopicCode ) AND 
				(D.DetailCode =@DetailCode ) AND 
  				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
				((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR 
				(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND
				( CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
	 )DocOnDetailCode
)

GO

CREATE  FUNCTION [Acc].[CTopicsOnTopicCode]  -- Edit By Rezaei 1402/11/04 for Add Currency
					(
						@CompanyCodeFrom Varchar(12)=[0],
						@CompanyCodeTo Varchar(12)=[0] ,
						@AccCode Varchar(12)=[2], 
						@CTopicCode Varchar(12)=[11], 
				        @SecondaryDocNoFrom Varchar(12)=[0] ,
						@SecondaryDocNoTo Varchar(12)=[2147483647999], 
                        @PrimaryDocNoFrom  Varchar(12)=[0],
						@PrimaryDocNoTo Varchar(12)=[214748364799] ,
                        @DocDateFrom Varchar(10)='0001/01/01', 
						@DocDateTo  Varchar(10)='9999/99/99' ,
                        @Status1 varchar(150)='', 
						@Status2  integer=[-1],@FromYearID integer, 
						@ToYearID integer,
                        @DocTypeCodeFrom varchar(150)='',
			            @CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0  
					)
RETURNS table  AS  
return (  
	select  YearId,
			Serial,
			ID,
			CompanyCode,
			TopicCode,
			CTopicCode,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			AidDocNo,
			BudgetTopicID,
			ProjectID,
			AidDocdate,
			AidAmount,
			debt,
			Credit,
			Sum(balance) OVER ( PARTITION BY TopicCode, CTopicCode 
						ORDER BY DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) AS RunningBalance,
			BedBes,
			SORtID,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			Sum(CurrencyBalance) OVER ( PARTITION BY TopicCode, CTopicCode 
						ORDER BY DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) RunningCurrencyBalance
			
	from (
		SELECT  DG.YearId ,0 as Serial,  0 as ID, 
				DG.CompanyCode, 
				D.TopicCode, D.CTopicCode, 
                0 as SecondaryDocNo, 0 as PrimaryDocNo, 
				'01/01' as DocDate,
				'مجموع مانده از قبل  '  as  Comment_L1, 0 as AidDocNo, 
                0 as BudgetTopicID, 0 as ProjectID, '--' as AidDocdate, 
				0 as AidAmount, 
				sum(D.Debt) as debt, 
                sum(D.Credit) as Credit, 
				sum(D.Debt - D.Credit) AS balance, 
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes,
				0 as SORtID,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
				 when @CurrencyKind = 0 then 0 
				 else SUM(D.CurrencyDebit - D.CurrencyCredit)
			   END AS CurrencyBalance
		  -- end of currency 
	FROM    Acc.Documents as D 
		INNER JOIN acc.DocGroups as DG ON  D.Serial = DG.Serial 
										AND D.YearID =DG.YearID 
										AND D.CompanyCode =DG.CompanyCode
		left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
	WHERE    (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND 
			 (DG.YearId BETWEEN @FromYearID AND @ToYearID) AND 
			 (D.TopicCode = @AccCode) AND (D.CTopicCode =@CTopicCode ) AND 
			 ((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
			 (DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
			 (DG.DocDate < @DocDateFrom )) and (DG.Status <> 0)
			 AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
	GROUP BY  DG.YearId ,DG.CompanyCode, D.TopicCode, D.CTopicCode,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 

	UNION All

	SELECT  DG.YearId , DG.Serial, D.ID, DG.CompanyCode, D.TopicCode, D.CTopicCode, DG.SecondaryDocNo, 
			DG.PrimaryDocNo, DG.DocDate, D.Comment_L1, D.AidDocNo, D.BudgetTopicID, D.ProjectID, 
			D.AidDocdate, D.AidAmount, D.Debt, D.Credit, D.Debt - D.Credit AS balance, 
			CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes,DocTypes.SORtID ,
			d.CurrencyType ,
			cu.CurrencyCode ,
			cu.CurrenciesName ,
			d.CurrencyDebit,
			d.CurrencyCredit,
			(d.CurrencyDebit - d.CurrencyCredit )Currencybalance
	FROM    acc.Documents as D  INNER JOIN
            acc.DocGroups as DG ON    D.Serial = DG.Serial AND D.YearID =DG.YearID AND     
			D.CompanyCode =DG.CompanyCode LEFT OUTER JOIN
            acc.DocTypes as DocTypes ON DG.DocTypeCode = DocTypes.DocTypeCode
			left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
	WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo)  
			AND (DG.YearId BETWEEN @FromYearID AND @ToYearID) AND
			(D.TopicCode = @AccCode) AND (D.CTopicCode = @CTopicCode ) AND 
  			(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
			(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
			(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
			((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR
			(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND
			((CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1) OR
			(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))
			AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
 )DocOnTopicBook

)

GO

CREATE FUNCTION  [Acc].[DetailsOnTopicBookRelated]  -- Edit By Rezaei 1402/11/04 for Add Currency
						(
							@CompanyCodeFrom Varchar(12)=[0],
							@CompanyCodeTO Varchar(12)=[0] ,
							@AccCode Varchar(12)=[2], 
							@DetailCode Varchar(12)=[11], 
							@SecondaryDocNoFrom Varchar(12)=[0] ,
							@SecondaryDocNoTo Varchar(12)=[2147483647999], 
							@PrimaryDocNoFrom  Varchar(12)=[0], 
							@PrimaryDocNoTo Varchar(12)=[214748364799] ,
							@DocDateFrom Varchar(10)='0001/01/01',
							@DocDateTo  Varchar(10)='9999/99/99',
							@Status1 varChar(150)='', 
							@Status2  integer=[-1] ,
							@FromYearID integer,
							@ToYearID integer,
							@DocTypeCodeFrom varChar(150)='' ,
							@DocTypeCodeTo integer  =[9999],
							@DetailCompanydel integer =[1],
							@CurrencyTypeFrom  integer=0  , 
							@CurrencyTypeTo  integer=99999, 
							@CurrencyKind  integer=0 
						)
RETURNS table  AS  
return (  

	select  ROW_NUMBER() OVER ( PARTITION BY TopicCode, DetailCode  
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) _Row ,
			YearID,
			Serial,
			ID,
			CompanyCode,
			TopicCode,
			DetailCode,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			Comment_L2,
			AidDocNo,
			BudgetTopicID,
			ProjectID,
			AidDocdate,
			AidAmount,
			Debt,
			Credit,
			Sum(balance) OVER ( PARTITION BY TopicCode, DetailCode 
					ORDER BY DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) AS RunningBalance,
			BedBes,
			Status,
			SORtID,
			RelatedID,
			ItemID,
			CustAccountNumber,
			ManageName,
			BankName,
			PaymentCode,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			Sum(CurrencyBalance) OVER ( PARTITION BY TopicCode, DetailCode 
							ORDER BY DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) RunningCurrencybalance,
			AnalizeType
	from (
		SELECT	DG.YearID, 
				DG.Serial, 
				D.ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.DetailCode, 
                DG.SecondaryDocNo, 
				DG.PrimaryDocNo, 
				DG.DocDate, 
				D.Comment_L1, 
				D.Comment_L2, 
				D.AidDocNo, 
                D.BudgetTopicID, D.ProjectID, D.AidDocdate, D.AidAmount,
                D.Debt- CASE WHEN D.Debt > 0 THEN  isnull(DocRele.SumRel, 0) ELSE 0 END AS Debt, 
                D.Credit - CASE WHEN D.Credit > 0 THEN  - isnull(DocRele.SumRel, 0) ELSE 0 END AS Credit, 
                D.Debt - D.Credit AS Balance,
                CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, 
				DG.Status, DocTypes.SORtID,D.RelatedID, 
                0 as ItemID , 
				Details.CustAccountNumber, 
				Details.ManageName, 
				Details.BankName,Details.PaymentCode,
				d.CurrencyType ,
			    cu.CurrencyCode ,
			    cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit ) Currencybalance,
				1 AnalizeType
		FROM    Acc.Documents as D 
				INNER JOIN Acc.Details AS Details ON Details.DetailCode = D.DetailCode 
				INNER JOIN acc.DocGroups as DG ON  
									D.Serial = DG.Serial AND 
									D.YearID =DG.YearID 	AND 
									D.CompanyCode =DG.CompanyCode  
				Left Outer JOIN 
						( 
							SELECT     ID, Serial, YearID, CompanyCode, SUM(Debit - Credit) AS SumRel
							FROM         Acc.DocRelated
							GROUP BY  ID, Serial, YearID, CompanyCode
						) AS DocRele ON D.Serial = DocRele.Serial AND 
										D.YearID = DocRele.YearID AND 
										D.ID = DocRele.ID AND 
										D.CompanyCode = DocRele.CompanyCode 
				LEFT OUTER JOIN Acc.DocTypes AS DocTypes ON DG.DocTypeCode = DocTypes.DocTypeCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) AND 
				(DG.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
				(D.TopicCode = @AccCode) AND 
				(D.DetailCode =@DetailCode ) AND 
				--(D. =@) AND 
  				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
				((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR
				(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND
				( CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  

		Union All

		SELECT  DG.YearID, DG.Serial, D.ID, DG.CompanyCode, D.TopicCode, D.DetailCode, 
				DG.SecondaryDocNo, DG.PrimaryDocNo, DG.DocDate, D.Comment_L1, D.Comment_L2, D.AidDocNo, 
				D.BudgetTopicID, D.ProjectID, D.AidDocdate, D.AidAmount, 
				DocRelated.Debit AS Debt, 
				DocRelated.Credit, 
				DocRelated.Debit - DocRelated.Credit AS balance, 
				CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, 
				DG.Status, DocTypes.SORtID,DocRelated.RelatedID, 
				DocRelated.ItemID , Details.CustAccountNumber, Details.ManageName, 
				Details.BankName,Details.PaymentCode,
				d.CurrencyType ,
				cu.CurrencyCode ,
				cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit )Currencybalance,
				2 AnalizeType
		FROM    Acc.Documents as D 
				INNER JOIN acc.DocGroups as DG ON  
							D.Serial = DG.Serial AND 
							D.YearID =DG.YearID AND  
							D.CompanyCode =DG.CompanyCode 
				INNER JOIN Acc.Details AS Details ON Details.DetailCode = D.DetailCode 
				INNER JOIN Acc.DocRelated as DocRelated ON 
								D.ID = DocRelated.ID AND 
								D.YearID = DocRelated.YearID AND 
								D.CompanyCode = DocRelated.CompanyCode AND 
								D.Serial = DocRelated.Serial 
				LEFT OUTER JOIN Acc.DocTypes AS DocTypes ON DG.DocTypeCode = DocTypes.DocTypeCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) AND 
				(DG.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
				(D.TopicCode = @AccCode) AND 
				(D.DetailCode =@DetailCode ) AND 
  				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
				(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
                                               
		UNION ALL

		SELECT  DG.YearId , 
				0 as Serial,  
				0 as ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.DetailCode, 
				0 as SecondaryDocNo, 
				0 as PrimaryDocNo, 
				max(DocDate) as DocDate, 
				'---' as  Comment_L1, 
				'---' as  Comment_L2, 
				0 as AidDocNo, 
				0 as BudgetTopicID, 
				0 as ProjectID, 
				'--' as AidDocdate, 
				0 as AidAmount, 
				sum(D.Debt) as debt, 
				sum(D.Credit) as Credit, 
				sum(D.Debt - D.Credit) AS balance ,
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes ,
				0 as Status ,
				0 As SORtID,
				-1 as RelatedID , 
				0 as ItemID ,
				Details.CustAccountNumber, 
				Details.ManageName, 
				Details.BankName,
				Details.PaymentCode,
				-- for currency 
				case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
				case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
				END AS CurrencyDebit,
				case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
				END AS CurrencyCredit,
				case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit - D.CurrencyCredit)
				END AS CurrencyBalance
				,0 AnalizeType
			-- end of currency 
		FROM    acc.Documents as D  
				INNER JOIN	Acc.Details AS Details ON Details.DetailCode = D.DetailCode 
				INNER JOIN	acc.DocGroups as DG  ON D.Serial = DG.Serial AND 
													D.YearID =DG.YearID AND  
													D.CompanyCode =DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) AND 	
				( CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))   AND 
				(DG.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
				(D.TopicCode = @AccCode) AND 
				(D.DetailCode =@DetailCode ) AND 
				((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
				(DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
				(DG.DocDate < @DocDateFrom )) and (DG.Status <> 0)
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		group by DG.YearId ,
				 DG.CompanyCode, 
				 D.TopicCode, 
				 D.DetailCode ,
				 Details.CustAccountNumber, 
				 Details.ManageName, 
				 Details.BankName,
				 Details.PaymentCode,
				 case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				 case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				 case when @CurrencyKind = 0 then null else cu.CurrenciesName end 

	)DocOnDetails

)
GO

CREATE FUNCTION   [Acc].[DetailsOnTopicBook]  -- Edit By Rezaei 1402/11/04 for Add Currency
							(
								@CompanyCodeFrom Varchar(12)=[0] ,
								@CompanyCodeTO Varchar(12)=[0],
								@AccCode Varchar(12)=[2], 
								@DetailCode Varchar(12)=[11], 
								@SecondaryDocNoFrom Varchar(12)=[0] ,
								@SecondaryDocNoTo Varchar(12)=[2147483647999], 
								@PrimaryDocNoFrom  Varchar(12)=[0], 
								@PrimaryDocNoTo Varchar(12)=[214748364799] ,
								@DocDateFrom Varchar(10)='0001/01/01', 
								@DocDateTo  Varchar(10)='9999/99/99',
								@Status1 varchar(150)= '', 
								@Status2  integer=[-1] ,
								@FromYearID integer,
								@ToYearID integer,
								@DocTypeCodeFrom varchar(150)= '' ,
								@DocTypeCodeTo integer  =[-1] , 
								@DetailCompanydel integer =[1],
								@CurrencyTypeFrom  integer=0  , 
								@CurrencyTypeTo  integer=99999, 
								@CurrencyKind  integer=0 
							)
RETURNS table  AS  
return (  

	select  ROW_NUMBER() OVER ( PARTITION BY TopicCode, DetailCode 
							order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as _Row ,
			YearID,
			Serial,
			ID,
			CompanyCode,
			TopicCode,
			DetailCode,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			Comment_L2,
			AidDocNo,
			BudgetTopicID,
			ProjectID,
			AidDocdate,
			AidAmount,
			Debt,
			Credit,
			Sum(balance) OVER ( PARTITION BY TopicCode, DetailCode 
						ORDER BY DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) AS RunningBalance,
			BedBes,
			Status,
			SORtID,
			RelatedID,
			ItemID,
			CustAccountNumber,
			ManageName,
			BankName,
			PaymentCode,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			Sum(CurrencyBalance) OVER ( PARTITION BY TopicCode, DetailCode 
					ORDER BY DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) RunningCurrencybalance,
			AnalizeType
	from (
		SELECT	DG.YearID, 
				DG.Serial, 
				D.ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.DetailCode, 
				DG.SecondaryDocNo, 
				DG.PrimaryDocNo, 
				DG.DocDate, 
				D.Comment_L1,  
				D.Comment_L2, 
				D.AidDocNo, 
				D.BudgetTopicID, 
				D.ProjectID, 
				D.AidDocdate, 
				D.AidAmount, 
				D.Debt, 
				D.Credit, 
				D.Debt - D.Credit AS Balance,
				CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, 
				DG.Status, 
				DocTypes.SORtID, 
				0 AS RelatedID, 
				0 AS ItemID , 
				Details.CustAccountNumber, 
				Details.ManageName, 
				Details.BankName,
				Details.PaymentCode,
				d.CurrencyType ,
			    cu.CurrencyCode ,
			    cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit ) CurrencyBalance,
				0 AnalizeType
		FROM    Acc.Documents AS D 
				INNER JOIN Acc.DocGroups AS DG ON D.Serial = DG.Serial 
										  AND D.YearID = DG.YearID 
										  AND D.CompanyCode = DG.CompanyCode 
				LEFT OUTER JOIN Acc.DocTypes AS DocTypes ON DG.DocTypeCode = DocTypes.DocTypeCode 
				LEFT OUTER JOIN Acc.Details AS Details ON Details.DetailCode = D.DetailCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO)AND 
				(DG.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
				(D.TopicCode = @AccCode) AND 
				(D.DetailCode =@DetailCode ) AND 
  				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
				((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR 
				(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
 				(CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		Union All
		SELECT  DG.YearId , 
				0 as Serial,  
				0 as ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.DetailCode, 
				0 as SecondaryDocNo, 
				0 as PrimaryDocNo,  
				max(DocDate) as DocDate, 
				'---' as  Comment_L1, 
				'---' as  Comment_L2 , 
				0 as AidDocNo, 
				0 as BudgetTopicID, 
				0 as ProjectID, 
				'--' as AidDocdate, 
				0 as AidAmount, 
				sum(D.Debt) as debt, 
				sum(D.Credit) as Credit, 
				sum(D.Debt - D.Credit) AS balance ,
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes ,
				0 as Status ,
				0 As SORtID,
				-1 as RelatedID,
				0 as ItemID , 
				Details.CustAccountNumber, 
				Details.ManageName, 
				Details.BankName,
				Details.PaymentCode ,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
				 when @CurrencyKind = 0 then 0 
				 else SUM(D.CurrencyDebit - D.CurrencyCredit)
			   END AS CurrencyBalance
		  -- end of currency 
		  ,0 AnalizeType
		FROM    Acc.Documents as D 
				INNER JOIN  acc.DocGroups as DG ON 
								D.Serial = DG.Serial AND 
								D.YearID =DG.YearID AND     
								D.CompanyCode =DG.CompanyCode 
				LEFT OUTER JOIN	Acc.Details AS Details ON Details.DetailCode = D.DetailCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) AND 
				(DG.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
				(D.TopicCode = @AccCode) AND 
				(D.DetailCode =@DetailCode ) AND 
		
				((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR 
				(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
 				(CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))) AND
				((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
				(DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
				(DG.DocDate < @DocDateFrom ))
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		group by DG.YearId ,DG.CompanyCode, D.TopicCode, D.DetailCode ,
				 Details.CustAccountNumber, Details.ManageName, Details.BankName,
				 Details.PaymentCode,
				 case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				 case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				 case when @CurrencyKind = 0 then null else cu.CurrenciesName END
	)DocOnDetails
)

GO

CREATE FUNCTION   [Acc].[DetailsOnTopicBookSpecial]   -- Edit By Rezaei 1402/11/04 for Add Currency
						(
							@CompanyCode Varchar(12)=[0] ,
							@AccCodeFrom Varchar(12)=[2],
							@AccCodeTo Varchar(12)=[2], 
							@DetailCodeFrom Varchar(12)=[11], 
							@DetailCodeTo Varchar(12)=[11],
							@SecondaryDocNoFrom Varchar(12)=[0] ,
							@SecondaryDocNoTo Varchar(12)=[2147483647999], 
							@PrimaryDocNoFrom  Varchar(12)=[0], 
							@PrimaryDocNoTo Varchar(12)=[214748364799] ,
							@DocDateFrom Varchar(10)='0001/01/01', 
							@DocDateTo  Varchar(10)='9999/99/99' ,
							@Status1 varchar(150)='', 
							@Status2  integer=[-1] ,
							@FromYearID integer,
							@ToYearID integer,
							@CurrencyTypeFrom  integer=0  , 
							@CurrencyTypeTo  integer=99999, 
							@CurrencyKind  integer=0 
						)
RETURNS table  AS  
return (  
	select *
	from (
		SELECT	DG.YearID,
				DG.Serial, 
				D.ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.DetailCode, 
				DG.SecondaryDocNo, 
				DG.PrimaryDocNo, 
				DG.DocDate, 
				D.Comment_L1, 
				D.AidDocNo, 
				D.BudgetTopicID, 
				D.ProjectID, 
				D.AidDocdate, 
				D.AidAmount, 
				D.Debt, 
				D.Credit, 
				D.Debt - D.Credit AS balance,
				CASE D.debt WHEN 0 THEN '1' ELSE '0' END as BedBes,
				DG.Status,
				d.CurrencyType ,
			    cu.CurrencyCode ,
			    cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit )Currencybalance
		FROM    Acc.Documents D 
				INNER JOIN  Acc.DocGroups DG ON D.Serial = DG.Serial 
						AND D.YearID = DG.YearID 
						AND D.CompanyCode = DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE    
				(DG.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
				(DG.CompanyCode = @CompanyCode) AND 
				(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTO)  
				AND (D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo) AND 
  				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
				(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  

		Union All

		SELECT	DG.YearID, 
				0 as Serial,  
				0 as ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.DetailCode, 
				0 as SecondaryDocNo, 
				0 as PrimaryDocNo, 
				'01/01' as DocDate, 
				'---' as  Comment_L1, 
				0 as AidDocNo, 
				0 as BudgetTopicID, 
				0 as ProjectID, 
				'--' as AidDocdate, 
				0 as AidAmount, 
				sum(D.Debt) as debt, 
				sum(D.Credit) as Credit, 
				sum(D.Debt - D.Credit) AS balance,
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes ,
				0 as Status,
				-- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
				 when @CurrencyKind = 0 then 0 
				 else SUM(D.CurrencyDebit - D.CurrencyCredit)
			   END AS CurrencyBalance
		  -- end of currency 
		FROM	Acc.Documents D 
				INNER JOIN  Acc.DocGroups DG ON D.Serial = DG.Serial 
							AND D.YearID = DG.YearID 
							AND D.CompanyCode = DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
				(DG.CompanyCode = @CompanyCode) AND
				(D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTO)  AND 
				(D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo) AND
			   ((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
			   (DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
			   (DG.DocDate < @DocDateFrom )) and (DG.Status <> 0)
			   AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		group by DG.YearID,
				DG.CompanyCode, 
				D.TopicCode, 
				D.DetailCode ,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
	)DocOnDetails
)

GO

CREATE FUNCTION [Acc].[FORmsInfo_FilterType]   (@FORmType Varchar(4)=[10]  )

RETURNS table AS  
return
(
	select     * 
	from    acc.FORmsInfo
	WHERE     FORmtype=@FORmType
)


GO

CREATE FUNCTION [Acc].[GeneralJournal]  
			(
				@LenAccCode Varchar(12)=[2], 
				@SecondaryDocNoFrom Varchar(12)=[0] ,
				@SecondaryDocNoTo Varchar(12)=[2147483647999], 
				@PrimaryDocNoFrom  Varchar(12)=[0], 
				@PrimaryDocNoTo Varchar(12)=[214748364799] ,
				@DocDateFrom Varchar(10)='0001/01/01', 
				@DocDateTo  Varchar(10)='9999/99/99',
				@FromYearID integer=88,
				@ToYearID integer, 
				@CompanyCodeFrom integer = [1], 
				@CompanyCodeTo integer = [1]  
			)
RETURNS table  AS  
return (
	SELECT  YearId ,
			serial,
			TrialBalance.DocDate, 
			TrialBalance.BedBes , 
			TrialBalance.PrimaryDocNo, 
			TrialBalance.SecondaryDocNo, 
			TrialBalance.AccCode, 
			Categories_2.MoeenName_L1 , 
			Categories_2.MoeenName_L2 ,
			TrialBalance.Debt, 
			TrialBalance.Credit, 
			TrialBalance.DocTopic_L1 ,
			TrialBalance.DocTopic_L2,
			SORtID
	FROM  (
			SELECT	DocGroups.YearId ,
					0 as serial,
					'-' as DocDate, 
					0 as PrimaryDocNo, 
					0 as SecondaryDocNo, 
					0 AS BedBes, 
					CAST( 0 AS BIGINT ) AS AccCode,
        			SUM(Documents.Debt) AS Debt, 
					SUM(Documents.Credit) AS Credit, 
					'??? C? ?E? ' as DocTopic_L1,  
					'---- ' as DocTopic_L2,
					0 as SORtID
			FROM	Acc.Documents as Documents 
					INNER JOIN acc.DocGroups as DocGroups ON Documents.Serial = DocGroups.Serial 
											AND Documents.YearID =DocGroups.YearID 
											AND Documents.CompanyCode =DocGroups.CompanyCode
			WHERE  (DocGroups.Status >= 1)
					AND (DocGroups.YearID BETWEEN @FromYearID AND @ToYearID)
					AND (DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo)
					AND (
						(DocGroups.DocDate <@DocdateFrom)
						OR (DocGroups.PrimaryDocNo > 0 AND DocGroups.PrimaryDocNo < @PrimaryDocNoFrom)
						OR (DocGroups.SecondaryDocNo < @SecondaryDocNoFrom )
						)
			GROUP BY  DocGroups.YearId            

			UNION ALL

			SELECT    DocGroups.YearId , DocGroups.Serial, DocGroups.DocDate, DocGroups.PrimaryDocNo, DocGroups.SecondaryDocNo, 
						   CASE Documents.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, LEFT(Documents.TopicCode, @LenAccCode) AS AccCode, SUM(Documents.Debt) AS Debt, 
						   SUM(Documents.Credit) AS Credit, DocGroups.DocTopic_L1, DocGroups.DocTopic_L2, DocTypes.SORtID
			FROM    Acc.Documents as Documents INNER JOIN 
						  acc.DocGroups as DocGroups ON  Documents.Serial = DocGroups.Serial AND 
						  Documents.YearID = DocGroups.YearID AND Documents.CompanyCode =DocGroups.CompanyCode LEFT OUTER JOIN
						  acc.DocTypes as DocTypes ON DocGroups.DocTypeCode = DocTypes.DocTypeCode
			WHERE (DocGroups.Status >= 1) AND (DocGroups.DocDate BETWEEN @DocDateFrom AND @DocDateTo )
						 AND (DocGroups.YearID BETWEEN @FromYearID AND @ToYearID)
						 AND (DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo)
						 AND (DocGroups.PrimaryDocNo BETWEEN  @PrimaryDocNoFrom  AND @PrimaryDocNoTo )
						 AND (DocGroups.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo )
            
			GROUP BY DocGroups.YearId ,DocGroups.serial,DocGroups.DocDate, DocGroups.PrimaryDocNo, DocGroups.SecondaryDocNo, CASE Documents.debt WHEN 0 THEN '1' ELSE '0' END , LEFT(Documents.TopicCode, @LenAccCode),
					   DocGroups.DocTopic_L1, DocGroups.DocTopic_L2, DocTypes.SORtID) TrialBalance LEFT OUTER JOIN
					Acc.Categories Categories_2 ON TrialBalance.AccCode = Categories_2.TopicCode
)

GO

CREATE FUNCTION [Acc].[rptBalaceDetaillWithSomeColumn](@DetailCodeFrom Varchar(12)=[0], @DetailCodeto Varchar(12)=[214748364799],
                                           @AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] , 
			                               @DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1] ,@DocTypeCode3_Not integer=[-1] ,
			                               @DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
			                               @SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 			                                        
			                               @DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
                                           @PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
                                           @CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647],
                                           @Status1 varchar(150)='', @Status2  integer=[-1],@FromYearID integer,@ToYearID integer,						
			            @CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0   )
RETURNS table AS  
return
(
SELECT    DocGroups.YearId ,D.DetailCode,   Categories.TopicCode
, case when D.[detailcode]=0 then MoeenName_L1 else Details.DetailName_L1 end AS DetailName
, case when D.[detailcode]=0 then MoeenName_L2 else Details.DetailName_L2 end AS DetailName_L2

, Sum( case when DocTypeCode = 1 then debt else 0 end) AS Firstdebt
, Sum( case when DocTypeCode=1 then Credit else 0 end) AS FirstCredit
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when DocTypeCode=1 then D.CurrencyDebit else 0 end)   END AS FirstCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when DocTypeCode=1 then D.CurrencyCredit else 0 end)  END AS FirstCurrencyCredit


,Sum( case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then [debt] else 0 end) AS Lastbed_OFirst 
,Sum( case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then [Credit] else 0 end) AS Lastbes_OFirst 
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then D.CurrencyDebit else 0 end)   END AS LastCurrencyDebit_OFirst ,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then D.CurrencyCredit else 0 end)  END AS LastCurrencyCredit_OFirst 


,Sum( case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then [debt] else 0 end) AS Lastbed_WFirst
,Sum( case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then [Credit] else 0 end) AS Lastbes_WFirst
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then D.CurrencyDebit else 0 end)   END AS LastCurrencyDebit_WFirst ,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then D.CurrencyCredit else 0 end)  END AS LastCurrencyCredit_WFirst 


,case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (debt-Credit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then [debt]-[Credit] else 0 end)
 else 0 end AS LastBalancebed
,case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (Credit-debt) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then [Credit]-[debt] else 0 end)
 else 0 end AS LastBalancebes
 ,			   case when @CurrencyKind = 0 then 0 
					else case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (CurrencyDebit-CurrencyCredit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then CurrencyDebit-[CurrencyCredit] else 0 end)
 else 0 end   END AS LastBalanceCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (CurrencyCredit-CurrencyDebit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then CurrencyCredit-CurrencyDebit else 0 end)
 else 0 end  END AS LastBalanceCurrencyCredit


,Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then [debt] else 0 end) AS bedIn
,Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then [Credit] else 0 end) AS besIn
,			   case when @CurrencyKind = 0 then 0 
					else Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then CurrencyDebit else 0 end)   END AS CurrencyDebitIn,
			   case when @CurrencyKind = 0 then 0 
					else Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then CurrencyCredit else 0 end)  END AS CurrencyCreditIn


, Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then [debt] else 0 end) AS bedIn_Ofirst
, Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then [Credit] else 0 end) AS besIn_Ofirst

, Sum(case when ([doctypecode]<>1 ) then [debt] else 0 end) AS bedIn_WithoutFirst
, Sum(case when ([doctypecode]<>1 ) then Credit else 0 end) AS besIn_WithoutFirst

,			   case when @CurrencyKind = 0 then 0 
					else Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then CurrencyDebit else 0 end)   END AS CurrencyDebitIn_Ofirst,
			   case when @CurrencyKind = 0 then 0 
					else Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then CurrencyCredit else 0 end)  END AS CurrencyCreditIn_Ofirst


, Sum(D.debt) AS Allbed, Sum(D.Credit) AS Allbes
,			   case when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit)   END AS AllCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  END AS AllCurrencyCredit

,case when Sum([debt]-[Credit])>0 then Sum([debt]-[Credit]) else 0 end AS Balancebed
,case when Sum([Credit]-[debt])>0 then Sum([Credit]-[debt]) else 0 end AS Balancebes 
,			   case when @CurrencyKind = 0 then 0 
					else case when Sum(CurrencyDebit-CurrencyCredit)>0 then Sum(CurrencyDebit-CurrencyCredit) else 0 end   END AS BalanceCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else case when Sum(CurrencyCredit-CurrencyDebit)>0 then Sum(CurrencyCredit-CurrencyDebit) else 0 end  END AS BalanceCurrencyCredit


FROM       Acc.Documents as D INNER JOIN
              acc.DocGroups as DocGroups ON  D.Serial = DocGroups.Serial AND D.YearID =DocGroups.YearID 
                 AND D.CompanyCode = DocGroups.CompanyCode INNER JOIN
              acc.Details as Details  ON D.DetailCode = Details.DetailCode INNER JOIN
              acc.Categories as Categories ON D.TopicCode = Categories.TopicCode

WHERE   (CASE WHEN @DocTypeCode1_Not = '' THEN 1 ELSE 0 END = 1 OR
        (DocGroups.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',')))) AND
		(DocGroups.YearID  BETWEEN @FromYearID  AND  @TOYearID  )  AND
	    (DocGroups.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)  AND 
 		(DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
        (D.DetailCode  BETWEEN  @DetailCodeFrom  AND  @DetailCodeto) AND
        (D.TopicCode  BETWEEN @AccCodeFrom AND @AccCodeTo ) AND
        ((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DocGroups.Status <> 0)) OR
        (DocGroups.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
		(DocGroups.DocDate <= @DocDateTo)

GROUP BY DocGroups.YearId ,D.DetailCode, Details.DetailName_L1, Details.DetailName_L2  ,Categories.TopicCode, Categories.MoeenName_L1,
		 Categories.MoeenName_L2

)

GO

CREATE FUNCTION [Acc].[rptBalaceCtopicWithSomeColumn]    (
															@CTopicCodeFrom Varchar(12)=[0], @CTopicCodeTo Varchar(12)=[214748364799],
														    @AccCodeFrom Varchar(12)=[0]   , @AccCodeTo Varchar(12)=[214748364799] , 
															@DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1] ,
															@DocTypeCode3_Not integer=[-1] ,@DocTypeCodeFrom integer=[0] ,
															@DocTypeCodeTo integer  =[9999] ,@SecondaryDocNoFrom Varchar(12)=[0] ,
															@SecondaryDocNoTo Varchar(12)=[2147483647999],@DocDateFrom Varchar(10)='0001/01/01' ,          
															@DocDateTo  Varchar(10)='9999/99/99' , @PrimaryDocNoFrom  Varchar(12)=[0],
                                                            @PrimaryDocNoTo Varchar(12)=[214748364799] , @CompanyCodeFrom Varchar(12)=[0] ,
                                                            @CompanyCodeTo Varchar(12)=[2147483647],@Status1 varchar(150)='',
															@Status2  integer=[-1],@FromYearID integer,@ToYearID integer ,
						
			            @CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0  
                                                       )
RETURNS table AS  
return
(

SELECT    DocGroups.YearId ,D.CTopicCode,   Categories.TopicCode
, case when D.[CTopicCode]=0 then MoeenName_L1 else CenterTopics.CTopicName_L1 end AS CTopicName_L1
, case when D.[CTopicCode]=0 then MoeenName_L2 else CenterTopics.CTopicName_L2 end AS CTopicName_L2 
, Sum( case when DocTypeCode = 1 then debt else 0 end) AS Firstdebt
, Sum( case when DocTypeCode=1 then Credit else 0 end) AS FirstCredit
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when DocTypeCode=1 then D.CurrencyDebit else 0 end)   END AS FirstCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when DocTypeCode=1 then D.CurrencyCredit else 0 end)  END AS FirstCurrencyCredit

,Sum( case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then [debt] else 0 end) AS Lastbed_OFirst 
,Sum( case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then [Credit] else 0 end) AS Lastbes_OFirst 
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then D.CurrencyDebit else 0 end)   END AS LastCurrencyDebit_OFirst ,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then D.CurrencyCredit else 0 end)  END AS LastCurrencyCredit_OFirst 

,Sum( case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then [debt] else 0 end) AS Lastbed_WFirst
,Sum( case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then [Credit] else 0 end) AS Lastbes_WFirst
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then D.CurrencyDebit else 0 end)   END AS LastCurrencyDebit_WFirst ,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then D.CurrencyCredit else 0 end)  END AS LastCurrencyCredit_WFirst 



,case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (debt-Credit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then [debt]-[Credit] else 0 end)
 else 0 end AS LastBalancebed
,case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (Credit-debt) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then [Credit]-[debt] else 0 end)
 else 0 end AS LastBalancebes
,			   case when @CurrencyKind = 0 then 0 
					else case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (CurrencyDebit-CurrencyCredit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then CurrencyDebit-[CurrencyCredit] else 0 end)
 else 0 end   END AS LastBalanceCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (CurrencyCredit-CurrencyDebit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then CurrencyCredit-CurrencyDebit else 0 end)
 else 0 end  END AS LastBalanceCurrencyCredit


,Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then [debt] else 0 end) AS bedIn
,Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then [Credit] else 0 end) AS besIn
,			   case when @CurrencyKind = 0 then 0 
					else Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then CurrencyDebit else 0 end)   END AS CurrencyDebitIn,
			   case when @CurrencyKind = 0 then 0 
					else Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then CurrencyCredit else 0 end)  END AS CurrencyCreditIn

, Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then [debt] else 0 end) AS bedIn_Ofirst
, Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then [Credit] else 0 end) AS besIn_Ofirst

, Sum(case when ([doctypecode]<>1 ) then [debt] else 0 end) AS bedIn_WithoutFirst
, Sum(case when ([doctypecode]<>1 ) then Credit else 0 end) AS besIn_WithoutFirst

,			   case when @CurrencyKind = 0 then 0 
					else Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then CurrencyDebit else 0 end)   END AS CurrencyDebitIn_Ofirst,
			   case when @CurrencyKind = 0 then 0 
					else Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then CurrencyCredit else 0 end)  END AS CurrencyCreditIn_Ofirst

, Sum(D.debt) AS Allbed, Sum(D.Credit) AS Allbes
,			   case when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit)   END AS AllCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  END AS AllCurrencyCredit

,case when Sum([debt]-[Credit])>0 then Sum([debt]-[Credit]) else 0 end AS Balancebed
,case when Sum([Credit]-[debt])>0 then Sum([Credit]-[debt]) else 0 end AS Balancebes 
,			   case when @CurrencyKind = 0 then 0 
					else case when Sum(CurrencyDebit-CurrencyCredit)>0 then Sum(CurrencyDebit-CurrencyCredit) else 0 end   END AS BalanceCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else case when Sum(CurrencyCredit-CurrencyDebit)>0 then Sum(CurrencyCredit-CurrencyDebit) else 0 end  END AS BalanceCurrencyCredit
,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
				 when @CurrencyKind = 0 then 0 
				 else SUM(D.CurrencyDebit - D.CurrencyCredit)
			   END AS CurrencyBalance
		  -- end of currency 
FROM        Acc.Documents as D INNER JOIN
                      acc.DocGroups as DocGroups 
			 ON  D.Serial = DocGroups.Serial AND D.YearID =DocGroups.YearID AND     
			D.CompanyCode =DocGroups.CompanyCode INNER JOIN
                      acc.CenterTopics as CenterTopics  ON D.CTopicCode = CenterTopics.CTopicCode INNER JOIN
                     
                      acc.Categories as Categories ON D.TopicCode = Categories.TopicCode
left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
WHERE  	(DocGroups.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',') )) AND    	
		(DocGroups.DocTypeCode  BETWEEN @DocTypeCodeFrom  AND  @DocTypeCodeTo  )  AND
		(DocGroups.YearID  BETWEEN @FromYearID  AND  @TOYearID  )  AND
	             (DocGroups.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)  AND 
 		(DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
                          ( D.CTopicCode  BETWEEN  @CTopicCodeFrom  AND  @CTopicCodeto) AND
                           ( D.TopicCode  BETWEEN @AccCodeFrom AND @AccCodeTo ) AND
                            ( DocGroups.Status in (Select part From [Acc].[SplitString] (@Status1,','))) AND
		DocGroups.DocDate <= @DocDateTo
GROUP BY DocGroups.YearId ,D.CTopicCode ,  CenterTopics.CTopicName_L1,  CenterTopics.CTopicName_L2  ,Categories.TopicCode, Categories.MoeenName_L1,
		 Categories.MoeenName_L2
				,case when @CurrencyKind = 0 then null else d.CurrencyType end 
			    ,case when @CurrencyKind = 0 then null else cu.CurrencyCode end 
			    ,case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
)

GO

CREATE FUNCTION [Acc].[rptBalaceKollWithSomeColumn]        (@LenPrvAccCode Varchar(4)=[1] , @LenAccCode Varchar(4)=[2] ,
			                            @DocTypeCode1_Not varchar(150)='' ,@DocTypeCode2_Not integer  =[-1] ,@DocTypeCode3_Not integer=[-1] ,
			                            @DocTypeCodeFrom integer=[0] ,@DocTypeCodeTo integer  =[9999] ,
                            	        @AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] , 
			                            @SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 			                                        
			                            @DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
                                        @PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
                                        @CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
                                        @Status1 Varchar(150)='', @Status2  integer=[-1],@FromYearID Integer ,@ToYearID integer,
						
			            @CurrencyTypeFrom  integer=0  , 
						@CurrencyTypeTo  integer=99999, 
						@CurrencyKind  integer=0   )
RETURNS table AS  
return
(
SELECT     DocGroups.YearId , LEFT(D.TopicCode, @LenAccCode) AS AccCode, LEFT(D.TopicCode, @LenPrvAccCode) AS PrvAccCode

, Sum( case when DocTypeCode = 1 then debt else 0 end) AS Firstdebt
, Sum( case when DocTypeCode=1 then Credit else 0 end) AS FirstCredit
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when DocTypeCode=1 then D.CurrencyDebit else 0 end)   END AS FirstCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when DocTypeCode=1 then D.CurrencyCredit else 0 end)  END AS FirstCurrencyCredit
		  


,Sum( case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then [debt] else 0 end) AS Lastbed_OFirst 
,Sum( case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then [Credit] else 0 end) AS Lastbes_OFirst 
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then D.CurrencyDebit else 0 end)   END AS LastCurrencyDebit_OFirst ,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ( DocGroups.SecondaryDocNo<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom)then D.CurrencyCredit else 0 end)  END AS LastCurrencyCredit_OFirst 



,Sum( case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then [debt] else 0 end) AS Lastbed_WFirst
,Sum( case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then [Credit] else 0 end) AS Lastbes_WFirst
,			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then D.CurrencyDebit else 0 end)   END AS LastCurrencyDebit_WFirst ,
			   case when @CurrencyKind = 0 then 0 
					else SUM(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate] <@DocDateFrom)) then D.CurrencyCredit else 0 end)  END AS LastCurrencyCredit_WFirst 



,case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (debt-Credit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then [debt]-[Credit] else 0 end)
 else 0 end AS LastBalancebed
,case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (Credit-debt) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then [Credit]-[debt] else 0 end)
 else 0 end AS LastBalancebes
,			   case when @CurrencyKind = 0 then 0 
					else case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (CurrencyDebit-CurrencyCredit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then CurrencyDebit-[CurrencyCredit] else 0 end)
 else 0 end   END AS LastBalanceCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else case when(
Sum(case when (DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then (CurrencyCredit-CurrencyDebit) else 0 end)>0) then
Sum(case when(DocGroups.[SecondaryDocNo]<@SecondaryDocNoFrom OR [DocDate]<@DocDateFrom) then CurrencyCredit-CurrencyDebit else 0 end)
 else 0 end  END AS LastBalanceCurrencyCredit



,Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then [debt] else 0 end) AS bedIn
,Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then [Credit] else 0 end) AS besIn
,			   case when @CurrencyKind = 0 then 0 
					else Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then CurrencyDebit else 0 end)   END AS CurrencyDebitIn,
			   case when @CurrencyKind = 0 then 0 
					else Sum(case when(DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo) then CurrencyCredit else 0 end)  END AS CurrencyCreditIn



, Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then [debt] else 0 end) AS bedIn_Ofirst
, Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then [Credit] else 0 end) AS besIn_Ofirst

, Sum(case when ([doctypecode]<>1 ) then [debt] else 0 end) AS bedIn_WithoutFirst
, Sum(case when ([doctypecode]<>1 ) then Credit else 0 end) AS besIn_WithoutFirst

,			   case when @CurrencyKind = 0 then 0 
					else Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then CurrencyDebit else 0 end)   END AS CurrencyDebitIn_Ofirst,
			   case when @CurrencyKind = 0 then 0 
					else Sum(case when ([doctypecode]<>1 AND (DocGroups.[SecondaryDocNo] BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo AND [DocDate] BETWEEN @DocDateFrom AND @DocDateTo)) then CurrencyCredit else 0 end)  END AS CurrencyCreditIn_Ofirst



, Sum(D.debt) AS Allbed, Sum(D.Credit) AS Allbes
,			   case when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit)   END AS AllCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  END AS AllCurrencyCredit




,case when Sum([debt]-[Credit])>0 then Sum([debt]-[Credit]) else 0 end AS Balancebed
,case when Sum([Credit]-[debt])>0 then Sum([Credit]-[debt]) else 0 end AS Balancebes 
,			   case when @CurrencyKind = 0 then 0 
					else case when Sum(CurrencyDebit-CurrencyCredit)>0 then Sum(CurrencyDebit-CurrencyCredit) else 0 end   END AS BalanceCurrencyDebit,
			   case when @CurrencyKind = 0 then 0 
					else case when Sum(CurrencyCredit-CurrencyDebit)>0 then Sum(CurrencyCredit-CurrencyDebit) else 0 end  END AS BalanceCurrencyCredit



 ,
			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName

FROM acc.DocGroups as DocGroups INNER JOIN 
       (acc.Categories as Categories INNER JOIN acc.Documents as D ON Categories.TopicCode = D.TopicCode) ON     
       D.Serial = DocGroups.Serial AND D.YearID = DocGroups.YearID AND D.CompanyCode = DocGroups.CompanyCode
left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID			
WHERE   (CASE WHEN @DocTypeCode1_Not = '' THEN 1 ELSE 0 END = 1 OR
        (DocGroups.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',') ))) AND
		(DocGroups.YearId  BETWEEN @FromYearID  AND  @ToYearID  )  AND
	    (DocGroups.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)  AND 
 		(DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
 		((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DocGroups.Status <> 0)) OR
        (DocGroups.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
	    (DocGroups.DocDate <= @DocDateTo)

GROUP BY  DocGroups.YearId ,LEFT(D.TopicCode, @LenPrvAccCode) ,LEFT(D.TopicCode,@LenAccCode)

				,case when @CurrencyKind = 0 then null else d.CurrencyType end 
			    ,case when @CurrencyKind = 0 then null else cu.CurrencyCode end 
			    ,case when @CurrencyKind = 0 then null else cu.CurrenciesName end 

HAVING ( LEFT(D.TopicCode, @LenAccCode) BETWEEN @AccCodeFrom AND @AccCodeTo ) 
)

GO

CREATE  FUNCTION [Acc].[rptDailyDocuments]   (
					@LenAccCode Varchar(4)=[2], @DocDateFrom  Varchar(10)=[77/12/29] , @DocDateTo  Varchar(10)='9999/99/99' ,@FromYearID integer,@ToYearID integer,
					@CompanyFrom int=0, @CompanyTo int=9999,@ByDocSerial bit=0)
RETURNS table AS  
return
(
SELECT case when  @ByDocSerial=1 then  DocGroups.Serial else 0 end Serial,DocGroups.CompanyCode, DocGroups.YearId ,DocGroups.DocDate,  (case when debt >0 then 0 else 1 end)   AS b,  LEFT(Documents.TopicCode, @LenAccCode) as CodeKol,
	Sum(Documents.debt)  AS bed, Sum(Documents.credit) AS bes,
             min(Documents.Comment_L1) as Comment_L1,
	Min(DocGroups.SecondaryDocNo) AS DocNo,
	Fitful.FitfulID AS Doc_No

FROM acc.DocGroups as DocGroups  INNER JOIN  acc.Documents as Documents ON Documents.Serial = DocGroups.Serial AND Documents.YearID =DocGroups.YearID AND     
			Documents.CompanyCode =DocGroups.CompanyCode cross join  Fitful
WHERE (((DocGroups.DocDate) between @DocDateFrom and @DocDateTo  ))AND  (DocGroups.YearID BETWEEN @FromYearId AND @ToYearID)
       and (DocGroups.CompanyCode between @CompanyFrom and @CompanyTo) 
GROUP BY case when  @ByDocSerial=1  then  DocGroups.Serial else 0 end, DocGroups.CompanyCode,Fitful.FitfulID,DocGroups.YearId ,DocGroups.DocDate,  case when debt >0 then 0 else 1 end  ,  LEFT(Documents.TopicCode, @LenAccCode)

)
GO

CREATE FUNCTION [Acc].[RptPORtionDocs] 
-- =============================================
-- AuthOR:		<Name , Mohammad Hassan Rezaei >
-- c r e a t e date: <Create Date,1387/03/18,>
-- Description:	<Description, اين گزارش جهت نمايش اسناد حسابداري مربوط به تسهيم هزينه 
-- ساخته شده است و براي شركتهايي كه عناوين هزينه در سطح معيين تعريف شده اند كاربرد دارد  >
-- =============================================
(	

	@TopicCodeFrom  int ,  @TopicCodeTo int , @DocDateFrom Char(10) , @DocDateTo Char(10)

)
RETURNS TABLE 
AS
RETURN 
(
SELECT     AccCode, AccName, AidInfoName, Debt, Credit, CTopicCode
FROM
(
	SELECT	RIGHT(Documents.TopicCode, 3) AS AccCode, Categories.MoeenName_L1 AS AccName, 
			' نقل از قبل ' AS AidInfoName, SUM(Documents.Debt) AS Debt, SUM(Documents.Credit) AS Credit, 
			Documents.CTopicCode, '' AS DocDate, 0 AS SecondaryDocNo
	FROM	acc.DocGroups as DocGroups INNER JOIN
			acc.Documents as Documents  ON Documents.Serial = DocGroups.Serial AND Documents.YearID =DocGroups.YearID AND     
			Documents.CompanyCode =DocGroups.CompanyCode INNER JOIN
            acc.Categories as Categories ON Documents.TopicCode = Categories.TopicCode
	WHERE	(DocGroups.DocTypeCode not in ( 3,4)) AND 
			(Documents.TopicCode BETWEEN @TopicCodeFrom AND @TopicCodeTo) AND 
			(DocGroups.DocDate BETWEEN @DocDateFrom AND @DocDateTo )
	GROUP BY RIGHT(Documents.TopicCode, 3), Categories.MoeenName_L1, Documents.CTopicCode
                        
	UNION ALL
	
	SELECT	case when (Left(Documents_1.TopicCode, 1) in( 6 , 7)) then 
				RIGHT(Documents_1.TopicCode, 3) 
			else 
				Documents_1.TopicCode 
			end AS AccCode, 
			Categories_1.MoeenName_L1 AS AccName, 
			DocGroups_1.DocDate + STR(DocGroups_1.SecondaryDocNo) AS AidInfoName, SUM(Documents_1.Debt) AS Debt, 
			SUM(Documents_1.Credit) AS Credit, Documents_1.CTopicCode, DocGroups_1.DocDate, DocGroups_1.SecondaryDocNo
	FROM	acc.DocGroups AS DocGroups_1 INNER JOIN
			acc.Documents AS Documents_1 ON 
			Documents_1.Serial = DocGroups_1.Serial AND Documents_1.YearID =DocGroups_1.YearID AND     
			Documents_1.CompanyCode =DocGroups_1.CompanyCode
			INNER JOIN
			acc.Categories AS Categories_1 ON Documents_1.TopicCode = Categories_1.TopicCode
	WHERE	(DocGroups_1.DocTypeCode = 3) AND 
			(DocGroups_1.DocDate BETWEEN @DocDateFrom AND @DocDateTo )
	GROUP BY case when (Left(Documents_1.TopicCode, 1) in( 6 , 7)) then 
				RIGHT(Documents_1.TopicCode, 3) 
			else 
				Documents_1.TopicCode 
			end	, Categories_1.MoeenName_L1, DocGroups_1.DocDate + STR(DocGroups_1.SecondaryDocNo), 
			Documents_1.CTopicCode, DocGroups_1.DocDate, DocGroups_1.SecondaryDocNo
) AS AllDoc
)



GO

CREATE FUNCTION [Acc].[BudgetTopicBook] 
(	
@BudgetTopicFrom int, @BudgetTopicTo int, @DateFrom Varchar(10), @DateTo Varchar(10), @CompanyCode varchar(300), 
@AccTopicCodeFrom bigint, @AccTopicCodeTo bigint, @YearIDFrom int, @YearIDTo int
,@UserAdmin int = 0 ,@UserID int = 0 
)
-- =============================================
-- Author:		<Mehdi Kahdooei>
-- c r e a t e date: <Create Date 2016-01-09>
-- Description:	<دفتر اعتيارات>
-- =============================================
RETURNS TABLE 
AS
RETURN 
(
select *,BudgetPrice-AccPrice as Balance,0 CurrencyType 
		,0 CurrencyCode 
		,'' CurrenciesName 
		,0.0 CurrencyDebit
		,0.0 CurrencyCredit
		,0.0 Currencybalance from (
SELECT	Acc.Interfaces.BudgetEffect AS BudetKind , Acc.Budgets.CompanyCode, 
		Acc.Budgets.BudgetSerial as SecondaryDocNo ,Acc.Budgets.BudgetSerial as PrimaryDocNo, 
		Acc.Budgets.BudgetDate as DocDate ,
		Acc.BudgetItems.BudgetTopicID,
		case when Acc.Interfaces.BudgetEffect =1 then  Acc.BudgetItems.Bed * Acc.BudgetItems.Bes  else 0 end as BudgetPrice ,
		case when Acc.Interfaces.BudgetEffect =2 then  Acc.BudgetItems.Bed * Acc.BudgetItems.Bes  else 0 end as BudgetCommitPrice ,
		0 as AccPrice , Acc.BudgetItems.ItemNote_L1
FROM	Acc.BudgetItems INNER JOIN
		Acc.Budgets ON Acc.BudgetItems.BudgetID = Acc.Budgets.BudgetID and Acc.BudgetItems.CompanyCode = Acc.Budgets.CompanyCode INNER JOIN
		Acc.Interfaces ON Acc.Budgets.InterfaceID = Acc.Interfaces.InterfaceID
		WHERE (Acc.BudgetItems.BudgetTopicID BETWEEN @BudgetTopicFrom AND @BudgetTopicTo )
              AND (Acc.Budgets.BudgetDate BETWEEN @DateFrom AND @DateTo )
			  AND ((case @Companycode when '' then 1 else 0 end = 1) or Acc.Budgets.CompanyCode in (Select part From [Acc].[SplitString] (@CompanyCode,',')))
        AND(Acc.Budgets.YearID BETWEEN @YearIDFrom AND @YearIDTo ) 

		AND ((@UserAdmin = 1) OR (Acc.Budgets.CompanyCode in(select n_subcompany from farasystems.dbo.operatorcompanies where (userid = @UserID))))
		 
-------------------
Union all 
-------------------
SELECT	10  AS BudetKind , DG.CompanyCode,
		DG.SecondaryDocNo, DG.PrimaryDocNo, DG.DocDate ,
		D.BudgetTopicID, 0 as BudgetPrice ,	0 as BudgetCommitPrice ,
		D.Debt - D.Credit as AccPrice , D.Comment_L1
FROM	Acc.Documents D INNER JOIN
		Acc.DocGroups DG ON D.Serial = DG.Serial AND 
			D.YearID = DG.YearID AND 
			D.CompanyCode = DG.CompanyCode
WHERE	(D.YearID BETWEEN @YearIDFrom AND @YearIDTo ) AND (D.TopicCode BETWEEN @AccTopicCodeFrom AND @AccTopicCodeTo)
        AND (D.BudgetTopicID BETWEEN @BudgetTopicFrom AND @BudgetTopicTo )
		AND (DG.DocDate BETWEEN @DateFrom AND @DateTo )
		AND ((case @Companycode when '' then 1 else 0 end = 1) or DG.CompanyCode in (Select part From [Acc].[SplitString] (@CompanyCode,',')))
		AND ((@UserAdmin = 1) OR (DG.CompanyCode in(select n_subcompany from farasystems.dbo.operatorcompanies where (userid = @UserID))))
) BudgetBalance  

)

GO

CREATE FUNCTION [Acc].[RptBudgetSettlement] 
(	
@BudgetTopicFrom int, @BudgetTopicTo int, @DateFrom Varchar(10), @DateTo Varchar(10), @CompanyCode Varchar(300), 
@AccTopicCodeFrom bigint, @AccTopicCodeTo bigint, @YearID int,@UserAdmin int = 0 ,@UserID int = 0 

)
-- =============================================
-- Author:		<Mehdi Kahdooei>
-- c r e a t e date: <Create Date 2016-01-09>
-- Description:	<تفريغ بودجه>
-- =============================================
RETURNS TABLE 
AS
RETURN 
(
select BudgetBalance.BudgetTopicID,acc.BudgetTopics.BudgetCaption_L1, acc.BudgetTopics.BudgetCaption_L2, SUM(BudgetBalance.BudgetPrice) as BudgetPrice, 
       SUM(BudgetBalance.BudgetCommitPrice) as BudgetCommitPrice, SUM(BudgetBalance.AccPrice) as AccPrice, 
	   (SUM(BudgetBalance.BudgetPrice)-SUM(BudgetBalance.AccPrice)) as Balanc 
from (
SELECT     Acc.Interfaces.BudgetEffect AS BudetKind, Acc.Budgets.CompanyCode, Acc.Budgets.BudgetSerial AS SecondaryDocNo, Acc.Budgets.BudgetSerial AS PrimaryDocNo, Acc.Budgets.BudgetDate AS DocDate, Acc.BudgetItems.BudgetTopicID, 
                  CASE WHEN Acc.Interfaces.BudgetEffect = 1 THEN Acc.BudgetItems.Bed * Acc.BudgetItems.Bes ELSE 0 END AS BudgetPrice, CASE WHEN Acc.Interfaces.BudgetEffect = 2 THEN Acc.BudgetItems.Bed * Acc.BudgetItems.Bes ELSE 0 END AS BudgetCommitPrice, 0 AS AccPrice, 
                  Acc.BudgetItems.ItemNote_L1
FROM        Acc.BudgetItems INNER JOIN
                  Acc.Budgets ON Acc.BudgetItems.BudgetID = Acc.Budgets.BudgetID 
				  AND Acc.BudgetItems.CompanyCode = Acc.Budgets.CompanyCode 
				  INNER JOIN
                  Acc.Interfaces ON Acc.Budgets.InterfaceID = Acc.Interfaces.InterfaceID
		WHERE (Acc.BudgetItems.BudgetTopicID BETWEEN @BudgetTopicFrom AND @BudgetTopicTo )
              AND (Acc.Budgets.BudgetDate BETWEEN @DateFrom AND @DateTo )
			  AND ((case @Companycode when '' then 1 else 0 end = 1) or Acc.Budgets.CompanyCode in (Select part From [Acc].[SplitString] (@CompanyCode,',')))
		AND ((@UserAdmin = 1) OR (Acc.Budgets.CompanyCode in(select n_subcompany from farasystems.dbo.operatorcompanies where (userid = @UserID))))
-------------------
Union all 
-------------------
SELECT	10  AS BudetKind , DG.CompanyCode,
		DG.SecondaryDocNo, DG.PrimaryDocNo, DG.DocDate ,
		D.BudgetTopicID, 0 as BudgetPrice ,	0 as BudgetCommitPrice ,
		D.Debt - D.Credit as AccPrice , D.Comment_L1
FROM	Acc.Documents D INNER JOIN
		Acc.DocGroups DG ON D.Serial = DG.Serial AND 
			D.YearID = DG.YearID AND 
			D.CompanyCode = DG.CompanyCode
WHERE	(D.YearID = @YearID) AND (D.TopicCode BETWEEN @AccTopicCodeFrom AND @AccTopicCodeTo)
        AND (D.BudgetTopicID BETWEEN @BudgetTopicFrom AND @BudgetTopicTo )
		AND (DG.DocDate BETWEEN @DateFrom AND @DateTo )
		AND ((case @Companycode when '' then 1 else 0 end = 1) or DG.CompanyCode in (Select part From [Acc].[SplitString] (@CompanyCode,',')))
		AND ((@UserAdmin = 1) OR (DG.CompanyCode in(select n_subcompany from farasystems.dbo.operatorcompanies where (userid = @UserID))))
)  
 BudgetBalance inner join acc.BudgetTopics
                 ON BudgetBalance.BudgetTopicID = acc.BudgetTopics.BudgetTopicID
group by BudgetBalance.BudgetTopicID,acc.BudgetTopics.BudgetCaption_L1,acc.BudgetTopics.BudgetCaption_L2

)


GO

CREATE FUNCTION [Acc].[Rptjournal]  (@LenAccCode int=2, @DocTypeCode varchar(1000)='' ,@CompanyCodeFrom integer=[0], @CompanyCodeTo integer=[2147483647] ,
				@SecondaryDocNoFrom integer=[0], @SecondaryDocNoTo integer=[2147483647999] , 
				@PrimaryDocNoFrom  integer=[0], @PrimaryDocNoTo integer=[214748364799] ,
				@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
				@TopicCodeForm integer=[0], @TopicCodeTo integer=[2147483647], @DetailCodeForm integer=[0] , @DetailCodeTo integer=[2147483647],
				@CTopicCodeForm integer=[0], @CTopicCodeTo integer=[2147483647] , @CTopicCode2Form integer=[0] , @CTopicCode2To integer=[2147483647],
                @CTopicCode3Form integer=[0] , @CTopicCode3To integer=[2147483647], @DocStatus VARCHAR(1000)=[''], @FromYearID Integer =[0],@ToYearID integer=[9999] )
RETURNS table AS  
return 
(
SELECT   D.Serial, DG.SecondaryDocNo, DG.PrimaryDocNo , DG.DocTopic_L1,
                      DG.DocDate, LEFT(D.TopicCode, @LenAccCode) AS AccCode, 
                       CK.MoeenName_L1 AS KolName_L1, 
                       D.TopicCode, C.MoeenName_L1, 
                      D.DetailCode, Dt.DetailName_L1, D.CTopicCode, 
                      C1.CTopicName_L1, D.CTopicCode2, C2.CTopicName2_L1, 
					  D.ctopiccode3, C3.CTopicName3_L1, D.Comment_L1, D.Debt, 
					  D.Credit, D.BudgetID, D.ProjectID, D.AidDocNo, D.AidDocdate, 
					  D.AidAmount, D.ID, DG.CompanyCode, Co.CompanyName_L1,
		(CASE WHEN (D.CurrencyType <> 0) AND (D.Debt > 0) THEN D.AidAmount ELSE 0 END) AS ArzDebt , 
		(CASE WHEN (D.CurrencyType <> 0) AND (D.Credit > 0) THEN D.AidAmount ELSE 0 END) AS ArzCredit,
		D.CurrencyType ,Cur.CurrenciesName COLLATE Arabic_CI_AS as CurrenciesName		

FROM         Acc.DocGroups DG INNER JOIN
                      Acc.Documents D ON DG.Serial = D.Serial AND DG.CompanyCode = D.CompanyCode AND 
                      DG.YearID = D.YearID INNER JOIN
                      Acc.Details Dt ON D.DetailCode = Dt.DetailCode INNER JOIN
                      Acc.Categories C ON D.TopicCode = C.TopicCode INNER JOIN
                      Acc.CenterTopics C1 ON D.CTopicCode = C1.CTopicCode INNER JOIN
                      Acc.CenterTopics2 C2 ON D.CTopicCode2 = C2.CTopicCode2 INNER JOIN
                      Acc.CTopicCode3 C3 ON C3.CTopicCode3 = D.ctopiccode3 INNER JOIN
					  Acc.Companies Co ON Co.CompanyCode = DG.CompanyCode  left outer join 
		              Acc.Currencies Cur on D.CurrencyType =Cur.CurrenciesID
					  INNER JOIN Acc.Categories Ck ON LEFT(D.TopicCode, @LenAccCode) = Ck.TopicCode

WHERE     ( DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo)  
                    AND ( DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)  
                    AND ( DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo)  
                    AND ( D.TopicCode BETWEEN @TopicCodeForm AND @TopicCodeTo ) 
                    AND ( D.DetailCode BETWEEN @DetailCodeForm AND @DetailCodeTo ) 
                    AND ( D.CTopicCode BETWEEN @CTopicCodeForm AND @CTopicCodeTo ) 
                    AND ( D.CTopicCode2 BETWEEN @CTopicCode2Form AND @CTopicCode2To )   
					AND ( D.CTopicCode3 BETWEEN @CTopicCode3Form AND @CTopicCode3To )   
                    AND ((@DocStatus = '' and (DG.Status <> 0)) OR DG.Status IN (Select part From [Acc].[SplitString] (@DocStatus,',')) )
					AND ( DG.YearID BETWEEN @FromYearID AND @ToYearID )
					AND ( DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo)
                    AND	(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode,','))) 
)

GO

CREATE FUNCTION [Acc].[rptMonthDocuments]   (
												@LenAccCode Varchar(4)=[2] ,@MonthFrom Varchar(4)=[01] , 
												@MonthTo Varchar(4)=[12],@DateFrom Varchar(10)=[00/00/00] ,
												@DateTo Varchar(10)=[99/99/99],@FromYearID integer, @ToYearID integer,
												@CompanyFrom int=0, @CompanyTo int=9999,
												@SecondaryDocNoFrom int=0, @SecondaryDocNoTo int=2147483647999,
												@PrimaryDocNoFrom int=0, @PrimaryDocNoTo int=2147483647999
												
											)
RETURNS table AS  
return
(
--SELECT DG.YearId ,substring(DG.DocDate,6,2) as docdate ,substring(DG.DocDate,1,4) as docyear,
--    (case when debt >0 then 0 else 1 end)   AS b,  Cast(LEFT(Documents.TopicCode, @LenAccCode) as int) as CodeKol,
--	Sum(Documents.debt)  AS bed, Sum(Documents.credit) AS bes, Sum(Documents.debt-Documents.credit)as Balance,
--	case when (DG.DocTypeCode = 1) AND ((c.rptMD & 1 ) <> 0)  then '0' 
--	     when (DG.DocTypeCode = 4) AND ((c.rptMD & 2 ) <> 0) then '98' 
--	     when (DG.DocTypeCode = 5)AND ((c.rptMD & 4 ) <> 0) then '99' 
--    else 	abs(substring(DG.DocDate, 6, 2)) end   AS DocNo, 
--	case when (DG.DocTypeCode = 1) AND ((c.rptMD & 1 ) <> 0)  then '0' 
--	     when (DG.DocTypeCode = 4) AND ((c.rptMD & 2 ) <> 0) then '98' 
--	     when (DG.DocTypeCode = 5)AND ((c.rptMD & 4 ) <> 0) then '99' 
--    else 	abs(substring(DG.DocDate, 6, 2)) end    AS Doc_No

--FROM acc.DocGroups DG  INNER JOIN  acc.Documents as  Documents 
--		ON  Documents.Serial = DG.Serial AND Documents.YearID =DG.YearID AND     
--			Documents.CompanyCode =DG.CompanyCode CROSS JOIN acc.config C
--WHERE  abs(substring(DG.DocDate,6,2)) BETWEEN @MonthFrom AND @MonthTo 
--             AND (DG.DocDate BETWEEN @DateFrom AND @DateTo) AND (DG.YearID BETWEEN @FromYearID AND @ToYearID)
--           AND (DG.CompanyCode BETWEEN @CompanyFrom AND @CompanyTo)
--AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo) 
--AND(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)
             
--GROUP BY   DG.YearId, substring(DG.DocDate,1,4),substring(DG.DocDate,6,2) , 
--           case when debt >0 then 0 else 1 end  ,   Cast(LEFT(Documents.TopicCode, @LenAccCode) as int)
--		   ,case when (DG.DocTypeCode = 1) AND ((c.rptMD & 1 ) <> 0)  then '0' 
--	     when (DG.DocTypeCode = 4) AND ((c.rptMD & 2 ) <> 0) then '98' 
--	     when (DG.DocTypeCode = 5)AND ((c.rptMD & 4 ) <> 0) then '99' 
--    else 	abs(substring(DG.DocDate, 6, 2)) end  

SELECT DG.YearId ,replace(substring(DG.DocDate,0,8) ,'/','')as docdate ,  
(case when debt >0 then 0 else 1 end)   AS b,  Cast(LEFT(D.TopicCode, @LenAccCode) as int) as CodeKol,
	Sum(D.debt)  AS bed, Sum(D.credit) AS bes, Sum(D.debt-D.credit)as Balance,
	case when (DG.DocTypeCode = 1) AND ((c.rptMD & 1 ) <> 0)  then '0' 
	     when (DG.DocTypeCode = 4) AND ((c.rptMD & 2 ) <> 0) then '98' 
	     when (DG.DocTypeCode = 5)AND ((c.rptMD & 4 ) <> 0) then '99' 
    else 	abs(substring(DG.DocDate, 6, 2))--*/   abs( replace(substring(DG.DocDate,0,8) ,'/',''))
      
       end  AS DocNo, 
	case when (DG.DocTypeCode = 1) AND ((c.rptMD & 1 ) <> 0)  then '0' 
	     when (DG.DocTypeCode = 4) AND ((c.rptMD & 2 ) <> 0) then '98'
	     when (DG.DocTypeCode = 5)AND ((c.rptMD & 4 ) <> 0) then '99'
    else 	abs(substring(DG.DocDate, 6, 2))--*/ abs( replace(substring(DG.DocDate,0,8) ,'/','')) 
	end  
	  AS Doc_No

FROM acc.DocGroups as DG INNER JOIN  acc.Documents as  D
		ON  D.Serial = DG.Serial AND D.YearID =DG.YearID AND     
			D.CompanyCode =DG.CompanyCode CROSS JOIN acc.config C
WHERE  abs(substring(DG.DocDate, 6, 2)) BETWEEN @MonthFrom AND @MonthTo 
             AND (DG.DocDate BETWEEN @DateFrom AND @DateTo)
			  AND (DG.YearID BETWEEN @FromYearID AND @ToYearID)
			 AND (DG.CompanyCode between @CompanyFrom AND @CompanyTo)
AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo) 
AND(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)
             
GROUP BY   DG.YearId ,  substring(DG.DocDate,0,8)   ,  case when debt >0 then 0 else 1 end  
,   Cast(LEFT(D.TopicCode, @LenAccCode) as int),
	case when (DG.DocTypeCode = 1) AND ((c.rptMD & 1 ) <> 0)  then '0'
	     when (DG.DocTypeCode = 4) AND ((c.rptMD & 2 ) <> 0) then '98'
	     when (DG.DocTypeCode = 5)AND ((c.rptMD & 4 ) <> 0) then '99'
    else 	abs(substring(DG.DocDate, 6, 2))--*/ abs( replace(substring(DG.DocDate,0,8) ,'/',''))
	end 



)



 
GO

CREATE FUNCTION [Acc].[UpdateCategories]   ( 
                                             @LenAccCode Varchar(4)=[1] ,
                                             @OldTopicCode varchar(20)=[1] ,
                                             @NewTopicCode varchar(20)=[2]
                                           )

RETURNS table AS  
return
(

select       TopicCode , @NewTopicCode + SUBSTRING(LTRIM(STR(TopicCode)), @LenAccCode +1 , 50) as NewTopicCode
from    acc.Categories
WHERE     (LEFT(TopicCode, @LenAccCode) = @OldTopicCode )


)
  


 
GO

CREATE FUNCTION [Acc].[UpdateCompanyCode]   ( @LenCompanyCode Varchar(4)=[1] ,@OldCompanyCode varchar(20)=[1] ,@NewCompanyCode varchar(20)=[2] )

RETURNS table AS  
return
(

select      CompanyCode , @NewCompanyCode + SUBSTRING(LTRIM(STR(CompanyCode)), @LenCompanyCode +1 , 50) as NewTopicCode
from    acc.Companies
WHERE     (LEFT(CompanyCode, @LenCompanyCode) = @OldCompanyCode )


)

GO

CREATE  FUNCTION [Acc].[RptPORtionDocs_Koll] 
-- =============================================
-- AuthOR:		<Name , Mohammad Hassan Rezaei >
-- c r e a t e date: <Create Date,1387/03/18,>
-- Description:	<Description, اين گزارش جهت نمايش اسناد حسابداري مربوط به تسهيم هزينه 
-- ساخته شده است و براي شركتهايي كه عناوين هزينه در سطح معيين تعريف شده اند كاربرد دارد  >
-- =============================================
(	

	@TopicCodeFrom  int ,  @TopicCodeTo int , @DocDateFrom Char(10) , @DocDateTo Char(10)

)
RETURNS TABLE 
AS
RETURN 
(
SELECT     AccCode, AidInfoName, Debt, Credit, CTopicCode
FROM
(
SELECT     LEFT(Documents.TopicCode, 3) AS AccCode, ' نقل از قبل ' AS AidInfoName, 
			SUM(Documents.Debt) AS Debt, SUM(Documents.Credit) AS Credit, 
                      Documents.CTopicCode, '' AS DocDate, 0 AS SecondaryDocNo
FROM	acc.DocGroups as DocGroups INNER JOIN
		acc.Documents AS Documents ON Documents.Serial = DocGroups.Serial AND Documents.YearID =DocGroups.YearID AND     
			Documents.CompanyCode =DocGroups.CompanyCode
WHERE	(DocGroups.DocTypeCode NOT IN (3, 4)) AND 
		(DocGroups.DocDate BETWEEN @DocDateFrom AND @DocDateTo) AND 
		(LEFT(Documents.TopicCode, 3) BETWEEN @TopicCodeFrom AND @TopicCodeTo)
GROUP BY Documents.CTopicCode, LEFT(Documents.TopicCode, 3)

                       
UNION ALL
	
SELECT	 LEFT(Documents_1.TopicCode, 3) AS AccCode, 
		DocGroups_1.DocDate + STR(DocGroups_1.SecondaryDocNo) AS AidInfoName, 
		SUM(Documents_1.Debt) AS Debt, SUM(Documents_1.Credit) AS Credit, 
		Documents_1.CTopicCode, DocGroups_1.DocDate, DocGroups_1.SecondaryDocNo
FROM	acc.DocGroups AS DocGroups_1 INNER JOIN
		acc.Documents AS Documents_1 ON 
	Documents_1.Serial = DocGroups_1.Serial AND Documents_1.YearID =DocGroups_1.YearID AND     
			Documents_1.CompanyCode =DocGroups_1.CompanyCode	
		
WHERE	(DocGroups_1.DocTypeCode = 3) AND 
		(DocGroups_1.DocDate BETWEEN @DocDateFrom AND @DocDateTo )
GROUP BY LEFT(Documents_1.TopicCode, 3) , DocGroups_1.DocDate + STR(DocGroups_1.SecondaryDocNo), 
		Documents_1.CTopicCode, DocGroups_1.DocDate, DocGroups_1.SecondaryDocNo
) AS AllDoc
)  
  

GO

CREATE FUNCTION [Acc].[DateDifferenceDoc]
        (@SecondaryDocNoFrom INT, @SecondaryDocNoTo INT, @PrimaryDocNoFrom INT, @PrimaryDocNoTo INT,
         @DocDateFrom CHAR(10), @DocDateTo CHAR(10), @AidDocdateFrom CHAR(10), @AidDocdateTo CHAR(10), @TopicCodeDetailCode VARCHAR(1000) , @StateFrom TINYINT, @StateTo TINYINT)
RETURNS @tt TABLE(SecondaryDocNo INT, PrimaryDocNo INT, Docdate CHAR(10), AidDocdate CHAR(10), 
                  TopicCode INT, DetailCode INT, Comment_L1 VARCHAR(300), Debt MONEY, Credit MONEY,
                  DocDiff INT) 
AS
BEGIN
	DECLARE @t TABLE(SecondaryDocNo INT, PrimaryDocNo INT, DocDate CHAR(10), AidDocdate CHAR(10), 
	                 MiladiAidDocdate DATETIME,
                     TopicCode INT, DetailCode INT, Comment_L1 VARCHAR(300), Debt MONEY, Credit MONEY, Rown INT IDENTITY(1,1)) 
	
	INSERT INTO @t(SecondaryDocNo, PrimaryDocNo, DocDate, AidDocdate, MiladiAidDocdate, TopicCode, DetailCode, Comment_L1,
	                Debt, Credit)
	
	SELECT SecondaryDocNo, PrimaryDocNo, DocDate, AidDocdate, dbo.ShamsiToMiladi(AidDocdate), TopicCode, DetailCode, Comment_L1,
	          Debt, Credit 
    FROM   Acc.DocGroups DG INNER JOIN
              Acc.Documents D ON DG.Serial = D.Serial AND DG.YearID = D.YearID AND 
              DG.CompanyCode = D.CompanyCode
    WHERE  RTRIM(LTRIM(STR(TopicCode)))+'-'+RTRIM(LTRIM(STR(DetailCode))) = @TopicCodeDetailCode
              AND (SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo)
              AND (PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)
              AND (DocDate BETWEEN @DocDateFrom AND @DocDateTo)
              AND (Status BETWEEN @StateFrom AND @StateTo)
              AND (AidDocdate BETWEEN @AidDocdateFrom AND @AidDocdateTo)
	ORDER BY AidDocdate

	INSERT INTo @tt
    SELECT QEven.SecondaryDocNo, QEven.PrimaryDocNo, QEven.DocDate, QEven.AidDocdate,
            QEven.TopicCode, QEven.DetailCode, QEven.Comment_L1, QEven.Debt, QEven.Credit, DATEDIFF(DAY, QEven.MiladiAidDocdate, QOdd.MiladiAidDocdate) 
    FROM @t QEven INNER JOIN (SELECT * FROM  @t) QOdd ON QEven.Rown = QOdd.Rown -1
    UNION ALL 
    SELECT QEven1.SecondaryDocNo, QEven1.PrimaryDocNo, QEven1.DocDate, QEven1.AidDocdate,
            QEven1.TopicCode, QEven1.DetailCode, QEven1.Comment_L1, QEven1.Debt, QEven1.Credit, DATEDIFF(DAY, QEven1.MiladiAidDocdate, dbo.ShamsiToMiladi(@AidDocdateTo))
    FROM @t QEven1
    WHERE Rown = (SELECT MAX(Rown) FROM @t)
    RETURN
END

GO

CREATE FUNCTION [dbo].[bsell_variance] 
(	
  @RType VARCHAR(500),@YearFrom INT,@YearTo INT

)
RETURNS TABLE 
AS
RETURN 
(
    SELECT 1 as kind, R.ReciptID as Serial, R.StoreID as  CompanyCode, R.YearID, R.ReciptID as id, 
           R.ReciptNumber as  SecondaryDocNo, 0 as PrimaryDocNo, r.ReciptDate as docdate,0 as Row,
           0 as AccCode1, cast(R.AidNumber as varchar(30)) as  AccName1, 0 as AccCode2, 
           R.AidDate as  AccName2, 0 as AccCode3, null as AccName3,
           'مشتری: '+LTRIM(R.PersonID1)+' , ''انبار: '+LTRIM(R.StoreID) as  Comment,
           SUM(RI.TotalOutputPrice) as Debt,SUM(RI.TotalInputPrice) as Credit,
           R.ReciptNumber as AidNo, R.DocDate as AidDate, 0 as DocumentId,0 as VarianceCode, r.DocNo as docNo
    FROM
           dbo.Recipts as R INNER JOIN dbo.ReciptItems as RI  ON R.ReciptID=RI.ReciptID and 
           r.YearID=ri.YearID and r.ServerID=ri.ServerID
               
    WHERE  R.ReciptType in (select part from dbo.SplitString(@RType,','))
           AND R.YearID BETWEEN @YearFrom And @YearTo
          
    GROUP BY
            R.ReciptID, R.StoreID, R.YearID, r.ReciptDate, R.AidNumber, R.AidDate,
           'مشتری: '+LTRIM(R.PersonID1)+' , ''انبار: '+LTRIM(R.StoreID),
            R.ReciptNumber ,R.DocDate ,r.DocNo
)
GO

CREATE FUNCTION   [Acc].[CheckAccCode]( @TopicCode bigint ,@DetailCode int ,@CtopicCode1 int ,@CtopicCode2 int, @CtopicCode3 int ) 
RETURNS table AS  
return
(
SELECT   @TopicCode AS Moeen,
		(SELECT COUNT(*) AS Expr1 FROM  Acc.Categories LEFT OUTER JOIN Acc.CategoriesForUse 
               ON Acc.Categories.TopicCode = Acc.CategoriesForUse.PrvTopicCode
               WHERE (Acc.CategoriesForUse.PrvTopicCode IS NULL) and (Acc.Categories.TopicCode = @TopicCode)) AS HassMoeen,
		(SELECT COUNT(*) AS Expr1 FROM  acc.DetailRange  WHERE (acc.DetailRange.TopicCode = @TopicCode)) AS HassDetail,
		case when @CtopicCode1=0 then ( SELECT CTopicCodeIsZero FROM Acc.Config) else 1 end *
		(SELECT COUNT(*) AS Expr1 FROM  acc.CenterTopicRange  WHERE (acc.CenterTopicRange.TopicCode = @TopicCode)) AS HassCTopic,
		case  ( SELECT CtoipcRelatedKind FROM Acc.Config) 
			when 0 then case when @CtopicCode2=0 then ( SELECT CTopicCode2IsZero FROM Acc.Config)else 1 end *
			        ( SELECT  COUNT(*) AS Expr1 FROM  Acc.CTopicRangeTogether WHERE (CTopicCode =  @CtopicCode1)) 
			when 1 then case when @CtopicCode2=0 then ( SELECT CTopicCode2IsZero FROM Acc.Config)else 1 end *
			( SELECT  COUNT(*) AS Expr1 FROM  Acc.CenterTopicAllRange WHERE (CTopicCode2 <> 0) AND TopicCode = @TopicCode )
        end  AS HassCTopic2,
		case  ( SELECT CtoipcRelatedKind FROM Acc.Config) 
			when 0 then case when @CtopicCode3=0 then ( SELECT CTopicCode3IsZero FROM Acc.Config)else 1 end *
			         (SELECT  COUNT(*) AS Expr1 FROM   acc.CTopics2AND3 WHERE  (acc.CTopics2AND3.CTopicCode2 = @CtopicCode2))
			when 1 then case when @CtopicCode3=0 then ( SELECT CTopicCode3IsZero FROM Acc.Config)else 1 end *
			           ( SELECT  COUNT(*) AS Expr1  FROM  Acc.CenterTopicAllRange WHERE    (CTopicCode3 <> 0) AND TopicCode = @TopicCode )
        end  AS HassCTopic3,
        (SELECT    top 1 Acc.Details.DetailCode
		FROM         Acc.Details INNER JOIN
                      Acc.DetailRange AS DetailRang ON Acc.Details.CompanyCode = DetailRang.CompanyCode AND 
                      Acc.Details.DetailCode = DetailRang.DetailCode
		WHERE     (DetailRang.TopicCode = @TopicCode) AND (Acc.Details.DetailCode = @DetailCode)) as IsValidDetailFORMoeen,
        (SELECT   top 1  Acc.CenterTopics.CTopicCode
		FROM         Acc.CenterTopics INNER JOIN
                      Acc.CenterTopicRange ON Acc.CenterTopics.CTopicCode = Acc.CenterTopicRange.CTopicCode
		WHERE	
		--(Acc.CenterTopics.CTopicCode <> 0) AND 
		(Acc.CenterTopicRange.TopicCode = @TopicCode) AND 
				(Acc.CenterTopics.CTopicCode = @CtopicCode1 ) )AS IsValidCTopicFORMoeen,

		case  ( SELECT CtoipcRelatedKind FROM Acc.Config) 
			when 0 then  	(SELECT  top 1   Acc.CenterTopics2.CTopicCode2
					FROM         Acc.CenterTopics2 INNER JOIN
					                      Acc.CTopicRangeTogether ON Acc.CenterTopics2.CTopicCode2 = Acc.CTopicRangeTogether.CTopicCode2
					WHERE     
						--(Acc.CenterTopics2.CTopicCode2 <> 0) AND 
						(Acc.CenterTopics2.CTopicCode2 = @CtopicCode2) AND (Acc.CTopicRangeTogether.CTopicCode = @CtopicCode1)) 
			when 1 then ( SELECT   top 1  Acc.CenterTopics2.CTopicCode2
					FROM         Acc.CenterTopics2 INNER JOIN
				                          (SELECT     *
				                             FROM         Acc.CenterTopicAllRange
				                             WHERE     ctopiccode2 <> 0) CenterTopicAllRange ON Acc.CenterTopics2.CTopicCode2 = CenterTopicAllRange.CTopicCode2
					WHERE     (Acc.CenterTopics2.CTopicCode2 = @CtopicCode2 ) AND (CenterTopicAllRange.TopicCode = @TopicCode) )
		  end AS IsValidCTopic2FORCTopics,



		case  ( SELECT CtoipcRelatedKind FROM Acc.Config) 
			when 0 then  	(SELECT   top 1  Acc.CTopicCode3.CTopicCode3
					FROM         Acc.CTopicCode3 INNER JOIN
				                      Acc.CTopics2AND3 ON Acc.CTopicCode3.CTopicCode3 = Acc.CTopics2AND3.CTopicCode3
					WHERE     
						--(Acc.CTopicCode3.CTopicCode3 <> 0) AND 
						(Acc.CTopicCode3.CTopicCode3 = @CtopicCode3) AND (Acc.CTopics2AND3.CTopicCode2 = @CtopicCode2))

			when 1 then ( SELECT   top 1 Acc.CTopicCode3.CTopicCode3
					FROM         Acc.CTopicCode3  INNER JOIN
				                          (SELECT     *
				                             FROM         Acc.CenterTopicAllRange
				                             WHERE     ctopiccode3 <> 0) CenterTopicAllRange ON Acc.CTopicCode3.CTopicCode3 = CenterTopicAllRange.CTopicCode3
					WHERE     (Acc.CTopicCode3.CTopicCode3 = @CtopicCode3 ) AND (CenterTopicAllRange.TopicCode = @TopicCode) )
		  end as  IsValidCTopic3FORCTopics2

)   
GO

CREATE FUNCTION [Acc].[BudgetReportOnTopicCode]     ( @DocDateFrom Varchar(10), @DocDateTo Varchar(10)
, @YearIdFrom int, @YearIdTo int, @TopicCodeFrom bigint, @TopicCodeTo bigint ,@UserAdmin int = 0 ,@UserID int = 0 )
RETURNS table AS  
return
(
SELECT      TopicCode, MoeenName_L1, MoeenName_L2, BudgetPrice, CurrentPrice, PreviousPrice, SumPrice, 100 - ConstructionPercent AS CurrentPercent, 
                      ROUND(SumPrice * (100 - ConstructionPercent) / 100, 0) AS CurrentShare, ConstructionPercent, ROUND(SumPrice * ConstructionPercent / 100, 0) AS ConstructShare
FROM         (SELECT      D.TopicCode, Acc.Categories.MoeenName_L1, Acc.Categories.MoeenName_L2, Acc.Categories.BudgetPrice, 
                                              ABS(SUM(CASE WHEN (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo) THEN (D.Debt - D.Credit) ELSE 0 END)) AS CurrentPrice, 
                                              ABS(SUM(CASE WHEN (DG.DocDate < @DocDateTo) THEN (D.Debt - D.Credit) ELSE 0 END)) AS PreviousPrice, 
                                              ABS(SUM(CASE WHEN (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo) THEN (D.Debt - D.Credit) ELSE 0 END)) 
                                              + ABS(SUM(CASE WHEN (DG.DocDate < @DocDateTo) THEN (D.Debt - D.Credit) ELSE 0 END)) AS SumPrice, 
                                              Acc.Categories.ConstructionPercent
                        FROM         Acc.Documents D INNER JOIN
                                              Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode INNER JOIN
                                              Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND 
                                              D.CompanyCode = DG.CompanyCode
                        WHERE     (D.YearID BETWEEN @YearIdFrom AND @YearIdTo) 
						AND (D.TopicCode BETWEEN @TopicCodeFrom AND @TopicCodeTo)
						AND ((@UserAdmin = 1) OR (DG.CompanyCode in(select n_subcompany from farasystems.dbo.operatorcompanies where (userid = @UserID))))
                        GROUP BY D.TopicCode, Acc.Categories.MoeenName_L1, Acc.Categories.MoeenName_L2, Acc.Categories.ConstructionPercent, Acc.Categories.BudgetPrice
                        ) AS report
)
GO

CREATE FUNCTION   [Acc].[UserDetailsOnTopicBook]  (@CompanyCodeFrom Varchar(12)=[0], @CompanyCodeTO Varchar(12)=[0]
												  , @AccCode Varchar(12)=[2], @DetailCode Varchar(12)=[11]
												  , @SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999]
												  , @PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799]
												  , @DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99'
                                                  , @Status1 varchar(150)= '', @FromYearID integer, @ToYearID integer
                                                  , @DocTypeCodeFrom varchar(150)= '', @UserAdmin integer, @UserId integer)
RETURNS table  AS  
return (  

select *  from (
SELECT     DocGroups.YearID, DocGroups.Serial, Documents.ID, DocGroups.CompanyCode, Documents.TopicCode, Documents.DetailCode, 
                      DocGroups.SecondaryDocNo, DocGroups.PrimaryDocNo, DocGroups.DocDate, Documents.Comment_L1,  Documents.Comment_L2, Documents.AidDocNo, 
                      Documents.BudgetTopicID, Documents.ProjectID, Documents.AidDocdate, Documents.AidAmount, Documents.Debt, Documents.Credit, 
                      Documents.Debt - Documents.Credit AS balance,
                      CASE Documents.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, DocGroups.Status, DocTypes.SORtID, 0 AS RelatedID, 0 AS AnalizeType, 
                      0 AS ItemID
FROM         Acc.Documents AS Documents INNER JOIN
                      Acc.DocGroups AS DocGroups ON Documents.Serial = DocGroups.Serial AND Documents.YearID = DocGroups.YearID AND 
                      Documents.CompanyCode = DocGroups.CompanyCode LEFT OUTER JOIN
                      Acc.DocTypes AS DocTypes ON DocGroups.DocTypeCode = DocTypes.DocTypeCode LEFT OUTER JOIN
					  dbo.Customers on dbo.customers.CustID = Documents.DetailCode LEFT OUTER JOIN
					  Acc.Categories as Categories on Categories.TopicCode = Documents.TopicCode LEFT OUTER JOIN
					  dbo.UsersCustomersGroups ON dbo.UsersCustomersGroups.CustomerGrpID = dbo.Customers.CustomerGrpID AND (@UserID = dbo.UsersCustomersGroups.UserID)

WHERE   (DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO)AND 
		(DocGroups.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
		(Documents.TopicCode = @AccCode) AND 
		(Documents.DetailCode =@DetailCode ) AND
		((@UserAdmin=1) OR (((CHARINDEX(','+ltrim(@UserID)+',', ',' + dbo.Customers.OperatorID + ',') <> 0) OR (@UserID = dbo.UsersCustomersGroups.UserID)) and 
		  (CHARINDEX(','+ltrim(@userid)+',', ',' + Categories.UserRelated + ',') <> 0))) AND
  	    (DocGroups.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
	    (DocGroups.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
	    (DocGroups.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
	    ((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DocGroups.Status<>0)) OR 
        (DocGroups.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
 		(CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
        (DocGroups.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))

Union All

SELECT      DocGroups.YearId , 0 as Serial,  0 as ID, DocGroups.CompanyCode, Documents.TopicCode, Documents.DetailCode, 
                      0 as SecondaryDocNo, 0 as PrimaryDocNo,  max(DocDate) as DocDate, '---' as  Comment_L1, '---' as  Comment_L2 , 0 as AidDocNo, 
                      0 as BudgetTopicID, 0 as ProjectID, '--' as AidDocdate, 0 as AidAmount, sum(Documents.Debt) as debt, 
                      sum(Documents.Credit) as Credit, sum(Documents.Debt - Documents.Credit) AS balance ,
                      CASE sum(Documents.Debt - Documents.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes ,0 as Status ,0 As SORtID,-1 as RelatedID,0 as AnalizeType , 
                      0 as ItemID
FROM        Acc.Documents as Documents INNER JOIN
                      acc.DocGroups as DocGroups 
			 ON  Documents.Serial = DocGroups.Serial AND Documents.YearID =DocGroups.YearID AND     
			Documents.CompanyCode =DocGroups.CompanyCode LEFT OUTER JOIN
					  dbo.Customers on dbo.customers.CustID = Documents.DetailCode LEFT OUTER JOIN
					  Acc.Categories as Categories on Categories.TopicCode = Documents.TopicCode LEFT OUTER JOIN
					  dbo.UsersCustomersGroups ON dbo.UsersCustomersGroups.CustomerGrpID = dbo.Customers.CustomerGrpID AND (@UserID = dbo.UsersCustomersGroups.UserID)

WHERE   (DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) AND 
		(DocGroups.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
		(Documents.TopicCode = @AccCode) AND 
		(Documents.DetailCode =@DetailCode ) AND 
		((@UserAdmin=1) OR (((CHARINDEX(','+ltrim(@UserID)+',', ',' + dbo.Customers.OperatorID + ',') <> 0) OR (@UserID = dbo.UsersCustomersGroups.UserID)) and
			 (CHARINDEX(','+ltrim(@userid)+',', ',' + Categories.UserRelated + ',') <> 0))) AND
		((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DocGroups.Status <> 0)) OR 
        (DocGroups.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
 		(CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
        (DocGroups.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))) AND
	    ((DocGroups.SecondaryDocNo <@SecondaryDocNoFrom ) OR
	    (DocGroups.PrimaryDocNo <@PrimaryDocNoFrom ) OR
	    (DocGroups.DocDate < @DocDateFrom ))
group by DocGroups.YearId ,DocGroups.CompanyCode, Documents.TopicCode, Documents.DetailCode

)DocOnDetails

)
GO

CREATE FUNCTION [Acc].[AccUserDetailsBalance] 	(@DocTypeCode1_Not varchar(150)='' ,
						@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
						@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] , 
						@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=[214748364799] , 
						@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
						@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
						@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
                      @Status1 varchar(150)='', @FromYearID integer , @ToYearID integer, @UserAdmin integer=[1], @UserID integer=[-1] )

RETURNS table AS  
return
(
SELECT  D.TopicCode, D.DetailCode, Acc.Categories.MoeenName_L1 + ISNULL(DetailName_L1,'') as Name_L1, 
		Acc.Categories.MoeenName_L2 + ISNULL(DetailName_L2,'') as Name_L2, Acc.Details.Mobile, DG.CompanyCode,
		SUM(D.Debt) AS Debt, SUM(D.Credit) AS Credit,
		case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt,
		case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit
FROM    Acc.Documents D Left OUTER JOIN
            acc.Details ON 
			D.DetailCode = acc.Details.DetailCode LEFT OUTER JOIN
			dbo.Customers ON dbo.Customers.CustID = acc.Details.DetailCode LEFT OUTER JOIN
			dbo.UsersCustomersGroups ON dbo.UsersCustomersGroups.CustomerGrpID = dbo.Customers.CustomerGrpID LEFT OUTER JOIN
            acc.Categories ON D.TopicCode = acc.Categories.TopicCode LEFT OUTER JOIN
            Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
            D.CompanyCode = DG.CompanyCode

WHERE  ((@DocTypeCode1_Not = '') OR DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',')))
		     AND (DG.YearID  BETWEEN @FromYearID  AND  @ToYearID  ) 
		     AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) 
	         AND (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)
		     AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) 
		     AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
		     AND (D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )   
		     AND (D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo)
		     AND ((@Status1 = '' and (DG.Status <> 0))OR( DG.Status IN (Select part From [Acc].[SplitString] (@Status1,','))))
			 AND ((@UserAdmin=1) OR (((CHARINDEX(','+ltrim(@UserID)+',', ',' + dbo.Customers.OperatorID + ',') <> 0) OR (@UserID = dbo.UsersCustomersGroups.UserID)) and
					 (CHARINDEX(','+ltrim(@userid)+',', ',' + Categories.UserRelated + ',') <> 0)))

GROUP BY D.TopicCode, D.DetailCode, Acc.Categories.MoeenName_L1 , Acc.Details.DetailName_L1 ,
           Acc.Categories.MoeenName_L2 , Acc.Details.DetailName_L2, Acc.Details.Mobile, DG.CompanyCode
)

GO

CREATE FUNCTION [Acc].[AccTrialDetailsBalance_arzi] -- باید حذف شود 
		(
			@DocTypeCode1_Not varchar(150)='' , @CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
			@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] , 
			@DetailCodeFrom Varchar(12)=[0],  @DetailCodeTo Varchar(12)=[214748364799] , 
			@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
			@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
			@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
			@Status1 varchar(150)='', @FromYearID integer , @ToYearID integer ,
			@CurrencyTypeFrom  integer=[0]  , @CurrencyTypeTo  integer=[99] )
RETURNS table AS  
return
(
SELECT  D.TopicCode, D.DetailCode, 
		D.CurrencyType ,Acc.Currencies.CurrenciesName COLLATE Arabic_CI_AS as CurrenciesName,
		Acc.Categories.MoeenName_L1 COLLATE Arabic_CI_AS as MoeenName_L1, Acc.Categories.MoeenName_L2 COLLATE Arabic_CI_AS as MoeenName_L2, 
		case D.Detailcode when 0 Then moeenname_L1  else DetailName_L1 end as DetailName_L1 , 
		case D.Detailcode when 0 Then moeenname_L2  else DetailName_L2 end as DetailName_L2 ,		
		SUM(CASE WHEN (D.CurrencyType <> 0) AND (D.Debt > 0) THEN D.AidAmount ELSE 0 END) AS ArzDebt , 
		SUM(CASE WHEN (D.CurrencyType <> 0) AND (D.Credit > 0) THEN D.AidAmount ELSE 0 END) AS ArzCredit,
		SUM(CASE WHEN (D.CurrencyType = 0) then 0 else 
			 case when (D.Debt > 0) THEN 1 ELSE -1 END * D.AidAmount   END) AS ArzBalance ,
		SUM(D.Debt) AS Debt,SUM(D.Credit) AS Credit, Acc.Details.Mobile,
		case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
		case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit ,
		1  as MinCompany
FROM    Acc.Documents D Left OUTER JOIN
		acc.Details ON 
		D.DetailCode = acc.Details.DetailCode LEFT OUTER JOIN
		acc.Categories ON D.TopicCode = acc.Categories.TopicCode LEFT OUTER JOIN
		Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
		D.CompanyCode = DG.CompanyCode cross join acc.Config left outer join 
		Acc.Currencies on D.CurrencyType =Acc.Currencies.CurrenciesID

WHERE ((@DocTypeCode1_Not = '') OR DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',')))
		AND (DG.YearID  BETWEEN @FromYearID  AND  @ToYearID  ) 
		AND (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) 
		AND (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo)
		AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) 
		AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
		AND (D.DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )   
		AND (D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo)
		AND ( (@Status1 = '' and (DG.Status <> 0))OR( DG.Status IN (Select part From [Acc].[SplitString] (@Status1,','))) ) 
		AND isnull(D.CurrencyType,0) between  @CurrencyTypeFrom  and @CurrencyTypeTo 
GROUP BY D.TopicCode, D.DetailCode, Acc.Categories.MoeenName_L1 , Acc.Details.DetailName_L1 ,
		Acc.Categories.MoeenName_L2 , Acc.Details.DetailName_L2, Acc.Details.Mobile , 
		
		D.CurrencyType ,Acc.Currencies.CurrenciesName
		)
GO

CREATE FUNCTION   [Acc].[DetailsOnTopicBook_arzi] -- باید حذف شود 
	(
		@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTO Varchar(12)=[9999],@AccCode Varchar(12)=[2], 
		@DetailCode Varchar(12)=[11], @SecondaryDocNoFrom Varchar(12)=[0] ,
		@SecondaryDocNoTo Varchar(12)=[2147483647999], @PrimaryDocNoFrom  Varchar(12)=[0], 
		@PrimaryDocNoTo Varchar(12)=[214748364799] ,@DocDateFrom Varchar(10)='0001/01/01', 
		@DocDateTo  Varchar(10)='9999/99/99' ,@Status1 varchar(150)= '', 
		@FromYearID integer,@ToYearID integer ,
		@DocTypeCodeFrom varchar(150)= '' ,
		@CurrencyTypeFrom  integer=[0]  , @CurrencyTypeTo  integer=[99] )

RETURNS table  AS  
return (  

select *  from (

SELECT	DocGroups.YearID, DocGroups.Serial, Documents.ID, DocGroups.CompanyCode, Documents.TopicCode, 
		Documents.DetailCode, DocGroups.SecondaryDocNo, DocGroups.PrimaryDocNo, DocGroups.DocDate, 
		Documents.Comment_L1,  Documents.Comment_L2, Documents.AidDocNo, 
		Documents.BudgetTopicID, Documents.ProjectID, Documents.AidDocdate, Documents.AidAmount, 
		CASE WHEN (documents.CurrencyType <> 0) AND (Documents.Debt > 0) THEN Documents.AidAmount ELSE 0 END AS ArzDebt , 
		CASE WHEN (documents.CurrencyType <> 0) AND (Documents.Credit > 0) THEN Documents.AidAmount ELSE 0 END AS ArzCredit,
		CASE WHEN (documents.CurrencyType = 0) then 0 else 
			case when (Documents.Debt > 0) THEN 1 ELSE -1 END * Documents.AidAmount   END AS ArzBalance ,
		Documents.Debt, Documents.Credit, 
		Documents.Debt - Documents.Credit AS balance,
		CASE Documents.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, 
		DocGroups.Status, DocTypes.SORtID, 0 AS RelatedID, 0 AS AnalizeType, 
		0 AS ItemID
FROM	Acc.Documents AS Documents INNER JOIN
        Acc.DocGroups AS DocGroups ON Documents.Serial = DocGroups.Serial AND Documents.YearID = DocGroups.YearID AND 
        Documents.CompanyCode = DocGroups.CompanyCode LEFT OUTER JOIN
        Acc.DocTypes AS DocTypes ON DocGroups.DocTypeCode = DocTypes.DocTypeCode left outer join 
		Acc.Currencies on Documents.CurrencyType =Acc.Currencies.CurrenciesID

WHERE   (DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO)AND 
		(DocGroups.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
		(Documents.TopicCode = @AccCode) AND 
		(Documents.DetailCode =@DetailCode ) AND 
		
  	    (DocGroups.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
	    (DocGroups.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
	    (DocGroups.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
	    ((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DocGroups.Status <> 0)) OR 
        (DocGroups.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
 		(CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
        (DocGroups.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))) AND 
		isnull(Documents.CurrencyType,0) between  @CurrencyTypeFrom  and @CurrencyTypeTo

Union All

SELECT	DocGroups.YearId , 0 as Serial,  0 as ID, DocGroups.CompanyCode, Documents.TopicCode, 
		Documents.DetailCode, 0 as SecondaryDocNo, 0 as PrimaryDocNo, '01/01' as DocDate,
		 '---' as  Comment_L1, '---' as  Comment_L2 , 0 as AidDocNo, 
		 0 as BudgetTopicID, 0 as ProjectID, '--' as AidDocdate, 0 as AidAmount, 
		SUM(CASE WHEN (documents.CurrencyType <> 0) AND (Documents.Debt > 0) THEN Documents.AidAmount ELSE 0 END) AS ArzDebt , 
		SUM(CASE WHEN (documents.CurrencyType <> 0) AND (Documents.Credit > 0) THEN Documents.AidAmount ELSE 0 END) AS ArzCredit,
		SUM(CASE WHEN (documents.CurrencyType = 0) then 0 else 
			case when (Documents.Debt > 0) THEN 1 ELSE -1 END * Documents.AidAmount   END) AS ArzBalance ,
		sum(Documents.Debt) as debt, sum(Documents.Credit) as Credit, 
		sum(Documents.Debt - Documents.Credit) AS balance ,
		CASE sum(Documents.Debt - Documents.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes ,
		0 as Status ,0 As SORtID,-1 as RelatedID,0 as AnalizeType , 0 as ItemID 
FROM	Acc.Documents as Documents INNER JOIN
		acc.DocGroups as DocGroups  ON  Documents.Serial = DocGroups.Serial 
										AND Documents.YearID =DocGroups.YearID 
										AND Documents.CompanyCode =DocGroups.CompanyCode  left outer join 
		Acc.Currencies on Documents.CurrencyType =Acc.Currencies.CurrenciesID

WHERE   (DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) AND 
		(DocGroups.YearID BETWEEN @FromYearID AND @ToYearID ) AND 
		(Documents.TopicCode = @AccCode) AND 
		(Documents.DetailCode =@DetailCode ) AND 
		
		((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DocGroups.Status <> 0)) OR 
        (DocGroups.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
 		(CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
        (DocGroups.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))) AND
	    ((DocGroups.SecondaryDocNo <@SecondaryDocNoFrom ) OR
	    (DocGroups.PrimaryDocNo <@PrimaryDocNoFrom ) OR
	    (DocGroups.DocDate < @DocDateFrom )) AND 
		isnull(Documents.CurrencyType,0) between  @CurrencyTypeFrom  and @CurrencyTypeTo 
group by DocGroups.YearId ,DocGroups.CompanyCode, Documents.TopicCode, Documents.DetailCode ,
		Documents.CurrencyType ,Acc.Currencies.CurrenciesName 
)DocOnDetails

)
GO

CREATE FUNCTION [Acc].[AccTrialBalance_Arzi] -- باید حذف شود 
	(@DocTypeCode1_Not varchar(150)='' ,
			@CompanyCodeFrom Varchar(12)=[0] ,@CompanyCodeTo Varchar(12)=[2147483647] ,
			@AccCodeFrom Varchar(12)=[0],  @AccCodeTo Varchar(12)=[214748364799] ,  
			@SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
			@PrimaryDocNoFrom  Varchar(12)=[0], @PrimaryDocNoTo Varchar(12)=[214748364799] ,
			@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99',
			@Status1 varchar(150)='', @FromYearID integer,@ToYearID integer ,
			@CurrencyTypeFrom  integer=[0]  , @CurrencyTypeTo  integer=[99] )

RETURNS table AS  
return
(
SELECT	DG.YearID, D.TopicCode, D.CTopicCode , 
		D.CurrencyType ,Acc.Currencies.CurrenciesName ,
		Acc.Categories.MoeenName_L1,Acc.Categories.MoeenName_L1 COLLATE Arabic_CI_AS +' - '+Acc.Currencies.CurrenciesName COLLATE Arabic_CI_AS CombineName , Acc.Categories.MoeenName_L2 , 
		case D.CTopicCode when 0 Then moeenname_L1  else CTopicName_L1 end as CTopicName_L1 , 
		case D.CTopicCode when 0 Then moeenname_L2  else CTopicName_L2 end as CTopicName_L2 ,		
		SUM(CASE WHEN (D.CurrencyType <> 0) AND (D.Debt > 0) THEN D.AidAmount ELSE 0 END) AS ArzDebt , 
		SUM(CASE WHEN (D.CurrencyType <> 0) AND (D.Credit > 0) THEN D.AidAmount ELSE 0 END) AS ArzCredit,
		SUM(CASE WHEN (D.CurrencyType = 0) then 0 else 
			 case when (D.Debt > 0) THEN 1 ELSE -1 END * D.AidAmount   END) AS ArzBalance ,
		SUM(D.Debt) AS Debt,SUM(D.Credit) AS Credit,
		case when SUM(D.Debt - D.Credit)>0 then SUM(D.Debt - D.Credit) else 0 end  AS BalanceDebt ,
		case when SUM(D.Credit - D.Debt)>0 then SUM(D.Credit - D.Debt) else 0 end  AS BalanceCredit 

FROM	Acc.Documents D Left OUTER JOIN
		Acc.CenterTopics ON D.CTopicCode = Acc.CenterTopics.CTopicCode LEFT OUTER JOIN
		Acc.Categories ON D.TopicCode = Acc.Categories.TopicCode LEFT OUTER JOIN
		Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
		D.CompanyCode = DG.CompanyCode left outer join 
		Acc.Currencies on D.CurrencyType =Acc.Currencies.CurrenciesID

WHERE     	
		(DG.YearID BETWEEN @FromYearID AND @ToYearID  ) AND 
		(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo ) AND 
	    (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo) AND 
		(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) AND
		(DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) AND
		((CASE  WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR
         DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))AND  
        ((CASE  WHEN @DocTypeCode1_Not = '' THEN 1 ELSE 0 END) = 1 OR
         DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode1_Not,',')))

GROUP BY DG.YearID,D.TopicCode, D.CTopicCode, Acc.Categories.MoeenName_L1 , 
		Acc.CenterTopics.CTopicName_L1,Acc.Categories.MoeenName_L2 , Acc.CenterTopics.CTopicName_L2 ,
		D.CurrencyType ,Acc.Currencies.CurrenciesName

HAVING 
	      (D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo) and 
		 isnull(D.CurrencyType,0) between  @CurrencyTypeFrom  and @CurrencyTypeTo 
)



GO

CREATE  FUNCTION [Acc].[AccBooksCategories_arzi]  -- باید حذف شود 
	(
			@CompanyCodeFrom Varchar(12)=[0],@CompanyCodeTo Varchar(12)=[0] ,@LenAccCode Varchar(12)=[2], 
			@AccCode bigint=[11], @SecondaryDocNoFrom Varchar(12)=[0] ,@SecondaryDocNoTo Varchar(12)=[2147483647999], 
			@PrimaryDocNoFrom  Varchar(12)=[0],  @PrimaryDocNoTo Varchar(12)=[214748364799] ,
			@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
			@Status1 varchar(150)='', @FromYearID integer,@ToyearID integer,
			@DocTypeCodeFrom varchar(150)='' ,@DocTypeCodeTo integer  =[9999]
			,@CurrencyTypeFrom  integer=[0]  , @CurrencyTypeTo  integer=[99] 
			)
RETURNS table  AS  
return (
SELECT	serial,YearID ,id,CompanyCode, AccCode, SecondaryDocNo, PrimaryDocNo, DocDate, 
		Comment_L1,Comment_L2, Debt, Credit,Debt-Credit  as balance , ArzCredit, ArzDebt, ArzBalance,
		AidDocNo, AidDocdate,AidAmount , BudgetTopicID ,ProjectID , 
		DocNote_L1 ,DocNote_L2,Status,bedbes,SORtID
FROM	(
SELECT	DG.YearID,DG.Serial, D.ID, DG.CompanyCode,
		cast(  ABS(LEFT(D.TopicCode, @LenAccCode)) AS bigint) AS AccCode, 
		DG.SecondaryDocNo, DG.PrimaryDocNo, DG.DocDate, 
		D.Comment_L1, D.Comment_L2, 
		CASE WHEN (D.CurrencyType <> 0) AND (D.Debt > 0) THEN D.AidAmount ELSE 0 END AS ArzDebt , 
		CASE WHEN (D.CurrencyType <> 0) AND (D.Credit > 0) THEN D.AidAmount ELSE 0 END AS ArzCredit,
		CASE WHEN (D.CurrencyType = 0) then 0 else 
			 case when (D.Debt > 0) THEN 1 ELSE -1 END * D.AidAmount   END AS ArzBalance ,
		D.Debt, D.Credit, 
		D.AidDocNo, D.AidDocdate, D.AidAmount, D.BudgetTopicID, D.ProjectID, DG.DocNote_L1, 
		DG.DocNote_L2, DG.Status, CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes,acc.DocTypes.SORtID
FROM		Acc.Documents D INNER JOIN
            Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
            D.CompanyCode = DG.CompanyCode  LEFT OUTER JOIN
            acc.DocTypes ON DG.DocTypeCode = acc.DocTypes.DocTypeCode
WHERE      (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo ) AND( DG.YearID BETWEEN @FromYearID AND @ToyearID ) AND
		   (ABS(LEFT(D.TopicCode, @LenAccCode)) =@AccCode ) AND
		   (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
		   (DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
		   (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
           ((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR
           ( DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
           (CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR
           ( DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))) AND
		   (isnull(D.CurrencyType,0) between  @CurrencyTypeFrom  and @CurrencyTypeTo)
                    
                   

	UNION ALL
		SELECT	DG.YearID,0 as serial,0 as id, DG.CompanyCode,
			cast( ABS(LEFT(D.TopicCode, @LenAccCode)) as bigint) AS AccCode, 
			0 AS SecondaryDocNo, 0 AS PrimaryDocNo,	'0' AS DocDate, 'مجموع مانده از قبل  ' AS Comment_L1, ' ' as Comment_L2 ,
			SUM(CASE WHEN (D.CurrencyType <> 0) AND (D.Debt > 0) THEN D.AidAmount ELSE 0 END) AS ArzDebt , 
			SUM(CASE WHEN (D.CurrencyType <> 0) AND (D.Credit > 0) THEN D.AidAmount ELSE 0 END) AS ArzCredit,
			SUM(CASE WHEN (D.CurrencyType = 0) then 0 else 
			 case when (D.Debt > 0) THEN 1 ELSE -1 END * D.AidAmount   END) AS ArzBalance ,
			SUM(D.Debt), SUM(D.Credit), 0 AS AidDocNo, '0' AS AidDocdate,  0 as AidAmount ,
			'0' AS BudgetTopicID, '0' AS ProjectID,	'0' AS DocNote_L1 ,'0' AS DocNote_L2,0 as Status , 0 as bedbes,0 as  SORtID
		FROM	Acc.Documents D INNER JOIN
			Acc.DocGroups DG ON D.Serial = DG.Serial AND D.YearID = DG.YearID AND     
			D.CompanyCode = DG.CompanyCode  left outer join 
			Acc.Currencies on D.CurrencyType =Acc.Currencies.CurrenciesID
		WHERE (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo ) AND
		      ((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR
              (DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
              (CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR
              (DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,',')))) AND
		      (DG.YearID BETWEEN @FromYearID AND @ToyearID ) AND
			  (ABS(LEFT(D.TopicCode, @LenAccCode)) =@AccCode ) AND
			  ((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
			  (DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
			  (DG.DocDate < @DocDateFrom )) AND 
				isnull(D.CurrencyType,0) between  @CurrencyTypeFrom  and @CurrencyTypeTo 
		GROUP BY DG.YearID,DG.CompanyCode, 
				cast(ABS(LEFT(D.TopicCode, @LenAccCode)) as bigint) ,
		D.CurrencyType ,Acc.Currencies.CurrenciesName 
	) Docs
)

GO

CREATE FUNCTION [Acc].[CTopics3OnTopicCode]  -- Edit By Rezaei 1402/11/04 for Add Currency
						(
							@CompanyCode Varchar(12)=[0] ,
							@AccCode Varchar(12)=[2], 
							@CTopicCode2 Varchar(12)=[11], 
				            @SecondaryDocNoFrom Varchar(12)=[0] ,
							@SecondaryDocNoTo Varchar(12)=[2147483647999], 
                            @PrimaryDocNoFrom  Varchar(12)=[0],
							@PrimaryDocNoTo Varchar(12)=[214748364799] ,
                            @DocDateFrom Varchar(10)='0001/01/01', 
							@DocDateTo  Varchar(10)='9999/99/99' ,
                            @Status1 varchar(150)='', 
							@Status2  integer=[-1],
							@FromyearId integer,
							@ToYearId integer,
                            @DocTypeCodeFrom varchar(150)='',
							@CurrencyTypeFrom  integer=0  , 
							@CurrencyTypeTo  integer=99999, 
							@CurrencyKind  integer=0  
						)
RETURNS table  AS  
return (  
	select  ROW_NUMBER() OVER (partition by TopicCode,CTopicCode3 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as _row,
			YearId,
			Serial,
			ID,
			CompanyCode,
			TopicCode,
			CTopicCode3,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			AidDocNo,
			BudgetTopicID,
			ProjectID,
			AidDocdate,
			AidAmount,
			Debt,
			Credit,
			SUM(Balance) over (partition by TopicCode,CTopicCode3 
					order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningBalance,
			BedBes,
			SORtID,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			SUM(Currencybalance) over (partition by TopicCode,CTopicCode3 
					order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningCurrencybalance 
	from (
		SELECT	DG.YearId ,  
				0 as Serial,  
				0 as ID, DG.CompanyCode, D.TopicCode, D.ctopiccode3, 
				0 as SecondaryDocNo, 0 as PrimaryDocNo, '01/01' as DocDate,'مجموع مانده از قبل  '  as  Comment_L1, 0 as AidDocNo, 
				0 as BudgetTopicID, 0 as ProjectID, '--' as AidDocdate, 0 as AidAmount, sum(D.Debt) as debt, 
				sum(D.Credit) as Credit, sum(D.Debt - D.Credit) AS balance,
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes,
				0 As SORtID,
				-- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
				 when @CurrencyKind = 0 then 0 
				 else SUM(D.CurrencyDebit - D.CurrencyCredit)
			   END AS CurrencyBalance
		  -- end of currency 
		FROM	Acc.Documents D 
				INNER JOIN  Acc.DocGroups DG ON D.Serial = DG.Serial 
							AND D.YearID = DG.YearID 
							AND D.CompanyCode = DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode = @CompanyCode) AND  
				(DG.YearId BETWEEN @FromyearId AND @ToYearId) AND
				(D.TopicCode = @AccCode) AND 
				(D.CTopicCode3 =@CTopicCode2 ) AND 
				((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
				(DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
				(DG.DocDate < @DocDateFrom )) and (DG.Status <> 0)
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
		group by DG.YearId , DG.CompanyCode, D.TopicCode, D.CTopicCode3,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 

		Union All

		SELECT  DG.YearId , DG.Serial, D.ID, DG.CompanyCode, D.TopicCode, D.CTopicCode3, DG.SecondaryDocNo, 
				DG.PrimaryDocNo, DG.DocDate, D.Comment_L1, D.AidDocNo, D.BudgetTopicID, D.ProjectID, 
				D.AidDocdate, D.AidAmount, D.Debt, D.Credit, D.Debt - D.Credit AS balance, 
				CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, 
				acc.DocTypes.SORtID ,
				d.CurrencyType ,
			    cu.CurrencyCode ,
			    cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit ) Currencybalance
		FROM    Acc.Documents D 
				INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
							AND D.YearID = DG.YearID 
							AND D.CompanyCode = DG.CompanyCode  
				LEFT OUTER JOIN  acc.DocTypes ON DG.DocTypeCode = acc.DocTypes.DocTypeCode
                left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode = @CompanyCode)  AND  (DG.YearId BETWEEN @FromyearId AND @ToYearId) 
		AND 
				(D.TopicCode = @AccCode) 
				AND 
				(D.CTopicCode3 =@CTopicCode2 ) 
				AND 
				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo )
				AND 
			(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo )
			 AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )
				AND
				((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR 
			   (DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) 
				AND
			   (( CASE WHEN (@DocTypeCodeFrom = '' or @DocTypeCodeFrom is null) THEN 1 ELSE 0 END = 1)
				OR 
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))
				AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
	 )DocOnCTopicCode2

)

  
GO

CREATE FUNCTION [Acc].[GetValueFromConfig] 
(
 @ValueCaption VARCHAR(50)
)
RETURNS VARCHAR(50)
AS
BEGIN

	DECLARE @Value VARCHAR(50),
			@sourceStr VARCHAR(4000),
			@i INT

	SET @Value = ''
	SELECT @sourceStr =  SanamaInfo from acc.config
	SET @ValueCaption = @ValueCaption + '='
	SET @i = CHARINDEX(@ValueCaption,@sourceStr,1)
	IF (@i <> 0)
	SET @Value = SUBSTRING(@sourceStr,@i + LEN(@ValueCaption),CHARINDEX(CHAR(13),@sourceStr,@i) - (@i + LEN(@ValueCaption)))

	RETURN @Value

END

GO

CREATE FUNCTION [Acc].[AccTrialCTopics3Balance_CTopics] -- Edit By Rezaei 1402/11/04 for Add Currency
						(
							@DocTypeCode_Not varchar(150)='-1' ,
							@CompanyCodeFrom INT=[0] ,@CompanyCodeTo INT=[2147483647] ,
							@AccCodeFrom INT=[0],  @AccCodeTo INT=[214748364799] , 
							@DetailCodeFrom INT=[0],  @DetailCodeTo INT=[214748364799] , 
							@CTopicCodeFrom INT=[0],  @CTopicCodeTo INT=[214748364799] ,
							@CTopicCode2From INT=[0],  @CTopicCode2To INT=[214748364799] , 
							@CTopicCode3From INT=[0],  @CTopicCode3To INT=[214748364799] , 
							@SecondaryDocNoFrom INT=[0] ,@SecondaryDocNoTo INT=[2147483647999], 
							@PrimaryDocNoFrom INT=[0], @PrimaryDocNoTo INT=[214748364799] ,
							@DocDateFrom Varchar(10)='0001/01/01', @DocDateTo  Varchar(10)='9999/99/99' ,
							@Status varchar(150)='-1', @FromYearID INT ,@ToYearID INT,
							@CurrencyTypeFrom  integer=0  , @CurrencyTypeTo  integer=99999, 
							@CurrencyKind  integer=0  
						)

RETURNS table AS  
return
(
SELECT  D.TopicCode ,  D.DetailCode ,  D.CTopicCode , Categories.MoeenName_L1,
                   D.CTopicCode2 ,  D.ctopiccode3,
				   Categories.MoeenName_L1 + '-' +  CenterTopics.CTopicName_L1 + '-' +  Details.DetailName_L1 + '-' +   CenterTopics2.CTopicName2_L1 +'-' +  CenterTopics3.CTopicName3_L1 AS _Name, 
                   Categories.MoeenName_L2 + '-' +  CenterTopics.CTopicName_L2 + '-' +  Details.DetailName_L2 + '-' +  CenterTopics2.CTopicName2_L2 +'-' +  CenterTopics3.CTopicName3_L1 AS Name_L2,
                   SUM( D.Debt) AS Debt, SUM( D.Credit) AS Credit,
                   CASE WHEN SUM(D.Debt - D.Credit) > 0 THEN SUM(D.Debt - D.Credit) ELSE 0 END AS BalanceDebt,
                   CASE WHEN SUM(D.Credit - D.Debt) > 0 THEN SUM(D.Credit - D.Debt) ELSE 0 END AS BalanceCredit,
				   			   -- for currency 
			   case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
			   case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
			   case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
			   END AS CurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
			   END AS CurrencyCredit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
			   case
				 when SUM(D.CurrencyDebit - D.CurrencyCredit) > 0 then
				  SUM(D.CurrencyDebit - D.CurrencyCredit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyDebit,
			   case 
					when @CurrencyKind = 0 then 0 
					else 
		       case
				 when SUM(D.CurrencyCredit - D.CurrencyDebit) > 0 then
				  SUM(D.CurrencyCredit - D.CurrencyDebit)
				 else
				  0
			   end  
			   END AS BalanceCurrencyCredit
		  -- end of currency 

FROM    Acc.Documents AS D INNER JOIN
                  Acc.CenterTopics3 AS CenterTopics3 ON D.CTopicCode3 = CenterTopics3.CTopicCode3 INNER JOIN
				  Acc.CenterTopics2 AS CenterTopics2 ON D.CTopicCode2 = CenterTopics2.CTopicCode2 INNER JOIN
                  Acc.CenterTopics AS CenterTopics ON D.CTopicCode = CenterTopics.CTopicCode INNER JOIN
                  Acc.Categories AS Categories ON D.TopicCode = Categories.TopicCode INNER JOIN
                  Acc.Details AS Details ON D.DetailCode = Details.DetailCode INNER JOIN
                  Acc.DocGroups AS DG ON D.Serial = DG.Serial AND D.CompanyCode = DG.CompanyCode AND D.YearID = DG.YearID
left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID

WHERE  (DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom AND @SecondaryDocNoTo )
               AND ( DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo )
               AND ( DG.DocDate BETWEEN  @DocDateFrom AND @DocDateTo )
               AND ( D.TopicCode BETWEEN @AccCodeFrom AND @AccCodeTo ) 
               AND ( D.DetailCode BETWEEN @DetailCodeFrom  AND @DetailCodeTo )  
               AND ( D.CTopicCode BETWEEN @CtopicCodeFrom AND @CtopicCodeTo )
               AND ( D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )                
			   AND ( D.CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To )   
               AND ( D.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo )                
               AND ( DG.YearID BETWEEN @FromYearID AND @ToYearID)
               AND ((CASE  WHEN @Status = '-1' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR
			   DG.Status in (Select part From [Acc].[SplitString] (@Status,',')))
			   AND ((CASE  WHEN @DocTypeCode_Not = '-1' THEN 1 ELSE 0 END) = 1 OR
		       DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCode_Not,',')))
			   AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
GROUP BY  D.CTopicCode,  D.CTopicCode2,  D.TopicCode,  D.DetailCode, D.ctopiccode3,
                Categories.MoeenName_L1, CenterTopics.CTopicName_L1, Details.DetailName_L1,  CenterTopics2.CTopicName2_L1,
				CenterTopics2.CTopicName2_L2,CenterTopics3.CTopicName3_L1,
                Categories.MoeenName_L2, CenterTopics.CTopicName_L2, Details.DetailName_L2, CenterTopics3.CTopicName3_L2,
			case when @CurrencyKind = 0 then null else d.CurrencyType end ,
			case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
			case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
)

GO

CREATE PROCEDURE [Acc].[CreateSanamaXML] 
	@YearID int , @CompanyID int , @MonthID int , @CompanyName nvarchar(4000)  
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE  @Year varchar(4)
	if len(ltrim(@YearID))=2 
	  set  @Year='13'+ltrim(@YearID)
    else
	  set  @Year=ltrim(@YearID)
	DECLARE  @SanamaXML XML
set @SanamaXML =  (
select 'SANAMA' as ProtocolName, cast('2.0' as varchar(50)) as ProtocolVer, 'MonthlyProtocol' as ProtocolType
		,acc.GetValueFromConfig('MainOrgCode') as MainOrgCode, cast(@Year as int) as [Year], @MonthID as [Month],(
select  cast(doc.TopicCode as varchar(50)) as AccCode, cast(sum(doc.Debt) as bigint) as SummaryProgressDeptor, cast(sum(doc.Credit) as bigint) as SummaryProgressCreditor
		,isnull(case when ts.formtype=105 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 105 then SV.sanamaValue end end) 
		end,0) as SourceType
		
		,isnull(case when ts.formtype=106 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 106 then SV.sanamaValue end end) 
		end,0) as SourceEssence

		,isnull(case when ts.formtype=107 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 107 then SV.sanamaValue end end) 
		end,0) as OtherSourceType

		,isnull(case when ts.formtype=108 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 108 then SV.sanamaValue end end) 
		end,0) as CreditType

		,isnull(case when ts.formtype=109 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 109 then SV.sanamaValue end end) 
		end,0) as TransferalType

		,isnull(case when ts.formtype=110 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 110 then SV.sanamaValue end end) 
		end,0) as CreditInfo

		,cast(isnull(case when ts.formtype=131 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 131 then SV.sanamaValue end end) 
		end,0) as varchar(50)) as RankNumber, cast(isnull(doc.BudgetTopicID,0) as varchar(50)) as CreditCode

		,isnull(case when ts.formtype=111 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 111 then SV.sanamaValue end end) 
		end,0) as ExpenseArticle

		,cast(isnull(case when ts.formtype=132 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 1132 then SV.sanamaValue end end) 
		end,0) as varchar(50)) as ExpenseDetailArticle

		,isnull(case when ts.formtype=126 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 126 then SV.sanamaValue end end) 
		end,0) as ConstructArticle

		,isnull(case when ts.formtype=133 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 133 then SV.sanamaValue end end) 
		end,0) as IncomeCode

		,isnull(case when ts.formtype=112 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 112 then SV.sanamaValue end end) 
		end,0) as IncomeType

		,isnull(case when ts.formtype=113 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 113 then SV.sanamaValue end end) 
		end,0) as OtherIncomeType

		,isnull(case when ts.formtype=114 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 114 then SV.sanamaValue end end) 
		end,0) as TaxSeason

		,acc.GetValueFromConfig('DebentureSenderRank') as DebentureSenderRank, acc.GetValueFromConfig('DebentureReceiverRank') as DebentureReceiverRank
		,cast(CT.CTopicName_L1 as nvarchar(4000)) as CostCenter, doc.CashType as AwardArticle

		,isnull(case when ts.formtype=116 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 116 then SV.sanamaValue end end) 
		end,0) as Securitiestype

		,cast(case when len(ltrim(@YearID))=2 then  '13'+ltrim(doc.YearID) else ltrim(doc.YearID) end as int) as [Year], @CompanyName as Nominee

		,isnull(case when ts.formtype=117 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 117 then SV.sanamaValue end end) 
		end,0) as GuaranteeEssence

		,isnull(case when ts.formtype=118 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 118 then SV.sanamaValue end end) 
		end,0) as DemandStatus

		,isnull(case when ts.formtype=119 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 119 then SV.sanamaValue end end) 
		end,0) as TempPaymenttype

		,isnull(case when ts.formtype=120 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 120 then SV.sanamaValue end end) 
		end,0) as LeakageSubject

		,isnull(case when ts.formtype=121 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 121 then SV.sanamaValue end end) 
		end,0) as AssuranceType

		,isnull(case when ts.formtype=122 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 122 then SV.sanamaValue end end) 
		end,0) as AssuranceSubject

		,doc.CurrencyType, cast(cust.CustAccountNumber as varchar(26)) as AccountNumber

		,isnull(case when ts.formtype=124 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 124 then SV.sanamaValue end end) 
		end,0) as InsuranceType

		,cast(isnull(case when ts.formtype=127 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 127 then SV.sanamaValue end end) 
		end,0) as varchar(50)) as PropertyType
		
		,cast(isnull(case when ts.formtype=128 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 128 then SV.sanamaValue end end) 
		end,0) as varchar(50)) as FinanceDetailArticle
		
		,cast(isnull(case when ts.formtype=129 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 129 then SV.sanamaValue end end) 
		end,0) as varchar(50)) as InventoryType
		
		,cast(isnull(case when ts.formtype=130 then 
		( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 130 then SV.sanamaValue end end) 
		end,0) as varchar(50)) as InventoryDetailArticle

		,cast(case when doc.TopicCode = 17002 then 'مشخصات سرمايه گذاري'
			  when doc.TopicCode in (18001,18002,25002,25003) then 'مشخصات قرارداد تسهيلات بلند مدت'
			  when doc.TopicCode = 25001 then 'مشخصات اوراق مشارکت'
			  when doc.TopicCode = 31004 then 'موضوع تعديلات سنواتي' end as nvarchar(4000)) as [Description]

 from acc.Documents as doc inner join acc.TopicSanama as TS on doc.TopicCode = TS.TopicCode
						   inner join acc.DocGroups as DG on DG.Serial = doc.Serial and DG.YearID = doc.YearID and DG.CompanyCode = doc.CompanyCode
						   inner join acc.SanamaView as SV on SV.id = doc.ID
						   left join dbo.Customers as cust on cust.CustID = doc.DetailCode
						   left join acc.CenterTopics as CT on CT.CTopicCode = doc.CTopicCode 
 where (doc.YearID = @YearID) and (CAST(SUBSTRING(DG.DocDate,6,2) as int) <= @MonthID) and (doc.CompanyCode = @CompanyID)
 group by doc.TopicCode, TS.FormType, TS.Kind, TS.DefaultValue, Sv.sanamaType, SV.sanamaValue, doc.BudgetTopicID, doc.CTopicCode, doc.CashType
		  , doc.YearID, doc.CurrencyType, cust.CustAccountNumber,CT.CTopicName_L1
for xml raw ('Report_List'),type),
(select  Customers.CustAccountNumber as AccountNumber,Customers.CustName as AccountDesp, formsinfo.InfoName_L1 as AccountType ,(
 select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
) as AccountNumberImage
,(select isnull(sanama.MojoodiTebgheDaftar,'') For xml path('MojoodiTebgheDaftar'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 1 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType1'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 2 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType2'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 3 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType3'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.DocNo,'0') as DocNo
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 4 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType4'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.DocNo,'0') as DocNo
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 5 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType5'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 6 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType6'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 7 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType7'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 8 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType8'),type)

,(select isnull(sanama.MojoodiTebgheBank,'') For xml path('MojoodiTebgheBank'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 9 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType9'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.CheckNo,'0') as CheckNo
,isnull(sanama1.Zinaf,'') as Zinaf
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.DocNo,'0') as DocNo
,isnull(sanama1.DocDate,'0') as DocDate
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 10 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType10'),type)

 from acc.ContrastAccountSanama as sanama
 inner join 
Customers on Customers.CustID = sanama.DetailCode
inner join 
acc.FormsInfo as formsinfo on formsinfo.FormInfoID = sanama.Value  
where (sanama.DiffType = 0) and (sanama.YearID = @YearID) and (sanama.Month <= @MonthID)

for xml raw('ContrastAccount_List'),type)
for xml raw('SanamaInfo')
)
select @SanamaXML as XMLReport
END

GO

CREATE FUNCTION [dbo].[SanamaKind] 
(
	@TOpicCode bigint, @FormType int
)
RETURNS int
AS
BEGIN
declare @KindValue int
set @KindValue =(
select  kind from Acc.TopicSanama where TopicCode = @TOpicCode and FormType = @FormType )
RETURN(@KindValue)
END

GO

CREATE FUNCTION [dbo].[SanamaValue] 
(
	@TOpicCode bigint, @FormType int, @Kind int
)
RETURNS int
AS
BEGIN
declare @FValue int
set @FValue =(
select  DefaultValue from Acc.TopicSanama where TopicCode = @TOpicCode and FormType = @FormType )
RETURN(@FValue)
END

GO

CREATE FUNCTION [Acc].[CTopics3OnDetailCode]  -- Edit By Rezaei 1402/11/04 for Add Currency
						(
							@CompanyCodeFrom Varchar(12)=[0],
							@CompanyCodeTo Varchar(12)=[0] ,
							@AccCode Varchar(12)=[2], 
							@CTopicCode2 Varchar(12)=[11], 
							@DetailCode Varchar(12)=[11], 
				            @SecondaryDocNoFrom Varchar(12)=[0] ,
							@SecondaryDocNoTo Varchar(12)=[2147483647999], 
                            @PrimaryDocNoFrom  Varchar(12)=[0],
							@PrimaryDocNoTo Varchar(12)=[214748364799] ,
                            @DocDateFrom Varchar(10)='0001/01/01', 
							@DocDateTo  Varchar(10)='9999/99/99' ,
                            @Status1 Varchar(150)='', 
							@Status2  integer=[-1],
							@FromYearID integer,
							@ToYearID integer,
                            @DocTypeCodeFrom varchar(150)='' ,
							@CurrencyTypeFrom  integer=0  , 
							@CurrencyTypeTo  integer=99999, 
							@CurrencyKind  integer=0  , 
				            @CTopicCode2From integer=0 ,
							@CTopicCode2FTo integer=2147483647, 
				            @CTopicCodeFrom integer=0 ,
							@CTopicCodeTo integer=2147483647

						)
RETURNS table  AS  
return (  
	select  ROW_NUMBER() OVER (partition by TopicCode,DetailCode,CTopicCode3 
						order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as _row,
			YearId,
			Serial,
			ID,
			CompanyCode,
			TopicCode,
			CTopicCode3,
			DetailCode,
			SecondaryDocNo,
			PrimaryDocNo,
			DocDate,
			Comment_L1,
			AidDocNo,
			BudgetTopicID,
			ProjectID,
			AidDocdate,
			AidAmount,
			Debt,Credit,
			SUM(Balance) over (partition by TopicCode,DetailCode,CTopicCode3 
							order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningBalance,
			BedBes,
			SORtID,
			CurrencyType,
			CurrencyCode,
			CurrenciesName,
			CurrencyDebit,
			CurrencyCredit,
			SUM(Currencybalance) over (partition by TopicCode,DetailCode,CTopicCode3 
							order by DocDate,Case when PrimaryDocNo != 0 then PrimaryDocNo else 99999999999 END ,SORtID,SecondaryDocNo,CompanyCode,serial,BedBes,id ) as RunningCurrencybalance  
	from (
		SELECT	DG.YearId , 
				0 as Serial,  
				0 as ID, 
				DG.CompanyCode, 
				D.TopicCode, 
				D.ctopiccode3, 
				D.DetailCode, 
				0 as SecondaryDocNo, 
				0 as PrimaryDocNo, 
				'01/01' as DocDate,
				'مجموع مانده از قبل  '  as  Comment_L1, 
				0 as AidDocNo, 
				0 as BudgetTopicID, 
				0 as ProjectID, 
				'--' as AidDocdate, 
				0 as AidAmount, 
				sum(D.Debt) as debt, 
				sum(D.Credit) as Credit, 
				sum(D.Debt - D.Credit) AS balance ,
				CASE sum(D.Debt - D.Credit) WHEN 0 THEN '1' ELSE '0' END as BedBes, 
				0 as SORtID,
			    -- for currency 
				case when @CurrencyKind = 0 then null else d.CurrencyType end CurrencyType,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end CurrencyCode,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end CurrenciesName,
				case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit) 
				END AS CurrencyDebit,
				case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyCredit)  
				END AS CurrencyCredit,
				case 
					when @CurrencyKind = 0 then 0 
					else SUM(D.CurrencyDebit - D.CurrencyCredit)
				END AS CurrencyBalance
				-- end of currency 
		FROM    Acc.Documents D 
				INNER JOIN Acc.DocGroups DG ON D.Serial = DG.Serial 
							AND D.YearID = DG.YearID 
							AND D.CompanyCode = DG.CompanyCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE  (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) AND (DG.YearID BETWEEN @FromYearID AND @ToYearID ) AND
			   (D.TopicCode = @AccCode) AND 
			   (D.CTopicCode3 =@CTopicCode2 ) AND 
			   (D.DetailCode =@DetailCode ) AND 
			   ((DG.SecondaryDocNo <@SecondaryDocNoFrom ) OR
			   (DG.PrimaryDocNo <@PrimaryDocNoFrom ) OR
			   (DG.DocDate < @DocDateFrom )) and (DG.Status <> 0)
			   AND isnull(d.CurrencyType,0) Between @CurrencyTypeFrom And @CurrencyTypeTo  
			   AND (D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2FTo ) 
			   AND (D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) 
		group by DG.YearId,
				DG.CompanyCode, 
				D.TopicCode, 
				D.CTopicCode3, 
				D.DetailCode,
				case when @CurrencyKind = 0 then null else d.CurrencyType end ,
				case when @CurrencyKind = 0 then null else cu.CurrencyCode end ,
				case when @CurrencyKind = 0 then null else cu.CurrenciesName end 
		
		Union All

		SELECT  DG.YearId ,DG.Serial, D.ID, DG.CompanyCode, D.TopicCode, D.CTopicCode3, D.DetailCode, 
				DG.SecondaryDocNo, DG.PrimaryDocNo, DG.DocDate, D.Comment_L1, D.AidDocNo, 
				D.BudgetTopicID, D.ProjectID, D.AidDocdate, D.AidAmount, D.Debt, D.Credit, 
				D.Debt - D.Credit AS balance, 
				CASE D.debt WHEN 0 THEN '1' ELSE '0' END AS BedBes, 
				acc.DocTypes.SORtID,
				d.CurrencyType ,
			    cu.CurrencyCode ,
			    cu.CurrenciesName ,
				d.CurrencyDebit,
				d.CurrencyCredit,
				(d.CurrencyDebit - d.CurrencyCredit )Currencybalance
		FROM   Acc.Documents D 
				INNER JOIN  Acc.DocGroups DG ON D.Serial = DG.Serial 
						AND D.YearID = DG.YearID 
						AND D.CompanyCode = DG.CompanyCode  
				LEFT OUTER JOIN acc.DocTypes ON DG.DocTypeCode = acc.DocTypes.DocTypeCode
				left Join dbo.Currencies cu on d.CurrencyType = cu.CurrenciesID
		WHERE   (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTO) AND  
				(DG.YearID   BETWEEN @FromYearID AND @ToYearID ) AND
				(D.TopicCode = @AccCode) AND 
				(D.ctopiccode3 =@CTopicCode2 ) AND 
				(D.DetailCode =@DetailCode ) AND 
  				(DG.SecondaryDocNo BETWEEN @SecondaryDocNoFrom  AND @SecondaryDocNoTo ) AND 
				(DG.PrimaryDocNo BETWEEN @PrimaryDocNoFrom AND @PrimaryDocNoTo ) AND
				(DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo )AND
				((CASE WHEN @Status1 = '' THEN 1 ELSE 0 END = 1 and (DG.Status <> 0)) OR 
				(DG.Status in (Select part From [Acc].[SplitString] (@Status1,',')))) AND 
				( CASE WHEN @DocTypeCodeFrom = '' THEN 1 ELSE 0 END = 1 OR 
				(DG.DocTypeCode in (Select part From [Acc].[SplitString] (@DocTypeCodeFrom,','))))
			   AND (D.CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2FTo ) 
			   AND (D.CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo ) 

	 )DocOnDetailCode
)

GO

CREATE PROCEDURE [Acc].[CreateSanamaXML_By_DateRange] 
	@YearID int , @CompanyID int , @MonthID int , @CompanyName nvarchar(4000) , @DateFrom Char(10) , @DateTo Char(10) 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE  @SanamaXML XML
	DECLARE  @Year varchar(4)
	if len(ltrim(@YearID))=2 
	  set  @Year='13'+ltrim(@YearID)
    else
	  set  @Year=ltrim(@YearID)

set @SanamaXML =  (
select 'SANAMA' as ProtocolName, cast('2.0' as varchar(50)) as ProtocolVer, 'MonthlyProtocol' as ProtocolType
		,acc.GetValueFromConfig('MainOrgCode') as MainOrgCode, cast(@Year as int) as [Year], @MonthID as [Month],(
select  cast(doc.TopicCode as varchar(50)) as AccCode, cast(sum(doc.Debt) as bigint) as SummaryProgressDeptor, cast(sum(doc.Credit) as bigint) as SummaryProgressCreditor
		--,isnull(case when ts.formtype=105 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 105 then SV.sanamaValue end end) 
		--end,0) as SourceType
		,isnull(case dbo.SanamaKind(doc.TopicCode,105) when 0 then dbo.SanamaValue(doc.TopicCode,105,0) when 2 then 
			case when SV.sanamaType = 105 then SV.sanamaValue end end, 0) as SourceType
		
		--,isnull(case when ts.formtype=106 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 106 then SV.sanamaValue end end) 
		--end,0) as SourceEssence
		,isnull(case dbo.SanamaKind(doc.TopicCode,106) when 0 then dbo.SanamaValue(doc.TopicCode,106,0) when 2 then 
			case when SV.sanamaType = 106 then SV.sanamaValue end end, 0) as SourceEssence

		--,isnull(case when ts.formtype=107 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 107 then SV.sanamaValue end end) 
		--end,0) as OtherSourceType
		,isnull(case dbo.SanamaKind(doc.TopicCode,107) when 0 then dbo.SanamaValue(doc.TopicCode,107,0) when 2 then 
			case when SV.sanamaType = 107 then SV.sanamaValue end end, 0) as OtherSourceType

		--,isnull(case when ts.formtype=108 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 108 then SV.sanamaValue end end) 
		--end,0) as CreditType
		,isnull(case dbo.SanamaKind(doc.TopicCode,108) when 0 then dbo.SanamaValue(doc.TopicCode,108,0) when 2 then 
			case when SV.sanamaType = 108 then SV.sanamaValue end end, 0) as CreditType

		--,isnull(case when ts.formtype=109 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 109 then SV.sanamaValue end end) 
		--end,0) as TransferalType
		,isnull(case dbo.SanamaKind(doc.TopicCode,109) when 0 then dbo.SanamaValue(doc.TopicCode,109,0) when 2 then 
			case when SV.sanamaType = 109 then SV.sanamaValue end end, 0) as TransferalType

		--,isnull(case when ts.formtype=110 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 110 then SV.sanamaValue end end) 
		--end,0) as CreditInfo
		,isnull(case dbo.SanamaKind(doc.TopicCode,110) when 0 then dbo.SanamaValue(doc.TopicCode,110,0) when 2 then 
			case when SV.sanamaType = 110 then SV.sanamaValue end end, 0) as CreditInfo

		--,cast(isnull(case when ts.formtype=131 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 131 then SV.sanamaValue end end) 
		--end,0) as varchar(50)) as RankNumber
		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,131) when 0 then dbo.SanamaValue(doc.TopicCode,131,0) when 2 then 
			case when SV.sanamaType = 131 then SV.sanamaValue end end, 0) as varchar(50)) as RankNumber
		
		, cast(isnull(doc.BudgetTopicID,0) as varchar(50)) as CreditCode

		--,isnull(case when ts.formtype=111 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 111 then SV.sanamaValue end end) 
		--end,0) as ExpenseArticle
		,isnull(case dbo.SanamaKind(doc.TopicCode,111) when 0 then dbo.SanamaValue(doc.TopicCode,111,0) when 2 then 
			case when SV.sanamaType = 111 then SV.sanamaValue end end, 0) as ExpenseArticle

		--,cast(isnull(case when ts.formtype=132 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 1132 then SV.sanamaValue end end) 
		--end,0) as varchar(50)) as ExpenseDetailArticle
		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,132) when 0 then dbo.SanamaValue(doc.TopicCode,132,0) when 2 then 
			case when SV.sanamaType = 132 then SV.sanamaValue end end, 0) as varchar(50)) as ExpenseDetailArticle

		--,isnull(case when ts.formtype=126 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 126 then SV.sanamaValue end end) 
		--end,0) as ConstructArticle
		,isnull(case dbo.SanamaKind(doc.TopicCode,126) when 0 then dbo.SanamaValue(doc.TopicCode,126,0) when 2 then 
			case when SV.sanamaType = 126 then SV.sanamaValue end end, 0) as ConstructArticle

		--,isnull(case when ts.formtype=133 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 133 then SV.sanamaValue end end) 
		--end,0) as IncomeCode
		,isnull(case dbo.SanamaKind(doc.TopicCode,133) when 0 then dbo.SanamaValue(doc.TopicCode,133,0) when 2 then 
			case when SV.sanamaType = 133 then SV.sanamaValue end end, 0) as IncomeCode

		--,isnull(case when ts.formtype=112 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 112 then SV.sanamaValue end end) 
		--end,0) as IncomeType
		,isnull(case dbo.SanamaKind(doc.TopicCode,112) when 0 then dbo.SanamaValue(doc.TopicCode,112,0) when 2 then 
			case when SV.sanamaType = 112 then SV.sanamaValue end end, 0) as IncomeType

		--,isnull(case when ts.formtype=113 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 113 then SV.sanamaValue end end) 
		--end,0) as OtherIncomeType
		,isnull(case dbo.SanamaKind(doc.TopicCode,113) when 0 then dbo.SanamaValue(doc.TopicCode,113,0) when 2 then 
			case when SV.sanamaType = 113 then SV.sanamaValue end end, 0) as OtherIncomeType

		--,isnull(case when ts.formtype=114 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 114 then SV.sanamaValue end end) 
		--end,0) as TaxSeason
		,isnull(case dbo.SanamaKind(doc.TopicCode,114) when 0 then dbo.SanamaValue(doc.TopicCode,114,0) when 2 then 
			case when SV.sanamaType = 114 then SV.sanamaValue end end, 0) as TaxSeason

		,acc.GetValueFromConfig('DebentureSenderRank') as DebentureSenderRank, acc.GetValueFromConfig('DebentureReceiverRank') as DebentureReceiverRank
		,cast(CT.CTopicName_L1 as nvarchar(4000)) as CostCenter, doc.CashType as AwardArticle

		--,isnull(case when ts.formtype=116 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 116 then SV.sanamaValue end end) 
		--end,0) as Securitiestype
		,isnull(case dbo.SanamaKind(doc.TopicCode,116) when 0 then dbo.SanamaValue(doc.TopicCode,116,0) when 2 then 
			case when SV.sanamaType = 116 then SV.sanamaValue end end, 0) as Securitiestype

		,cast(case when len(ltrim(@YearID))=2 then  '13'+ltrim(doc.YearID) else ltrim(doc.YearID) end as int) as [Year], @CompanyName as Nominee

		--,isnull(case when ts.formtype=117 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 117 then SV.sanamaValue end end) 
		--end,0) as GuaranteeEssence
		,isnull(case dbo.SanamaKind(doc.TopicCode,117) when 0 then dbo.SanamaValue(doc.TopicCode,117,0) when 2 then 
			case when SV.sanamaType = 117 then SV.sanamaValue end end, 0) as GuaranteeEssence

		--,isnull(case when ts.formtype=118 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 118 then SV.sanamaValue end end) 
		--end,0) as DemandStatus
		,isnull(case dbo.SanamaKind(doc.TopicCode,118) when 0 then dbo.SanamaValue(doc.TopicCode,118,0) when 2 then 
			case when SV.sanamaType = 118 then SV.sanamaValue end end, 0) as DemandStatus

		--,isnull(case when ts.formtype=119 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 119 then SV.sanamaValue end end) 
		--end,0) as TempPaymenttype
		,isnull(case dbo.SanamaKind(doc.TopicCode,119) when 0 then dbo.SanamaValue(doc.TopicCode,119,0) when 2 then 
			case when SV.sanamaType = 119 then SV.sanamaValue end end, 0) as TempPaymenttype

		--,isnull(case when ts.formtype=120 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 120 then SV.sanamaValue end end) 
		--end,0) as LeakageSubject
		,isnull(case dbo.SanamaKind(doc.TopicCode,120) when 0 then dbo.SanamaValue(doc.TopicCode,120,0) when 2 then 
			case when SV.sanamaType = 120 then SV.sanamaValue end end, 0) as LeakageSubject

		--,isnull(case when ts.formtype=121 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 121 then SV.sanamaValue end end) 
		--end,0) as AssuranceType
		,isnull(case dbo.SanamaKind(doc.TopicCode,121) when 0 then dbo.SanamaValue(doc.TopicCode,121,0) when 2 then 
			case when SV.sanamaType = 121 then SV.sanamaValue end end, 0) as AssuranceType

		--,isnull(case when ts.formtype=122 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 122 then SV.sanamaValue end end) 
		--end,0) as AssuranceSubject
		,isnull(case dbo.SanamaKind(doc.TopicCode,122) when 0 then dbo.SanamaValue(doc.TopicCode,122,0) when 2 then 
			case when SV.sanamaType = 122 then SV.sanamaValue end end, 0) as AssuranceSubject

		,doc.CurrencyType, cast(cust.CustAccountNumber as varchar(26)) as AccountNumber

		--,isnull(case when ts.formtype=124 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 124 then SV.sanamaValue end end) 
		--end,0) as InsuranceType
		,isnull(case dbo.SanamaKind(doc.TopicCode,124) when 0 then dbo.SanamaValue(doc.TopicCode,124,0) when 2 then 
			case when SV.sanamaType = 124 then SV.sanamaValue end end, 0) as InsuranceType

		--,cast(isnull(case when ts.formtype=127 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 127 then SV.sanamaValue end end) 
		--end,0) as varchar(50)) as PropertyType
		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,127) when 0 then dbo.SanamaValue(doc.TopicCode,127,0) when 2 then 
			case when SV.sanamaType = 127 then SV.sanamaValue end end, 0) as varchar(50)) as PropertyType
		
		--,cast(isnull(case when ts.formtype=128 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 128 then SV.sanamaValue end end) 
		--end,0) as varchar(50)) as FinanceDetailArticle
		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,128) when 0 then dbo.SanamaValue(doc.TopicCode,128,0) when 2 then 
			case when SV.sanamaType = 128 then SV.sanamaValue end end, 0) as varchar(50)) as FinanceDetailArticle
		
		--,cast(isnull(case when ts.formtype=129 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 129 then SV.sanamaValue end end) 
		--end,0) as varchar(50)) as InventoryType
		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,129) when 0 then dbo.SanamaValue(doc.TopicCode,129,0) when 2 then 
			case when SV.sanamaType = 129 then SV.sanamaValue end end, 0) as varchar(50)) as InventoryType
		
		--,cast(isnull(case when ts.formtype=130 then 
		--( case TS.Kind when 0 then TS.DefaultValue when 2 then case when SV.sanamaType = 130 then SV.sanamaValue end end) 
		--end,0) as varchar(50)) as InventoryDetailArticle
		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,130) when 0 then dbo.SanamaValue(doc.TopicCode,130,0) when 2 then 
			case when SV.sanamaType = 130 then SV.sanamaValue end end, 0) as varchar(50)) as InventoryDetailArticle

		,cast(case when doc.TopicCode = 17002 then 'مشخصات سرمايه گذاري'
			  when doc.TopicCode in (18001,18002,25002,25003) then 'مشخصات قرارداد تسهيلات بلند مدت'
			  when doc.TopicCode = 25001 then 'مشخصات اوراق مشارکت'
			  when doc.TopicCode = 31004 then 'موضوع تعديلات سنواتي' end as nvarchar(4000)) as [Description]

 from acc.Documents as doc --inner join acc.TopicSanama as TS on doc.TopicCode = TS.TopicCode
						   inner join acc.DocGroups as DG on DG.Serial = doc.Serial and DG.YearID = doc.YearID and DG.CompanyCode = doc.CompanyCode
						   inner join acc.SanamaView as SV on SV.id = doc.ID
						   left join dbo.Customers as cust on cust.CustID = doc.DetailCode
						   left join acc.CenterTopics as CT on CT.CTopicCode = doc.CTopicCode 
 where (doc.YearID = @YearID) and (DG.DocDate Between @DateFrom and @DateTo ) and (doc.CompanyCode = @CompanyID)
 group by doc.TopicCode, /*TS.FormType, TS.Kind, TS.DefaultValue,*/ Sv.sanamaType, SV.sanamaValue, doc.BudgetTopicID, doc.CTopicCode, doc.CashType
		  , doc.YearID, doc.CurrencyType, cust.CustAccountNumber,CT.CTopicName_L1
for xml raw ('Report_List'),type),
(select  Customers.CustAccountNumber as AccountNumber,Customers.CustName as AccountDesp, formsinfo.InfoName_L1 as AccountType ,(
 select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
) as AccountNumberImage
,(select isnull(sanama.MojoodiTebgheDaftar,'') For xml path('MojoodiTebgheDaftar'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 1 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType1'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 2 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType2'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 3 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType3'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.DocNo,'0') as DocNo
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 4 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType4'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.DocNo,'0') as DocNo
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 5 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType5'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 6 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType6'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 7 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType7'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 8 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType8'),type)

,(select isnull(sanama.MojoodiTebgheBank,'') For xml path('MojoodiTebgheBank'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 9 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType9'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.CheckNo,'0') as CheckNo
,isnull(sanama1.Zinaf,'') as Zinaf
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.DocNo,'0') as DocNo
,isnull(sanama1.DocDate,'0') as DocDate
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 10 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType10'),type)

 from acc.ContrastAccountSanama as sanama
 inner join 
Customers on Customers.CustID = sanama.DetailCode
inner join 
acc.FormsInfo as formsinfo on formsinfo.FormInfoID = sanama.Value  
where (sanama.DiffType = 0) and (sanama.YearID = @YearID) and (sanama.Month <= @MonthID)

for xml raw('ContrastAccount_List'),type)
for xml raw('SanamaInfo')
)
select @SanamaXML as XMLReport
END

GO

CREATE PROCEDURE [Acc].[CreateSanamaXML_By_DateRange_2] 
	@YearID int , @CompanyID int , @MonthID int , @CompanyName nvarchar(4000) , @DateFrom Char(10) , @DateTo Char(10) 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE  @Year varchar(4)
	if len(ltrim(@YearID))=2 
	  set  @Year='13'+ltrim(@YearID)
    else
	  set  @Year=ltrim(@YearID)

	DECLARE  @SanamaXML XML
set @SanamaXML =  (
select 'SANAMA' as ProtocolName, cast('2.2' as varchar(50)) as ProtocolVer, 'MonthlyProtocol' as ProtocolType
		,acc.GetValueFromConfig('MainOrgID') as MainOrgID, acc.GetValueFromConfig('MainOrgCode') as MainOrgCode, cast(@Year as int) as [Year], @MonthID as [Month],(
select  cast(doc.TopicCode as varchar(50)) as AccCode, cast(sum(doc.Debt) as bigint) as SummaryProgressDeptor, cast(sum(doc.Credit) as bigint) as SummaryProgressCreditor

		,isnull(case dbo.SanamaKind(doc.TopicCode,105) when 0 then dbo.SanamaValue(doc.TopicCode,105,0) when 2 then 
			case when SV.sanamaType = 105 then SV.sanamaValue end end, 0) as SourceType
		
		,isnull(case dbo.SanamaKind(doc.TopicCode,106) when 0 then dbo.SanamaValue(doc.TopicCode,106,0) when 2 then 
			case when SV.sanamaType = 106 then SV.sanamaValue end end, 0) as SourceEssence

		,isnull(case dbo.SanamaKind(doc.TopicCode,107) when 0 then dbo.SanamaValue(doc.TopicCode,107,0) when 2 then 
			case when SV.sanamaType = 107 then SV.sanamaValue end end, 0) as OtherSourceType

		,isnull(case dbo.SanamaKind(doc.TopicCode,108) when 0 then dbo.SanamaValue(doc.TopicCode,108,0) when 2 then 
			case when SV.sanamaType = 108 then SV.sanamaValue end end, 0) as CreditType

		,isnull(case dbo.SanamaKind(doc.TopicCode,109) when 0 then dbo.SanamaValue(doc.TopicCode,109,0) when 2 then 
			case when SV.sanamaType = 109 then SV.sanamaValue end end, 0) as TransferalType

		,isnull(case dbo.SanamaKind(doc.TopicCode,110) when 0 then dbo.SanamaValue(doc.TopicCode,110,0) when 2 then 
			case when SV.sanamaType = 110 then SV.sanamaValue end end, 0) as CreditInfo

		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,131) when 0 then dbo.SanamaValue(doc.TopicCode,131,0) when 2 then 
			case when SV.sanamaType = 131 then SV.sanamaValue end end, 0) as varchar(50)) as RankNumber
		
		, cast(isnull(doc.BudgetTopicID,0) as varchar(50)) as CreditCode

		,isnull(case dbo.SanamaKind(doc.TopicCode,111) when 0 then dbo.SanamaValue(doc.TopicCode,111,0) when 2 then 
			case when SV.sanamaType = 111 then SV.sanamaValue end end, 0) as ExpenseArticle

		,isnull(case dbo.SanamaKind(doc.TopicCode,126) when 0 then dbo.SanamaValue(doc.TopicCode,126,0) when 2 then 
			case when SV.sanamaType = 126 then SV.sanamaValue end end, 0) as ConstructArticle

		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,132) when 0 then dbo.SanamaValue(doc.TopicCode,132,0) when 2 then 
			case when SV.sanamaType = 132 then SV.sanamaValue end end, 0) as varchar(50)) as ExpenseDetailArticle

		,isnull(case dbo.SanamaKind(doc.TopicCode,133) when 0 then dbo.SanamaValue(doc.TopicCode,133,0) when 2 then 
			case when SV.sanamaType = 133 then SV.sanamaValue end end, 0) as IncomeCode

		,isnull(case dbo.SanamaKind(doc.TopicCode,112) when 0 then dbo.SanamaValue(doc.TopicCode,112,0) when 2 then 
			case when SV.sanamaType = 112 then SV.sanamaValue end end, 0) as IncomeSubject

		--New
		,isnull(case dbo.SanamaKind(doc.TopicCode,134) when 0 then dbo.SanamaValue(doc.TopicCode,134,0) when 2 then 
			case when SV.sanamaType = 134 then SV.sanamaValue end end, 0) as Governmental

		,isnull(case dbo.SanamaKind(doc.TopicCode,114) when 0 then dbo.SanamaValue(doc.TopicCode,114,0) when 2 then 
			case when SV.sanamaType = 114 then SV.sanamaValue end end, 0) as TaxSeason

		,acc.GetValueFromConfig('DebentureSenderRank') as DebentureSenderRank, acc.GetValueFromConfig('DebentureReceiverRank') as DebentureReceiverRank
		,cast(CT.CTopicName_L1 as nvarchar(4000)) as CostCenter, doc.CashType as AwardArticle

		,isnull(case dbo.SanamaKind(doc.TopicCode,116) when 0 then dbo.SanamaValue(doc.TopicCode,116,0) when 2 then 
			case when SV.sanamaType = 116 then SV.sanamaValue end end, 0) as Securitiestype

		,isnull(case dbo.SanamaKind(doc.TopicCode,117) when 0 then dbo.SanamaValue(doc.TopicCode,117,0) when 2 then 
			case when SV.sanamaType = 117 then SV.sanamaValue end end, 0) as GuaranteeEssence

		,cast(case when len(ltrim(@YearID))=2 then  '13'+ltrim(doc.YearID) else ltrim(doc.YearID) end as int) as [Year] 
		,acc.GetValueFromConfig('NomineeCode') as NomineeCode, acc.GetValueFromConfig('NomineeName') as Nominee

		,isnull(case dbo.SanamaKind(doc.TopicCode,118) when 0 then dbo.SanamaValue(doc.TopicCode,118,0) when 2 then 
			case when SV.sanamaType = 118 then SV.sanamaValue end end, 0) as DemandStatus

		,isnull(case dbo.SanamaKind(doc.TopicCode,119) when 0 then dbo.SanamaValue(doc.TopicCode,119,0) when 2 then 
			case when SV.sanamaType = 119 then SV.sanamaValue end end, 0) as TempPaymenttype

		,isnull(case dbo.SanamaKind(doc.TopicCode,120) when 0 then dbo.SanamaValue(doc.TopicCode,120,0) when 2 then 
			case when SV.sanamaType = 120 then SV.sanamaValue end end, 0) as LeakageSubject

		,isnull(case dbo.SanamaKind(doc.TopicCode,121) when 0 then dbo.SanamaValue(doc.TopicCode,121,0) when 2 then 
			case when SV.sanamaType = 121 then SV.sanamaValue end end, 0) as AssuranceType

		,isnull(case dbo.SanamaKind(doc.TopicCode,122) when 0 then dbo.SanamaValue(doc.TopicCode,122,0) when 2 then 
			case when SV.sanamaType = 122 then SV.sanamaValue end end, 0) as AssuranceSubject

		,doc.CurrencyType, cast(cust.CustAccountNumber as varchar(26)) as AccountNumber

		,isnull(case dbo.SanamaKind(doc.TopicCode,124) when 0 then dbo.SanamaValue(doc.TopicCode,124,0) when 2 then 
			case when SV.sanamaType = 124 then SV.sanamaValue end end, 0) as InsuranceType

		,isnull(case dbo.SanamaKind(doc.TopicCode,135) when 0 then dbo.SanamaValue(doc.TopicCode,135,0) when 2 then 
			case when SV.sanamaType = 135 then SV.sanamaValue end end, 0) as DebitSubject

		,isnull(case dbo.SanamaKind(doc.TopicCode,136) when 0 then dbo.SanamaValue(doc.TopicCode,136,0) when 2 then 
			case when SV.sanamaType = 136 then SV.sanamaValue end end, 0) as FixedAssetType

		,cast(isnull(case dbo.SanamaKind(doc.TopicCode,129) when 0 then dbo.SanamaValue(doc.TopicCode,129,0) when 2 then 
			case when SV.sanamaType = 129 then SV.sanamaValue end end, 0) as varchar(50)) as InventoryType

		, 0 as Quantity, '' as DueDate, '' as SecuritiesProperties, '' as ContractProperties

		,isnull(case dbo.SanamaKind(doc.TopicCode,137) when 0 then dbo.SanamaValue(doc.TopicCode,137,0) when 2 then 
			case when SV.sanamaType = 137 then SV.sanamaValue end end, 0) as InvestmentType
		
		,isnull(case dbo.SanamaKind(doc.TopicCode,138) when 0 then dbo.SanamaValue(doc.TopicCode,138,0) when 2 then 
			case when SV.sanamaType = 138 then SV.sanamaValue end end, 0) as AnnualAdjustmentsSubject


 from acc.Documents as doc --inner join acc.TopicSanama as TS on doc.TopicCode = TS.TopicCode
						   inner join acc.DocGroups as DG on DG.Serial = doc.Serial and DG.YearID = doc.YearID and DG.CompanyCode = doc.CompanyCode
						   left join acc.SanamaView as SV on SV.id = doc.ID
						   left join dbo.Customers as cust on cust.CustID = doc.DetailCode
						   left join acc.CenterTopics as CT on CT.CTopicCode = doc.CTopicCode 
 where (doc.YearID = @YearID) and (DG.DocDate Between @DateFrom and @DateTo ) and (doc.CompanyCode = @CompanyID)
 group by doc.TopicCode, /*TS.FormType, TS.Kind, TS.DefaultValue,*/ Sv.sanamaType, SV.sanamaValue, doc.BudgetTopicID, doc.CTopicCode, doc.CashType
		  , doc.YearID, doc.CurrencyType, cust.CustAccountNumber,CT.CTopicName_L1
for xml raw ('Report_List'),type),

(select  Customers.CustAccountNumber as AccountNumber,Customers.CustName as AccountDesp, formsinfo.InfoName_L1 as AccountType ,(
 select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
) as AccountNumberImage
,(select isnull(sanama.MojoodiTebgheDaftar,'') For xml path('MojoodiTebgheDaftar'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 1 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType1'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 2 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType2'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense 
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 3 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType3'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.DocNo,'0') as DocNo
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 4 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType4'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.DocNo,'0') as DocNo
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 5 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType5'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 6 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType6'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 7 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType7'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 8 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType8'),type)

,(select isnull(sanama.MojoodiTebgheBank,'') For xml path('MojoodiTebgheBank'),type)

,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.Expense,0) as Expense
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 9 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType9'),type)

, (select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.CheckNo,'0') as CheckNo
,isnull(sanama1.Zinaf,'') as Zinaf
,isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Documents
,isnull(sanama1.DocNo,'0') as DocNo
,isnull(sanama1.DocDate,'0') as DocDate
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 10 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType10'),type)
--------------------------------------------------------------------------------------------------------------------------------------------
,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 11 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType11'),type)
-----------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
,(select isnull(sanama1.Value,0) as Value
,(select
isnull(sanama1.Expense,0) as Expense
,isnull(sanama1.ContrastDate,'') as Date
,isnull(sanama1.Description,'') as Description
from acc.ContrastAccountSanama where acc.ContrastAccountSanama.MasterID = sanama1.MasterID
For xml raw('Detail_List'),type)
,(select cast(isnull(Attachment,0) as image) as Attachment,isnull(Extension,'') as  Extension,isnull(Description,'') as  Description
from acc.AttachmentSanama 
where acc.AttachmentSanama.ParentID = sanama1.MasterID For xml raw('Attachement_List'),BINARY BASE64,type
)
from acc.ContrastAccountSanama as sanama1
where sanama1.DiffType = 12 and sanama1.ParentID = sanama.MasterID For xml raw ('DiffType12'),type)
-----------------------------------------------------------------------------------------------------------------------------------------
 from acc.ContrastAccountSanama as sanama
 inner join 
Customers on Customers.CustID = sanama.DetailCode
inner join 
acc.FormsInfo as formsinfo on formsinfo.FormInfoID = sanama.Value  
where (sanama.DiffType = 0) and (sanama.YearID = @YearID) and (sanama.Month <= @MonthID)

for xml raw('ContrastAccount_List'),type)
for xml raw('SanamaInfo')
)
select @SanamaXML as XMLReport
END

GO

--CREATE FUNCTION Acc.rptElectronicsBooks  ( 
--							@LenAccCode int=2 ,
--							@CompanyCodeFrom integer= 0 , 
--							@CompanyCodeTo integer= 2147483647  ,
--							@DocDateFrom Varchar(10)='0001/01/01', 
--							@DocDateTo  Varchar(10)='9999/99/99' ,
--							@YearIDFrom Integer = 1403 ,
--							@YearIDTo integer= 1404  
--						)
--RETURNS table AS  
--return 
--(
--SELECT	TOP (100) PERCENT 
--	dg.PrimaryDocNo,
--	LEFT(D.TopicCode, @LenAccCode) AS AccCode, 
--	CK.MoeenName_L1 AS KolName_L1, 
--	D.TopicCode, 
--	C.MoeenName_L1, 
--	D.Comment_L1, 
--	D.Debt, 
--	D.Credit,
--	DG.DocDate
--FROM
--	Acc.DocGroups AS DG 
--	INNER JOIN Acc.Documents AS D ON DG.Serial = D.Serial AND DG.CompanyCode = D.CompanyCode AND DG.YearID = D.YearID 
--	INNER JOIN Acc.Categories Ck ON LEFT(D.TopicCode, @LenAccCode) = Ck.TopicCode
--	INNER JOIN Acc.Categories AS C ON D.TopicCode = C.TopicCode 
--	INNER JOIN Acc.Companies AS Co ON Co.CompanyCode = DG.CompanyCode 
--	LEFT OUTER JOIN Acc.Currencies AS Cur ON D.CurrencyType = Cur.CurrenciesID

						 
--WHERE 
--	DG.YearID BETWEEN @YearIDFrom AND @YearIDTo 
--	AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
--	AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo) 

-----(تاریخ-شماره سند-کد کل-بد-بس)
----ORDER BY dg.DocDate,dg.PrimaryDocNo,LEFT(D.TopicCode, @LenAccCode),D.Debt,D.Credit
--ORDER BY  DocDate,PrimaryDocNo , SecondaryDocNo, CASE WHEN [debt]>0 THEN 0 ELSE 1 END , AccCode

--)

GO

CREATE FUNCTION Acc.rptElectronicsBooks_Detail (
    @LenAccCode int = 2,
    @CompanyCodeFrom integer = 0,
    @CompanyCodeTo integer = 2147483647,
    @DocDateFrom Varchar(10) = '0001/01/01',
    @DocDateTo Varchar(10) = '9999/99/99',
    @YearIDFrom Integer = 1403,
    @YearIDTo integer = 1404,
    @DocTypeCodes Varchar(1000) = '1,2,3,4,5,6,7,8,9,10,11' -- پارامتر جدید
)
RETURNS TABLE AS
RETURN (
    WITH TypeFilter AS
    (
        SELECT CAST(lTRIM(rTRIM(part)) AS INT) AS Code 
        FROM Acc.SplitString(@DocTypeCodes, ',')
    )
    SELECT TOP (100) PERCENT 
        dg.PrimaryDocNo,
        LEFT(D.TopicCode, @LenAccCode) AS AccCode, 
        CK.MoeenName_L1 AS KolName_L1, 
        D.TopicCode, 
        C.MoeenName_L1, 
        D.Comment_L1, 
        D.Debt, 
        D.Credit,
        DG.DocDate
    FROM
        Acc.DocGroups AS DG 
        INNER JOIN Acc.Documents AS D ON DG.Serial = D.Serial AND DG.CompanyCode = D.CompanyCode AND DG.YearID = D.YearID 
        INNER JOIN Acc.Categories Ck ON LEFT(D.TopicCode, @LenAccCode) = Ck.TopicCode
        INNER JOIN Acc.Categories AS C ON D.TopicCode = C.TopicCode 
        INNER JOIN Acc.Companies AS Co ON Co.CompanyCode = DG.CompanyCode 
        LEFT OUTER JOIN Acc.Currencies AS Cur ON D.CurrencyType = Cur.CurrenciesID
        INNER JOIN TypeFilter TF ON DG.DocTypeCode = TF.Code -- اعمال فیلتر نوع سند
    WHERE 
        DG.YearID BETWEEN @YearIDFrom AND @YearIDTo 
        AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
        AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo) 
    ORDER BY DocDate, PrimaryDocNo, SecondaryDocNo, CASE WHEN [debt] > 0 THEN 0 ELSE 1 END, AccCode
)
GO
CREATE FUNCTION Acc.rptElectronicsBooks_Summary (
    @LenAccCode int = 2,
    @CompanyCodeFrom integer = 0,
    @CompanyCodeTo integer = 2147483647,
    @DocDateFrom Varchar(10) = '0001/01/01',
    @DocDateTo Varchar(10) = '9999/99/99',
    @YearIDFrom Integer = 1403,
    @YearIDTo integer = 1404,
    @DocTypeCodes Varchar(1000) = '1,2,3,4,5,6,7,8,9,10,11' -- پارامتر جدید
)
RETURNS TABLE AS
RETURN (
    WITH TypeFilter AS
    (
        SELECT CAST(lTRIM(rTRIM(part)) AS INT) AS Code 
        FROM Acc.SplitString(@DocTypeCodes, ',')
    )
    SELECT TOP (100) PERCENT 
        dg.PrimaryDocNo,
        LEFT(D.TopicCode, @LenAccCode) AS AccCode, 
        CK.MoeenName_L1 AS KolName_L1, 
        CAST (Null as bigint) TopicCode,  
        CAST (Null  as varchar)MoeenName_L1,
        CAST (Null  as varchar) Comment_L1, 
         SUM(CASE WHEN D.Debt > 0 THEN D.Debt ELSE 0 END) AS Debt,
        SUM(CASE WHEN D.Credit > 0 THEN D.Credit ELSE 0 END) AS Credit,
        DG.DocDate
    FROM
        Acc.DocGroups AS DG 
        INNER JOIN Acc.Documents AS D ON DG.Serial = D.Serial AND DG.CompanyCode = D.CompanyCode AND DG.YearID = D.YearID 
        INNER JOIN Acc.Categories Ck ON LEFT(D.TopicCode, @LenAccCode) = Ck.TopicCode
        --INNER JOIN Acc.Categories AS C ON D.TopicCode = C.TopicCode  
        INNER JOIN Acc.Companies AS Co ON Co.CompanyCode = DG.CompanyCode 
        LEFT OUTER JOIN Acc.Currencies AS Cur ON D.CurrencyType = Cur.CurrenciesID
        INNER JOIN TypeFilter TF ON DG.DocTypeCode = TF.Code -- اعمال فیلتر نوع سند
    WHERE 
        DG.YearID BETWEEN @YearIDFrom AND @YearIDTo 
        AND (DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo) 
        AND (DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo) 
    GROUP BY dg.PrimaryDocNo,  LEFT(D.TopicCode, @LenAccCode) ,  CK.MoeenName_L1 ,           DG.DocDate ,
	    CASE D.debt WHEN 0 THEN 1 ELSE 0 END
    ORDER BY DocDate, PrimaryDocNo,  CASE WHEN SUM([debt]) > 0 THEN 0 ELSE 1 END, AccCode
)
GO
CREATE FUNCTION Acc.rptElectronicsBooks_Monthly (
    @LenAccCode int = 2,
    @CompanyCodeFrom integer = 0,
    @CompanyCodeTo integer = 2147483647,
    @DocDateFrom Varchar(10) = '0001/01/01',
    @DocDateTo Varchar(10) = '9999/99/99',
    @YearIDFrom Integer = 1403,
    @YearIDTo integer = 1404,
    @DocTypeCodes Varchar(1000) = '1,2,3,4,5,6,7,8,9,10,11'
)
RETURNS TABLE
AS
RETURN
(
    WITH TypeFilter AS
    (
        SELECT CAST(LTRIM(RTRIM(part)) AS INT) AS Code 
        FROM Acc.SplitString(@DocTypeCodes, ',')
        WHERE LTRIM(RTRIM(part)) <> ''
    ),
    BaseData AS
    (
        -- اسناد افتتاحیه
        SELECT
            1 AS DocNo,
            MIN(DG.DocDate) AS BaseDocDate,
            LEFT(D.TopicCode, @LenAccCode) AS AccCode,
            CK.MoeenName_L1 AS KolName_L1,
            CAST(0 AS BIGINT) AS TopicCode,
            '' AS MoeenName_L1,
            SUM(D.Debt) AS SumDebt,
            SUM(D.Credit) AS SumCredit
        FROM Acc.DocGroups DG
        INNER JOIN Acc.Documents D 
            ON DG.Serial = D.Serial 
           AND DG.CompanyCode = D.CompanyCode 
           AND DG.YearID = D.YearID
        INNER JOIN Acc.Categories CK 
            ON LEFT(D.TopicCode, @LenAccCode) = CK.TopicCode
        INNER JOIN TypeFilter TF ON DG.DocTypeCode = TF.Code
        WHERE 
            DG.YearID BETWEEN @YearIDFrom AND @YearIDTo
            AND DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo
            AND DG.DocTypeCode = 1
            AND DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo
        GROUP BY case when D.Debt > 0 then 1 else 0 end,
            LEFT(D.TopicCode, @LenAccCode), 
            CK.MoeenName_L1

        UNION ALL

        -- اسناد بستن حسابهاي موقت
        SELECT
            14 AS DocNo,
            MIN(DG.DocDate) AS BaseDocDate,
            LEFT(D.TopicCode, @LenAccCode) AS AccCode,
            CK.MoeenName_L1 AS KolName_L1,
            CAST(0 AS BIGINT) AS TopicCode,
            '' AS MoeenName_L1,
            SUM(D.Debt) AS SumDebt,
            SUM(D.Credit) AS SumCredit
        FROM Acc.DocGroups DG
        INNER JOIN Acc.Documents D
            ON DG.Serial = D.Serial
           AND DG.CompanyCode = D.CompanyCode
           AND DG.YearID = D.YearID
        INNER JOIN Acc.Categories CK
            ON LEFT(D.TopicCode, @LenAccCode) = CK.TopicCode
        INNER JOIN TypeFilter TF ON DG.DocTypeCode = TF.Code
        WHERE
            DG.YearID BETWEEN @YearIDFrom AND @YearIDTo
            AND DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo
            AND DG.DocTypeCode = 4
            AND DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo
        GROUP BY case when D.Debt > 0 then 1 else 0 end,
            LEFT(D.TopicCode, @LenAccCode),
            CK.MoeenName_L1

        UNION ALL

        -- اسناد اختتامیه
        SELECT
            15 AS DocNo,
            MIN(DG.DocDate) AS BaseDocDate,
            LEFT(D.TopicCode, @LenAccCode) AS AccCode,
            CK.MoeenName_L1 AS KolName_L1,
            CAST(0 AS BIGINT) AS TopicCode,
            '' AS MoeenName_L1,
            SUM(D.Debt) AS SumDebt,
            SUM(D.Credit) AS SumCredit
        FROM Acc.DocGroups DG
        INNER JOIN Acc.Documents D
            ON DG.Serial = D.Serial
           AND DG.CompanyCode = D.CompanyCode
           AND DG.YearID = D.YearID
        INNER JOIN Acc.Categories CK
            ON LEFT(D.TopicCode, @LenAccCode) = CK.TopicCode
        INNER JOIN TypeFilter TF ON DG.DocTypeCode = TF.Code
        WHERE
            DG.YearID BETWEEN @YearIDFrom AND @YearIDTo
            AND DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo
            AND DG.DocTypeCode = 5
            AND DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo
        GROUP BY case when D.Debt > 0 then 1 else 0 end,
            LEFT(D.TopicCode, @LenAccCode),
            CK.MoeenName_L1

        UNION ALL

        -- اسناد عادی ماهیانه
        SELECT
            CAST(SUBSTRING(LEFT(DG.DocDate,7), 6, 2) AS INT) + 1 AS DocNo,
            MIN(DG.DocDate) AS BaseDocDate,
            LEFT(D.TopicCode, @LenAccCode) AS AccCode,
            CK.MoeenName_L1 AS KolName_L1,
            CAST(0 AS BIGINT) AS TopicCode,
            '' AS MoeenName_L1,
            SUM(D.Debt) AS SumDebt,
            SUM(D.Credit) AS SumCredit
        FROM Acc.DocGroups DG
        INNER JOIN Acc.Documents D 
            ON DG.Serial = D.Serial 
           AND DG.CompanyCode = D.CompanyCode 
           AND DG.YearID = D.YearID
        INNER JOIN Acc.Categories CK 
            ON LEFT(D.TopicCode, @LenAccCode) = CK.TopicCode
        INNER JOIN TypeFilter TF ON DG.DocTypeCode = TF.Code       
        WHERE 
            DG.YearID BETWEEN @YearIDFrom AND @YearIDTo
            AND DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo
            AND DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo
            AND DG.DocTypeCode NOT IN (1, 4, 5)
        GROUP BY case when D.Debt > 0 then 1 else 0 end,
            LEFT(DG.DocDate,7),
            LEFT(D.TopicCode, @LenAccCode), 
            CK.MoeenName_L1
    ),
    FormattedData AS
    (
        SELECT
            DocNo AS PrimaryDocNo,
            CASE 
                WHEN DocNo = 1 THEN BaseDocDate 
                WHEN DocNo IN (14, 15) THEN BaseDocDate
                WHEN DocNo BETWEEN 2 AND 7 THEN LEFT(BaseDocDate,7) + '/31'
                WHEN DocNo BETWEEN 8 AND 12 THEN LEFT(BaseDocDate,7) + '/30'
                ELSE LEFT(BaseDocDate,7) + '/29' 
            END AS DocDate,
            AccCode,
            KolName_L1,
            TopicCode,
            MoeenName_L1,
            CASE 
                WHEN DocNo = 1 THEN N'سند افتتاحیه سال مالی' 
                WHEN DocNo = 14 THEN N'سند بستن حسابهای موقت'
                WHEN DocNo = 15 THEN N'سند اختتامیه سال مالی'
                ELSE N'تجمیع رویدادهای ماه ' + RIGHT('0' + CAST(DocNo - 1 AS VARCHAR(2)), 2) + 
                     N' ختم به تاریخ ' + 
                     (CASE 
                        WHEN DocNo BETWEEN 2 AND 7 THEN LEFT(BaseDocDate,7) + '/31'
                        WHEN DocNo BETWEEN 8 AND 12 THEN LEFT(BaseDocDate,7) + '/30'
                        ELSE LEFT(BaseDocDate,7) + '/29' 
                      END)
            END AS Comment_L1,
            -- تغییر اصلی: نمایش جداگانه بدهکار و بستانکار بدون کسر از هم
            SumDebt AS Debt,
            SumCredit AS Credit
        FROM BaseData
    )
    SELECT * FROM FormattedData
    WHERE Debt > 0 OR Credit > 0
)

GO


CREATE FUNCTION Acc.CheckAllDocumentsAre( 
							@CompanyCodeFrom integer= 0 , 
							@CompanyCodeTo integer= 2147483647  ,
							@DocDateFrom Varchar(10)='0001/01/01', 
							@DocDateTo  Varchar(10)='9999/99/99' ,
							@YearIDFrom Integer = 1403 ,
							@YearIDTo integer= 1404  
						)
RETURNS BIT
AS
BEGIN
    DECLARE @Result BIT = 1; -- true = همه اسناد دائم هستند

    IF EXISTS (
        SELECT 1
        FROM Acc.DocGroups DG
        WHERE DG.YearID BETWEEN @YearIDFrom AND @YearIDTo
          AND DG.CompanyCode BETWEEN @CompanyCodeFrom AND @CompanyCodeTo
          AND DG.DocDate BETWEEN @DocDateFrom AND @DocDateTo
          AND ISNULL(DG.Status, 0) <> 3
    )
    BEGIN
        SET @Result = 0; -- false = وجود دارد سند غیر دائم
    END

    RETURN @Result;
END
GO

---------------------------------------End Of Create Function -------------------------------------------
CREATE PROCEDURE Acc.SpFinalizeDocs
(
    @MaxPrimary   INT,
    @YearID       INT,
    @CompanyCode  INT
)
AS
BEGIN
SET NOCOUNT ON;
SET XACT_ABORT ON;
SET ANSI_WARNINGS OFF;



    DECLARE @MinSelectedDate CHAR(10);

    BEGIN TRY

        BEGIN TRAN;

        ------------------------------------------------
        -- کمترین تاریخ انتخاب شده
        ------------------------------------------------
        SELECT
            @MinSelectedDate = MIN(dg.DocDate)
        FROM Acc.DocGroups dg
        INNER JOIN #SelectedDocs sd
            ON sd.Serial = dg.Serial
        WHERE dg.YearID = @YearID
          AND dg.DocDate IS NOT NULL
          AND (@CompanyCode = 0 OR dg.CompanyCode = @CompanyCode);

        ------------------------------------------------
        -- بررسی اسناد دائمی نشده قبل از این محدوده
        ------------------------------------------------
        IF EXISTS
        (
            SELECT 1
            FROM Acc.DocGroups dg
            WHERE dg.YearID = @YearID
              AND (@CompanyCode = 0 OR dg.CompanyCode = @CompanyCode)
              AND ISNULL(dg.PrimaryDocNo,0) = 0
              AND dg.DocDate < @MinSelectedDate
        )
        BEGIN
            RAISERROR(N'اسنادي قبل از اين محدوده وجود دارند كه دائمي نشده اند.',16,1);
            ROLLBACK TRAN;
            RETURN;
        END;

        ------------------------------------------------
        -- بررسی سند خالی
        ------------------------------------------------
DECLARE @EmptyDocNo INT;

SELECT TOP 1
    @EmptyDocNo = dg.SecondaryDocNo
FROM #SelectedDocs sd
INNER JOIN Acc.DocGroups dg
       ON dg.Serial = sd.Serial
      AND dg.YearID = @YearID
      AND (@CompanyCode = 0 OR dg.CompanyCode = @CompanyCode)
WHERE NOT EXISTS
(
    SELECT 1
    FROM Acc.Documents d
    WHERE d.Serial = sd.Serial
      AND d.YearID = @YearID
      AND (@CompanyCode = 0 OR d.CompanyCode = @CompanyCode)
)
ORDER BY
    dg.DocDate,
    dg.SecondaryDocNo;


IF @EmptyDocNo IS NOT NULL
BEGIN
    RAISERROR(
        N'سند شماره %d خالي است و قابل دائمي شدن نيست.',
        16,
        1,
        @EmptyDocNo
    );

    ROLLBACK TRAN;
    RETURN;
END;



 

        ------------------------------------------------
        -- بررسی موازنه بودن سند
        ------------------------------------------------
        IF EXISTS
        (
            SELECT 1
            FROM Acc.Documents d
            INNER JOIN #SelectedDocs sd
                ON sd.Serial = d.Serial
            WHERE d.YearID = @YearID
              AND (@CompanyCode = 0 OR d.CompanyCode = @CompanyCode)
            GROUP BY d.Serial
            HAVING SUM(ISNULL(d.Debt,0)) <> SUM(ISNULL(d.Credit,0))
        )
        BEGIN
            RAISERROR(N'سند غيرموازنه يافت شد. عمليات لغو شد.',16,1);
            ROLLBACK TRAN;
            RETURN;
        END;

        ------------------------------------------------
        -- شماره گذاری اسناد
        ------------------------------------------------
        ;WITH Numbered AS
        (
            SELECT
                dg.Serial,
                dg.YearID,
                dg.CompanyCode,
                ROW_NUMBER() OVER
                (
                    ORDER BY
                        dg.DocDate,
                        dt.SortId,
                        dg.SecondaryDocNo
                ) AS RowNo
            FROM Acc.DocGroups dg
            INNER JOIN Acc.DocTypes dt
                ON dg.DocTypeCode = dt.DocTypeCode
            INNER JOIN #SelectedDocs sd
                ON sd.Serial = dg.Serial
            WHERE dg.YearID = @YearID
              AND (@CompanyCode = 0 OR dg.CompanyCode = @CompanyCode)
              AND ISNULL(dg.PrimaryDocNo,0) = 0
              AND dg.Status <= 1
        )

        UPDATE dg
           SET dg.PrimaryDocNo = @MaxPrimary + (n.RowNo - 1),
               dg.Status       = 3
        FROM Acc.DocGroups dg
        INNER JOIN Numbered n
            ON n.Serial = dg.Serial
           AND n.YearID = dg.YearID
           AND n.CompanyCode = dg.CompanyCode;

        COMMIT TRAN;

    END TRY
    BEGIN CATCH

        IF @@TRANCOUNT > 0
            ROLLBACK TRAN;

        DECLARE @ErrMsg NVARCHAR(4000);
        DECLARE @ErrSeverity INT;

        SELECT
            @ErrMsg = ERROR_MESSAGE(),
            @ErrSeverity = ERROR_SEVERITY();

        RAISERROR(@ErrMsg, @ErrSeverity, 1);

    END CATCH

END
GO

---------------------------------------Create Trigger ---------------------------------------------------
CREATE TRIGGER [Acc].[TR_CleanDocument]
ON [Acc].[DocGroups]
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	IF((SELECT COUNT(*) FROM DELETED WHERE SourceDataBase IS NOT NULL)>0)
	BEGIN
	    DECLARE @CurrentDataBaseName VARCHAR(300)   	    
	    DECLARE @SQL VARCHAR(1000)
		DECLARE @SecondaryDocNo INT
		DECLARE @YearID INT
		DECLARE @SourceDataBase VARCHAR(100)
		DECLARE @DBName VARCHAR(100)
			      
        SET @CurrentDataBaseName = (SELECT DB_NAME())
		SET @SQL = ''
		
		DECLARE Del_cursor cursor
		FOR SELECT SecondaryDocNo, YearID, SourceDataBase  FROM deleted
		OPEN Del_cursor    
		FETCH NEXT FROM Del_cursor INTO @SecondaryDocNo, @YearID, @SourceDataBase
		WHILE @@FETCH_STATUS = 0
		BEGIN
			IF(@SourceDataBase IS NOT NULL)
			BEGIN

				--SET @DBName = (SUBSTRING( @SourceDataBase, 0,CHARINDEX('.', @SourceDataBase)))
				SET @DBName = @CurrentDataBaseName

				SET @SQL = ' IF  ( (SELECT top 1 AccountDBName FROM '+@DBName 
				IF (@SourceDataBase LIKE '%Assets.DocExports') SET @SQL = @SQL + '.Assets.Config '
				ELSE SET @SQL = @SQL + '.dbo.Config '
				SET @SQL =replace(@SQL,'dbo.dbo.','dbo.')
				SET @SQL = @SQL +') = '''+ @CurrentDataBaseName  + '''  ) '
				SET @SQL = @SQL + 'UPDATE '+@SourceDataBase+' SET DocNo=0, DocDate='''' WHERE DocNo = ' + STR(@SecondaryDocNo)

				IF (@SourceDataBase LIKE '%dbo.Recipts')  -- ReciptsRegulates
				begin
   				  SET @SQL = @SQL + ' AND YearID = '+ STR(@YearID)
				  SET @SQL = @SQL + 'UPDATE ReciptsRegulates SET RegDocNo=0, RegDocDate='''' WHERE RegDocNo = ' + STR(@SecondaryDocNo)
                end 

				IF (@SourceDataBase LIKE '%PersonelDecExt.DocNoBonus')  -- PersonelDecExt.DocNoBonus
				begin   				  
				  SET @SQL =  'UPDATE Pay.PersonelDecExt SET DocNoBonus=0, DocDateBonus='''' WHERE DocNoBonus = ' + STR(@SecondaryDocNo)
                end 

				IF (@SourceDataBase LIKE '%PersonelDecExt.DocNoAnnuity')  -- PersonelDecExt.DocNoAnnuity
				begin   				  
				  SET @SQL =  'UPDATE Pay.PersonelDecExt SET DocNoAnnuity=0, DocDateAnnuity='''' WHERE DocNoAnnuity = ' + STR(@SecondaryDocNo)
                end 

				IF NOT(@SourceDataBase LIKE '%Assets.DocExports')
   				  SET @SQL = @SQL + ' AND YearID = '+ STR(@YearID)
				EXEC (@SQL)
			END	
			FETCH NEXT FROM Del_cursor INTO @SecondaryDocNo, @YearID, @SourceDataBase
		END
     	CLOSE Del_cursor
	    DEALLOCATE Del_cursor
	END 
  if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (SELECT     Serial, CompanyCode, SecondaryDocNo, PrimaryDocNo, DocDate, DocTypeCode, Status, DocTopic_L1, DocTopic_L2, UserID, MakeDate, AttachFolderName, FirstUser, 
                      SecondUser, DocDateMiladi, YearID, ExternalId From deleted FOR XML AUTO)

		--Get the current value
		SET @currentRowXmlValues = (SELECT     Serial, CompanyCode, SecondaryDocNo, PrimaryDocNo, DocDate, DocTypeCode, Status, DocTopic_L1, DocTopic_L2, UserID, MakeDate, AttachFolderName, FirstUser, 
                      SecondUser, DocDateMiladi, YearID, ExternalId From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
END

GO

CREATE TRIGGER [Acc].[TR_UpdateDocNo]
ON [Acc].[DocGroups]
AFTER UPDATE
AS
BEGIN
SET NOCOUNT ON
IF UPDATE(SecondaryDocNo)
IF ((SELECT COUNT(*) FROM deleted WHERE LEN(SourceDataBase)>0) > 0)
BEGIN
    DECLARE @Sql VARCHAR(1000)
	DECLARE @NewSecondaryDocNo INT
	DECLARE @YearID INT
	DECLARE @SourceDataBase VARCHAR(100)	      
	DECLARE @TabelName VARCHAR(100)
    DECLARE @OldSecondaryDocNo INT
	DECLARE Del_cursor cursor
	FOR SELECT I.SecondaryDocNo, D.YearID, D.SourceDataBase, D.SecondaryDocNo FROM deleted D INNER JOIN inserted I ON D.Serial=I.Serial
	     WHERE ( LEN(D.SourceDataBase)>0 )
	OPEN Del_cursor    
	FETCH NEXT FROM Del_cursor INTO @NewSecondaryDocNo, @YearID, @SourceDataBase, @OldSecondaryDocNo
	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF(LEN(@SourceDataBase)>0)
		BEGIN
		    SET @Sql ='UPDATE '+@SourceDataBase+' SET DocNo='+RTRIM(LTRIM(@NewSecondaryDocNo))+' WHERE DocNo = '+RTRIM(LTRIM(@OldSecondaryDocNo))
				if not  @SourceDataBase like '%DocExports%' 
				  SET @Sql =   @Sql +' AND YearID = '+RTRIM(LTRIM(@YearID))

				IF (@SourceDataBase LIKE '%dbo.Recipts')  -- ReciptsRegulates
        		  SET @Sql = @SQL +'UPDATE ReciptsRegulates SET RegDocNo='+RTRIM(LTRIM(@NewSecondaryDocNo))+' WHERE RegDocNo = '+RTRIM(LTRIM(@OldSecondaryDocNo))+' AND YearID = '+RTRIM(LTRIM(@YearID))

				IF (@SourceDataBase LIKE '%PersonelDecExt.DocNoBonus')  -- PersonelDecExt.DocNoBonus
				begin  
				SET @TabelName = REPLACE(@SourceDataBase,'.DocNoBonus','')
				  SET @SQL =  'UPDATE '+@TabelName+' SET DocNoBonus='+RTRIM(LTRIM(@NewSecondaryDocNo))+' WHERE DocNoBonus = ' + STR(@OldSecondaryDocNo)+' AND YearID = '+RTRIM(LTRIM(@YearID))
                end 

				IF (@SourceDataBase LIKE '%PersonelDecExt.DocNoAnnuity')  -- PersonelDecExt.DocNoAnnuity
				begin   				  
				  SET @TabelName = REPLACE(@SourceDataBase,'.DocNoAnnuity','')
				  SET @SQL =  'UPDATE '+@TabelName+' SET DocNoAnnuity='+RTRIM(LTRIM(@NewSecondaryDocNo))+' WHERE DocNoAnnuity = ' + STR(@OldSecondaryDocNo)+' AND YearID = '+RTRIM(LTRIM(@YearID))
                end 

		    EXEC (@Sql)
		END	
		FETCH NEXT FROM Del_cursor INTO @NewSecondaryDocNo, @YearID, @SourceDataBase, @OldSecondaryDocNo
	END
 	CLOSE Del_cursor
    DEALLOCATE Del_cursor
END
  if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (SELECT     Serial, CompanyCode, SecondaryDocNo, PrimaryDocNo, DocDate, DocTypeCode, Status, DocTopic_L1, DocTopic_L2, UserID, MakeDate, AttachFolderName, FirstUser, 
                      SecondUser, DocDateMiladi, YearID, ExternalId From deleted FOR XML AUTO)

		--Get the current value
		SET @currentRowXmlValues = (SELECT     Serial, CompanyCode, SecondaryDocNo, PrimaryDocNo, DocDate, DocTypeCode, Status, DocTopic_L1, DocTopic_L2, UserID, MakeDate, AttachFolderName, FirstUser, 
                      SecondUser, DocDateMiladi, YearID, ExternalId From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
END
GO

CREATE TRIGGER [Acc].[TR_ConfigChangeLog_Documents]
	   ON   [Acc].[Documents]
	   AFTER INSERT,UPDATE,DELETE
	AS
BEGIN
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
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
END
GO

CREATE TRIGGER [Acc].[TR_ConfigChangeLog_DocGroups_AfterInsert]
	   ON   [Acc].[DocGroups]
	   AFTER INSERT
	AS
BEGIN
SET NOCOUNT ON
  if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
     begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		DECLARE @TableName varchar(150)
		SET @TableName = (SELECT top 1 OBJECT_NAME(parent_object_id) FROM sys.objects WHERE name = OBJECT_NAME(@@PROCID))

		--Get the previous value
		SET @previousRowXmlValues = (SELECT     Serial, CompanyCode, SecondaryDocNo, PrimaryDocNo, DocDate, DocTypeCode, Status, DocTopic_L1, DocTopic_L2, UserID, MakeDate, AttachFolderName, FirstUser, 
                      SecondUser, DocDateMiladi, YearID, ExternalId From deleted FOR XML AUTO)

		--Get the current value
		SET @currentRowXmlValues = (SELECT     Serial, CompanyCode, SecondaryDocNo, PrimaryDocNo, DocDate, DocTypeCode, Status, DocTopic_L1, DocTopic_L2, UserID, MakeDate, AttachFolderName, FirstUser, 
                      SecondUser, DocDateMiladi, YearID, ExternalId From inserted FOR XML AUTO)
		
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,@TableName		
     end
END	
GO
--================================================================================
CREATE TRIGGER [TR_ConfigChangeLog_AccBudgetItems]
	   ON  [Acc].[BudgetItems]  AFTER INSERT,UPDATE,DELETE
AS
BEGIN
SET NOCOUNT ON;
 if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		
		--Get the previous value
		SET @previousRowXmlValues = (SELECT * FROM deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (SELECT * FROM inserted FOR XML AUTO)
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,'BudgetItems'
		
end
END
--================================================================================
GO

--================================================================================
CREATE TRIGGER [TR_ConfigChangeLog_AccBudgetRang]
	   ON  [Acc].[BudgetRang]  AFTER INSERT,UPDATE,DELETE
AS
BEGIN
SET NOCOUNT ON;
 if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		
		--Get the previous value
		SET @previousRowXmlValues = (SELECT * FROM deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (SELECT * FROM inserted FOR XML AUTO)
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,'BudgetRang'
		
end
END
--================================================================================
GO

--================================================================================
CREATE TRIGGER [TR_ConfigChangeLog_AccBudgets]
	   ON  [Acc].[Budgets]  AFTER INSERT,UPDATE,DELETE
AS
BEGIN
SET NOCOUNT ON;
 if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		
		--Get the previous value
		SET @previousRowXmlValues = (SELECT * FROM deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (SELECT * FROM inserted FOR XML AUTO)
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,'Budgets'
		
end
END
--================================================================================
GO

--================================================================================
CREATE TRIGGER [TR_ConfigChangeLog_AccBudgetsInfo]
	   ON  [Acc].[BudgetsInfo]  AFTER INSERT,UPDATE,DELETE
AS
BEGIN
SET NOCOUNT ON;
 if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		
		--Get the previous value
		SET @previousRowXmlValues = (SELECT * FROM deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (SELECT * FROM inserted FOR XML AUTO)
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,'BudgetsInfo'
		
end
END
--================================================================================
GO

--================================================================================
CREATE TRIGGER [TR_ConfigChangeLog_AccBudgetTopicLevels]
	   ON  [Acc].[BudgetTopicLevels]  AFTER INSERT,UPDATE,DELETE
AS
BEGIN
SET NOCOUNT ON;
 if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		
		--Get the previous value
		SET @previousRowXmlValues = (SELECT * FROM deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (SELECT * FROM inserted FOR XML AUTO)
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,'BudgetTopicLevels'
		
end
END
--================================================================================
GO

--================================================================================
CREATE TRIGGER [TR_ConfigChangeLog_AccBudgetTopicRange]
	   ON  [Acc].[BudgetTopicRange]  AFTER INSERT,UPDATE,DELETE
AS
BEGIN
SET NOCOUNT ON;
 if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		
		--Get the previous value
		SET @previousRowXmlValues = (SELECT * FROM deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (SELECT * FROM inserted FOR XML AUTO)
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,'BudgetTopicRange'
		
end
END
--================================================================================
GO

--================================================================================
CREATE TRIGGER [TR_ConfigChangeLog_AccBudgetTopics]
	   ON  [Acc].[BudgetTopics]  AFTER INSERT,UPDATE,DELETE
AS
BEGIN
SET NOCOUNT ON;
 if exists (select * from sysobjects where id = object_id(N'[dbo].[INsertTOLogFile]') AND OBJECTPROPERTY(id, N'IsProcedure') = 1)
begin
		DECLARE @previousRowXmlValues XML
		DECLARE	@currentRowXmlValues XML
		
		--Get the previous value
		SET @previousRowXmlValues = (SELECT * FROM deleted FOR XML AUTO)
		--Get the current value
		SET @currentRowXmlValues = (SELECT * FROM inserted FOR XML AUTO)
		exec INsertTOLogFile @previousRowXmlValues,@currentRowXmlValues,'BudgetTopics'
		
end
END
--================================================================================
GO


--CREATE TRIGGER [Acc].[TR_UpdateCurrencies]
--ON [Acc].[Config]
--AFTER UPDATE
--AS
--SET NOCOUNT ON
--IF UPDATE(BsellBankNames) 
--	IF EXISTS (SELECT id FROM sysobjects WHERE id = object_id('[Acc].[PROC_Currencies]'))
--		EXEC Acc.PROC_Currencies

---------------------------------------End Create Trigger --------------------------------------------
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS OFF 
GO
IF not exists (SELECT * FROM sysindexes WHERE (name = N'IX_Documents_DetailCode'))
create NONCLUSTERED INDEX IX_Documents_DetailCode ON Acc.Documents (DetailCode)
GO
begin -- Insert into table 
	if (Select Count(*) From util.ScanType  WHERE ScanType = 1   ) = 0
	INSERT INTO util.ScanType(ScanType, ScanTypeName)VALUES (1, N'سند حسابداري')
	if (Select Count(*) From util.ScanInfo  WHERE ScanType = 1   ) = 0
	INSERT INTO util.ScanInfo(ScanType, ScanInfoID, ScanInfoName) VALUES (1, 1, 'سند حسابداري')

	if (Select Count(*) From [Acc].[Analyze]  ) = 0
	begin
		--DELETE FROM [Acc].[Analyze]
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		Select 1,N'گروه','Left(Acc.Documents.TopicCode,'+(SELECT top 1 cast(CodeLength as varchar(5)) FROM Acc.AccTopicLevels where LevelID = 1)+')','Acc.Categories','MoeenName_L1','C1','TopicCode'
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		Select 2,N'كل','Left(Acc.Documents.TopicCode,'+(SELECT top 1 cast(CodeLength as varchar(5)) FROM Acc.AccTopicLevels where LevelID = 2)+')','Acc.Categories','MoeenName_L1','C2','TopicCode'
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		select 3,N'حساب','Left(Acc.Documents.TopicCode,'+(SELECT top 1 cast(CodeLength as varchar(5))FROM Acc.AccTopicLevels where LevelID = 3)+')','Acc.Categories','MoeenName_L1','C3','TopicCode'

		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(4,N'تفصيلي یک','Acc.Documents.DetailCode','acc.Details','DetailName_L1','D','DetailCode')
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(5,N'تفصيلي دو','Acc.Documents.CTopicCode','Acc.CenterTopics','CTopicName_l1','CT1','CTopicCode')						
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(6,N'تفصيلي سه','Acc.Documents.CTopicCode2','Acc.CenterTopics2','CTopicName2_L1','CT2','CTopicCode2')							
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(7,N'تفصيلي چهار','Acc.Documents.CTopicCode3','Acc.CTopicCode3','CTopicName3_L1','CT3','CTopicCode3')						
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(8,N'سال‏مالي','Acc.DocGroups.YearID','Util.MaliYear',NULL,'Y','YearID')	
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(9,N'ماه','SUBSTRING(Acc.DocGroups.DocDate,6,2)','Acc.Months','MonthName','Months','MonthID')	
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(10,N'شماره سند','LTRIM(Acc.DocGroups.Serial) + ''_'' + LTRIM(Acc.DocGroups.YearID) + ''_'' + LTRIM(Acc.DocGroups.CompanyCode)','Acc.DocList','DocDate','C5','Serial')	

		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(11,N'تاریخ کمکی','Acc.Documents.AidDocdate','Tsh.Calendar','WeekDayName','Ca','CalendarDate')		
	end 
	-- add by rezaei 
	--Select * From [Acc].[Analyze]
	declare @ID int
	Select @ID =max(ID) From [Acc].[Analyze]
	if (Select Count(*) From [Acc].[Analyze] where JoinFieldName ='BudgetTopicID') = 0
	begin

		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(@ID+1,N'بودجه','Acc.Documents.BudgetTopicID','Acc.BudgetTopics','BudgetCaption_L1','Nu','BudgetTopicID')		
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(@ID+2,N'طرح بودجه ای','Acc.Documents.ProjectID','Acc.Projects','ProjectCaption_L1','Pr','ProjectID')		
		INSERT INTO [Acc].[Analyze]([ID],[CaptionName],[FieldName],[TableName],[TopicName],[AliasName],[JoinFieldName])
		VALUES(@ID+3,N'نوع ارز','Acc.Documents.CurrencyType','dbo.Currencies ','CurrenciesName','cu','CurrenciesID')		
	end;
	begin  -- بروز رسانی ارتباطات کدینگ حسابهای حساب با سایر سرفصلها --
    -- بروز رسانی ارتباطات کدینگ حسابهای حساب با سایر سرفصلها --
	-- تفضیلی سطح یک
	INSERT INTO Acc.TopicRange
							(TopicCode,DGID)
	SELECT DISTINCT D.TopicCode, Acc.DetailGroups.DGID
	FROM         Acc.Documents D Left OUTER JOIN
							Acc.DetailRange ON D.TopicCode = Acc.DetailRange.TopicCode AND
							D.DetailCode = Acc.DetailRange.DetailCode
							INNER JOIN
							Acc.MainDetails ON Acc.MainDetails.DetailCode=Acc.DetailRange.DetailCode
							INNER JOIN
							Acc.DetailGroups ON Acc.MainDetails.DetailGroup=Acc.DetailGroups.DGID
	WHERE     (D.DetailCode <> 0) AND (Acc.DetailRange.TopicCode IS NULL)

	-- تفضیلی سطح دو
	INSERT INTO Acc.TopicRange
							(TopicCode,DGID)
	SELECT DISTINCT D.TopicCode, Acc.DetailGroups.DGID
	FROM         Acc.Documents D Left OUTER JOIN
							Acc.CenterTopicRange ON D.TopicCode = Acc.CenterTopicRange.TopicCode AND
							D.CTopicCode = Acc.CenterTopicRange.CTopicCode
							INNER JOIN
							Acc.MainDetails ON Acc.MainDetails.DetailCode=Acc.CenterTopicRange.CTopicCode
							INNER JOIN
							Acc.DetailGroups ON Acc.MainDetails.DetailGroup=Acc.DetailGroups.DGID
	WHERE     (D.CTopicCode <> 0) AND (Acc.CenterTopicRange.TopicCode IS NULL)

	-- تفضیلی سطح سه
	INSERT INTO Acc.TopicRange
							(TopicCode,DGID)
	SELECT DISTINCT D.TopicCode, Acc.DetailGroups.DGID
	FROM         Acc.Documents D Left OUTER JOIN
							Acc.CenterTopicAllRange ON D.TopicCode = Acc.CenterTopicAllRange.TopicCode AND
							D.CTopicCode2 = Acc.CenterTopicAllRange.CTopicCode2
							INNER JOIN
							Acc.MainDetails ON Acc.MainDetails.DetailCode=Acc.CenterTopicAllRange.CTopicCode2
							INNER JOIN
							Acc.DetailGroups ON Acc.MainDetails.DetailGroup=Acc.DetailGroups.DGID
	WHERE     (D.CTopicCode2 <> 0) AND (Acc.CenterTopicAllRange.TopicCode IS NULL)

	-- تفضیلی سطح چهار
	INSERT INTO Acc.TopicRange
							(TopicCode,DGID)
	SELECT DISTINCT D.TopicCode, Acc.DetailGroups.DGID
	FROM         Acc.Documents D Left OUTER JOIN
							Acc.CenterTopicAllRange ON D.TopicCode = Acc.CenterTopicAllRange.TopicCode AND
							D.ctopiccode3 = Acc.CenterTopicAllRange.CTopicCode3
							INNER JOIN
							Acc.MainDetails ON Acc.MainDetails.DetailCode=Acc.CenterTopicAllRange.CTopicCode3
							INNER JOIN
							Acc.DetailGroups ON Acc.MainDetails.DetailGroup=Acc.DetailGroups.DGID
	WHERE     (D.ctopiccode3 <> 0) AND (Acc.CenterTopicAllRange.TopicCode IS NULL)
	end ;

End ;
---000---
