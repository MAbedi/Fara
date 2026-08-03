-- CnvAccToFara_Data1    1404/08/19
Use Fara_DataBase 
--
INSERT INTO Acc.Config
                         (StartDate, EndDate, AssignedDocForm, Report1OnDocName, Report2OnDocName, Report3OnDocName, CTopicCode2Active, CTopicCode1Active, DetailCodeActive, AuditCodeActive, FinancialCodeActive, AttachFileToDocActive, 
                         LastYearActive, AccBankNameOnLastYear, DocumentsFooter, DocumentsFooter_L2, DocumentsSignature, DocumentsSignature_L2, ReportKind, SecondaryDocNoActiveOnPrint, DocDateActiveOnPrint, CountAccLevel, 
                         CuontCTopicLevel, CuontCTopic2Level, CuontAuditLevel, CountFinancialLevel, LevelIDOnKol, Language1, Language2, Organization, Chief, Accountant, DateRangeFrom, DateRangeTo, BudgetReportFooter, UseKindInCoActive, 
                         AccActive, BudgetActive, AuditActive, FinancialActive, PortainActive, SpecialActive, ManegeActive, CTopicCode3Active, DocKind, DocEmpty, DefaultCompany, ActiveMultiCompany, MiladiDateActive, KindSearchDoc, 
                         AccLevel4RelatedTobudget, AccCodeInBudgetActive, PrintSelected, BsellBankNames, DoInsertCust, AccBankNames, LastVersion, IsCheckDetail, StartTopicCode, EndTopicCode, RestDocCode, ActivePartCompany, 
                         RatesCalculation, DecimalACtive, TopicCodeFrom, TopicCodeTo, CtoipcRelatedKind, CheckAccCodeInInsert, CheckRelation, Checkprint, Options, AllowDelDocSubSystem,   
                        
                          StartLimitID, EndLimitID, ActiveCurrencyInTrialBalance, ActiveExpense, EditableDetailRange, ID,AddStuffcoding,POActive)
SELECT        StartDate, EndDate, AssignedDocForm, Report1OnDocName, Report2OnDocName, Report3OnDocName, CTopicCode2Active, CTopicCode1Active, DetailCodeActive, AuditCodeActive, FinancialCodeActive, AttachFileToDocActive, 
                         LastYearActive, AccBankNameOnLastYear, DocumentsFooter, DocumentsFooter_L2, DocumentsSignature, DocumentsSignature_L2, ReportKind, SecondaryDocNoActiveOnPrint, DocDateActiveOnPrint, CountAccLevel, 
                         CuontCTopicLevel, CuontCTopic2Level, CuontAuditLevel, CountFinancialLevel, LevelIDOnKol, Language1, Language2, Organization, Chief, Accountant, DateRangeFrom, DateRangeTo, BudgetReportFooter, UseKindInCoActive, 
                         AccActive, BudgetActive, AuditActive, FinancialActive, PortainActive, SpecialActive, ManegeActive, CTopicCode3Active, DocKind, DocEmpty, DefaultCompany, ActiveMultiCompany, MiladiDateActive, KindSearchDoc, 
                         AccLevel4RelatedTobudget, AccCodeInBudgetActive, PrintSelected, BsellBankNames, DoInsertCust, AccBankNames, LastVersion, IsCheckDetail, StartTopicCode, EndTopicCode, RestDocCode, ActivePartCompany, 
                         RatesCalculation, DecimalACtive, TopicCodeFrom, TopicCodeTo, CtoipcRelatedKind, CheckAccCodeInInsert, CheckRelation, Checkprint, Options, AllowDelDocSubSystem,   
                       
                          StartLimitID, EndLimitID, ActiveCurrencyInTrialBalance, ActiveExpense, EditableDetailRange,ID,0 AddStuffcoding,0 POActive
FROM            ACC_DataBase.Acc.Config
--
INSERT INTO Acc.Companies
                         (CompanyCode, CompanyName_L1, CompanyName_L2, LevelID, Comment_L1, Comment_L2, MakeDate)
SELECT        CompanyCode, CompanyName_L1, CompanyName_L2, LevelID, Comment_L1, Comment_L2, MakeDate
FROM            ACC_DataBase.Acc.Companies
--
INSERT INTO Util.MaliYear
                         (YearID, StartYear, EndYear, Status)
SELECT        YearID, StartYear, EndYear, Status
FROM            ACC_DataBase.Util.MaliYear
where YearID not in (select YearID from Util.MaliYear )
--
INSERT INTO Util.MaliYearUsers
                         (UserID, YearID)
SELECT        d.UserID, d.YearID
FROM            ACC_DataBase.Util.MaliYearUsers d
			left join Util.MaliYearUsers s on d.UserID = s.userid And  d.YearID = s.YearID
where s.userid is null 
--
INSERT INTO Util.ScanType
                         (ScanType, ScanTypeName)
SELECT        ScanType, ScanTypeName
FROM            ACC_DataBase.Util.ScanType
where ScanType not in (select ScanType from Util.ScanType )
--
INSERT INTO Util.ScanInfo
                         (ScanType, ScanInfoID, ScanInfoName)
SELECT        ScanType, ScanInfoID, ScanInfoName
FROM            ACC_DataBase.Util.ScanInfo
where ScanInfoID not in (select ScanInfoID from Util.ScanInfo )
---
INSERT INTO Acc._FinanceReports
                         (repCode, repName, ReportType, ColNumShow, _QryType)
SELECT        repCode, repName, ReportType, ColNumShow, _QryType
FROM            ACC_DataBase.Acc._FinanceReports
--
INSERT INTO Acc._ReportRows
                         (repCode, rowID, rowTopic1, Calbase1, link1, cType1, ColNum1, rowTopic2, Calbase2, link2, cType2, ColNum2, YearID)
SELECT        repCode, rowID, rowTopic1, Calbase1, link1, cType1, ColNum1, rowTopic2, Calbase2, link2, cType2, ColNum2, YearID
FROM            ACC_DataBase.Acc._ReportRows
--
INSERT INTO Acc.AccTopicLevels
                         (LevelID, LevelCaption_L1, LevelCaption_L2, PrvLevelID, CodeLength, FinancialRelationType, AuditRelationType, EssenceSelectable, AccRelationType, CenterTopicsRelationType, DetailsRelationType, AccLastYearActive, 
                         AssignedForm, ReportFileName1, ReportFileName2, ReportFileName3, TopicType, BudgetRelationType, TaxonomyActive, ProjectsRelationType, UseInDocumentsActive, ReactionEssenceType, NoteActive, RecalInterfaceID, 
                         AidInfoTypeActive, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID, AccRelatedID, OtherContorolLevleId, EditState2, EditState3, AccessPermanent, AccessCertain, DeleteRowLevelID, EditNoteLevelID, ShowNoteLevelID)
SELECT        LevelID, LevelCaption_L1, LevelCaption_L2, PrvLevelID, CodeLength, FinancialRelationType, AuditRelationType, EssenceSelectable, AccRelationType, CenterTopicsRelationType, DetailsRelationType, AccLastYearActive, 
                         AssignedForm, ReportFileName1, ReportFileName2, ReportFileName3, TopicType, BudgetRelationType, TaxonomyActive, ProjectsRelationType, UseInDocumentsActive, ReactionEssenceType, NoteActive, RecalInterfaceID, 
                         AidInfoTypeActive, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID, AccRelatedID, OtherContorolLevleId, EditState2, EditState3, AccessPermanent, AccessCertain, DeleteRowLevelID, EditNoteLevelID,  ShowNoteLevelID
FROM            ACC_DataBase.Acc.AccTopicLevels
--
INSERT INTO Acc.FormTypes
                         (FormType, FormCaption)
SELECT        FormType, FormCaption
FROM            ACC_DataBase.Acc.FormTypes
--
INSERT INTO Acc.FormsInfo
                         (FormInfoID, InfoID, FormType, InfoName_L1, InfoName_L2, Comment, SortID)
SELECT        FormInfoID, case when FormType + InfoID =0 and FormInfoID <>0 then 1 else InfoID end , FormType, InfoName_L1, InfoName_L2, Comment, SortID
FROM            ACC_DataBase.Acc.FormsInfo --where (FormInfoID<>0 and InfoID<>0)
--
INSERT INTO Acc.BudgetTopicLevels
                         (LevelID, LevelCaption_L1, LevelCaption_L2, prvLevelID, CodeLength, EssenseSelectable, AccRelationType, TopicType, AssignedForm, ReportFileName, NextYearSelectType, GroupOnTopicsVisible, SelectPercentType, 
                         HasRelateOnProjects)
SELECT        LevelID, LevelCaption_L1, LevelCaption_L2, prvLevelID, CodeLength, EssenseSelectable, AccRelationType, TopicType, AssignedForm, ReportFileName, NextYearSelectType, GroupOnTopicsVisible, SelectPercentType, 
                         HasRelateOnProjects
FROM            ACC_DataBase.Acc.BudgetTopicLevels
--
INSERT INTO Acc.AuditTopics
                         (AuditCode, AuditName_L1, AuditName_L2, LevelID, MakeDate)
SELECT        AuditCode, AuditName_L1, AuditName_L2, LevelID, MakeDate
FROM            ACC_DataBase.Acc.AuditTopics
--
INSERT INTO Acc.FinancialTopics  
                         (FinancialCode, FinancialName_L1, FinancialName_L2, LevelID, FinancialType, Essence, MakeDate)
SELECT        FinancialTopics.FinancialCode , FinancialTopics.FinancialName_L1, FinancialTopics.FinancialName_L2, FinancialTopics.LevelID, FinancialTopics.FinancialType, FinancialTopics.Essence, FinancialTopics.MakeDate
 FROM            ACC_DataBase.Acc.FinancialTopics --where FinancialType =0 
--
INSERT INTO Acc.Categories
                         (TopicCode, MoeenName_L1, MoeenName_L2, LevelID, FinancialID, AuditID, Essence, ReactionForRepEssence, TaxonomyType, TaxonomyTopicCode, LastYearTopicCode, LastTopicCode, AidInfoType, AuditReferenceNo, 
                         AuditReferenceTxt, RecalInterfaceID, KindInsertBudgetCode, BudgetTopicID, ProjectID, makeDate, Active, UserRelated)
SELECT        TopicCode, MoeenName_L1, MoeenName_L2, LevelID, FinancialID, AuditID, Essence, ReactionForRepEssence, TaxonomyType, TaxonomyTopicCode, LastYearTopicCode, LastTopicCode, AidInfoType, AuditReferenceNo, 
                         AuditReferenceTxt, RecalInterfaceID, KindInsertBudgetCode, BudgetTopicID, ProjectID, makeDate, Active, UserRelated
FROM            ACC_DataBase.Acc.Categories where TopicCode>0
--
INSERT INTO Acc.CategoriesNote
                         (TopicCode, Note_L1, Note_L2, NoteDate, AttachFileName, MakeDate)
SELECT        TopicCode, Note_L1, Note_L2, NoteDate, AttachFileName, MakeDate
FROM            ACC_DataBase.Acc.CategoriesNote
--
-- end of base data 

