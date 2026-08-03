-- CnvAccToFara_Data2    1404/08/19
Use Fara_DataBase 
--
--if (select count( * ) from dbo.customers ) < 1 begin 
--
INSERT INTO Acc.BudgetTopics
                         (BudgetTopicID,  BudgetCaption_L1, BudgetCaption_L2, AccCode, DetailCode, CTopic1, LevelID, Note_L1, Note_L2, NextYearCalType, Essence, DecExtPerecent, GroupTopic, PortionPerecentReclamation, 
                         PortionPerecentExp)
SELECT        BudgetTopicID,  BudgetCaption_L1, BudgetCaption_L2, AccCode, DetailCode, CTopic1, LevelID, Note_L1, Note_L2, NextYearCalType, Essence, DecExtPerecent, GroupTopic, PortionPerecentReclamation, 
                         PortionPerecentExp
FROM            ACC_DataBase.Acc.BudgetTopics
--
INSERT INTO Acc.Projects
                         (ProjectID, ProjectCaption_L1, ProjectCaption_L2, CTopic1, CTopic2, LevelID, Note_L1, Note_L2)
SELECT        ProjectID, ProjectCaption_L1, ProjectCaption_L2, CTopic1, CTopic2, LevelID, Note_L1, Note_L2
FROM            ACC_DataBase.Acc.Projects
--
INSERT INTO  CustomersGroup(CustomerGrpID,           CustomerGrpName,          CustomerGrpName_L2,             StartCode,           FinishCode,   GroupType,  DetailType )
SELECT                 DGID CustomerGrpID, DGName_L1 CustomerGrpName,DGName_L2 CustomerGrpName_L2 ,  StartRange StartCode , EndRange FinishCode,0 GroupType,1 DetailType
FROM         ACC_DataBase.Acc.DetailGroups CG
where NOT EXISTS (SELECT 1       FROM dbo.CustomersGroup c       WHERE c.CustomerGrpID = CG.DGID  )
--
INSERT INTO dbo.Customers (CustID,CustomerGrpID,CustName,Address,Mobile,ModifyDate,NationalID)
select distinct DetailCode,dg.DGID,d.DetailName_L1,d.addres,d.Mobile,getdate(),d.NationalID 
from ACC_DataBase.Acc.Details as d inner join
	ACC_DataBase.acc.DetailGroups as dg on d.DetailCode between dg.StartRange and dg.EndRange
where ( d.DetailCode <>0  or  (SELECT count( * ) FROM dbo.Customers c  )=0 )
ORDER BY d.DetailCode
--
INSERT INTO dbo.Customers (CustID,CustomerGrpID,CustName,ModifyDate,NationalID)
SELECT       CTopicCode2 +99000, 9,CTopicName2_L1,getdate(), 1 -- to do for calc 99000 
FROM           ACC_DataBase.Acc.CenterTopics2
WHERE        (CTopicCode2 > 1)and LevelID>71
--
INSERT INTO Acc.BudgetRang
                         (TopicCode, DetailCode, BudgetCode, CompanyCode, Coefficient, CTopicCode)
SELECT        TopicCode, DetailCode, BudgetCode, CompanyCode, Coefficient, CTopicCode
FROM            ACC_DataBase.Acc.BudgetRang
--
INSERT INTO Acc.Interfaces
                         (InterfaceID, InterfaceCaption_L1, InterfaceCaption_L2, HasReload, ReloadInterfaceID, HasDoc, AccBedType, AccBesType, Note_L1, Note_L2, ReportFilename, CustomerVisible, CustGroups, ProjectID, FormFooter_L1, 
                         FormFooter_L2, BudgetEffect, BedVisible, BesVisible, WeightActive, amountActive, Acc_RelateShowKind, [BedCaption ], [besCaption ])
SELECT        InterfaceID, InterfaceCaption_L1, InterfaceCaption_L2, HasReload, ReloadInterfaceID, HasDoc, AccBedType, AccBesType, Note_L1, Note_L2, ReportFilename, CustomerVisible, CustGroups, ProjectID, FormFooter_L1, 
                         FormFooter_L2, BudgetEffect, BedVisible, BesVisible, WeightActive, amountActive, Acc_RelateShowKind, [BedCaption ], [besCaption ]
FROM            ACC_DataBase.Acc.Interfaces
--
INSERT INTO Acc.Budgets
                         (BudgetID, InterfaceID, BudgetSerial, BudgetTopicID, BudgetDate, Note_L1, Note_L2, ProjectID, CustomerID, AccCode, DetailCode, CTopic1, CTopic2, CompanyCode)
SELECT        BudgetID, InterfaceID, BudgetSerial, BudgetTopicID, BudgetDate, Note_L1, Note_L2, ProjectID, CustomerID, AccCode, DetailCode, CTopic1, CTopic2, CompanyCode
FROM            ACC_DataBase.Acc.Budgets
--
INSERT INTO Acc.BudgetItems
                         (BudgetItemID, BudgetID, ItemSerial, BudgetTopicID, ProjectID, Bed, Bes, Entity, Weight, ItemNote_L1, ItemNote_L2, CustomerID, AccCode, DetailCode, CTopic1, CTopic2)
SELECT        BudgetItemID, BudgetID, ItemSerial, BudgetTopicID, ProjectID, Bed, Bes, Entity, Weight, ItemNote_L1, ItemNote_L2, CustomerID, AccCode, DetailCode, CTopic1, CTopic2
FROM            ACC_DataBase.Acc.BudgetItems
--
INSERT INTO Acc.DGCompaniesRange
                         (DGIDCompanies, CompanyCode)
SELECT        DGIDCompanies, CompanyCode
FROM            ACC_DataBase.Acc.DGCompaniesRange
--
INSERT INTO Acc.DocGroups
                         (Serial, CompanyCode, SecondaryDocNo, PrimaryDocNo, DocDate, DocTypeCode, Status, DocTopic_L1, DocTopic_L2, UserID, MakeDate, AttachFolderName, DocNote_L1, DocNote_L2, FirstUser, SecondUser, DocDateMiladi, 
                         YearID, SourceDataBase)
SELECT        Serial, CompanyCode, SecondaryDocNo, PrimaryDocNo, DocDate, DocTypeCode, Status, DocTopic_L1, DocTopic_L2, UserID, MakeDate, AttachFolderName, DocNote_L1, DocNote_L2, FirstUser, SecondUser, DocDateMiladi, 
                         YearID, SourceDataBase
FROM            ACC_DataBase.Acc.DocGroups
--
INSERT INTO Acc.Documents
                         (Serial, TopicCode, DetailCode, CTopicCode, CTopicCode2, Comment_L1, Comment_L2, Row, Debt, Credit, AidDocNo, AidDocdate, AidAmount, BudgetTopicID, BudgetID, ReferenceNo, ReferenceTxt, ReferenceDate, ProjectID, 
                         ReferenceCheck, CompanyCode, AuditDoPrint, ctopiccode3,  YearID, RelatedID, DetailCompany, CurrencyType, PO)
SELECT        Serial, TopicCode, DetailCode, CTopicCode, CTopicCode2, Comment_L1, Comment_L2, Row, Debt, Credit, AidDocNo, AidDocdate, AidAmount, BudgetTopicID, BudgetID, ReferenceNo, ReferenceTxt, ReferenceDate, ProjectID, 
                         ReferenceCheck, CompanyCode, AuditDoPrint, ctopiccode3,  YearID, RelatedID, DetailCompany, CurrencyType, PO
FROM            ACC_DataBase.Acc.Documents -- to do for cal CTopicCode
-- 
INSERT INTO Acc.DocRelated
                         (ItemID, ID, Serial, YearID, RelatedID, CompanyCode, Debit, Credit)
SELECT        ItemID, ID, Serial, YearID, RelatedID, CompanyCode, Debit, Credit
FROM            ACC_DataBase.Acc.DocRelated
--
INSERT INTO Acc.Expense
                         (ExpID, YearId, FormNo, FormDate, BudgetYear, TopicCode, DetailCode, CTopicCode, PayerTopicCode, PayerDetailCode, PayerCTopicCode, Cacther, State, Kind, Preference, Comments, CustDetailId, firstUser, lastUser, 
                         StateChangeDate, AidDate, AidNumber)
SELECT        ExpID, YearId, FormNo, FormDate, BudgetYear, TopicCode, DetailCode, CTopicCode, PayerTopicCode, PayerDetailCode, PayerCTopicCode, Cacther, State, Kind, Preference, Comments, CustDetailId, firstUser, lastUser, 
                         StateChangeDate, AidDate, AidNumber
FROM            ACC_DataBase.Acc.Expense
--
INSERT INTO Acc.ExpenseItems
                         (ExpID, CatcherItem, [Desc], Bed, Bes, ItemDetailCode)
SELECT        ExpID, CatcherItem, [Desc], Bed, Bes, ItemDetailCode
FROM            ACC_DataBase.Acc.ExpenseItems
--
INSERT INTO Acc.PortionTable
                         (CofficientID, FormInfoID, CTopicCode, Cofficient, PortionCunt, YearID)
SELECT        CofficientID, FormInfoID, CTopicCode, Cofficient, PortionCunt, YearID
FROM            ACC_DataBase.Acc.PortionTable
--
INSERT INTO Acc.PortionDoc
                         (DetailCode, FormInfoID, CTopicCode, CTopicCode2, CTopicCode3, Comment, Cofficient, PortionCount, YearID)
SELECT        DetailCode, FormInfoID, CTopicCode, CTopicCode2, CTopicCode3, Comment, Cofficient, PortionCount,  YearID
FROM            ACC_DataBase.Acc.PortionDoc
--
INSERT INTO Acc.PortionRange
                         (FormInfoID, CompanyCode, TopicCode, DetailCode, CTopicCode, CTopicCode2, YearID, CTopicCode3)
SELECT        FormInfoID, CompanyCode, TopicCode, DetailCode, CTopicCode, CTopicCode2, YearID, CTopicCode3
FROM           ACC_DataBase.Acc.PortionRange
--
INSERT INTO Acc.PortionTableItems
                         (CofficientID, CTopicCode2, CofficientItem)
SELECT        CofficientID, CTopicCode2, CofficientItem
FROM            ACC_DataBase.Acc.PortionTableItems
--
INSERT INTO Acc.PortionTopicCode
                         (TopicCode, PortionTopicCode)
SELECT        TopicCode, PortionTopicCode
FROM            ACC_DataBase.Acc.PortionTopicCode
--
INSERT INTO Acc.ProjectsRange
                         (ProjectID, BudgetTopicID)
SELECT        ProjectID, BudgetTopicID
FROM            ACC_DataBase.Acc.ProjectsRange
--
INSERT INTO Acc.Variance
                         ( VarianceCode, VarianceNo, VarianceDate, Row, DocumentId, yearID, AccCode1, AccName1, AccCode2, AccName2, AccCode3, AccName3, Debt, Credit, Comment, AidNo, AidDate)
SELECT        VarianceCode, VarianceNo, VarianceDate, Row, DocumentId, yearID, AccCode1, AccName1, AccCode2, AccName2, AccCode3, AccName3, Debt, Credit, Comment, AidNo, AidDate
FROM            ACC_DataBase.Acc.Variance
--
INSERT INTO Acc.VarianceDefines
                         ( VarianceName, VarianceNote)
SELECT         VarianceName, VarianceNote
FROM            ACC_DataBase.Acc.VarianceDefines
--
INSERT INTO Acc.VarianceRelations
                         ( VarianceCode, TopicCode, DetailCode, CTopicCode, CTopicCode2, CTopicCode3)
SELECT        VarianceCode, TopicCode, DetailCode, CTopicCode, CTopicCode2, CTopicCode3
FROM            ACC_DataBase.Acc.VarianceRelations
--
INSERT INTO Acc.Analyze
                         (id,CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName)
SELECT        id,CaptionName, FieldName, TableName, TopicName, AliasName, JoinFieldName
FROM            ACC_DataBase.Acc.Analyze
--
INSERT INTO Acc.Contacts
                         ( ContactNo, ContactDate, State, ContactTopic, StartDate, EndDate, Price, WorkPlace, DetailCode, CTopicCode, CtopicCode2, CtopicCode3, RegistrationNumber, YearID, Address)
SELECT         ContactNo, ContactDate, State, ContactTopic, StartDate, EndDate, Price, WorkPlace, DetailCode, CTopicCode, CtopicCode2, CtopicCode3, RegistrationNumber, YearID, Address
FROM            ACC_DataBase.Acc.Contacts
--
INSERT INTO Acc.DocsTransaction
                         ( Serial, SecondaryDocNo, DocDate, TransDate, UserName, TransType, CompanyCode)
SELECT         Serial, SecondaryDocNo, DocDate, TransDate, UserName, TransType, CompanyCode
FROM            ACC_DataBase.Acc.DocsTransaction
--
INSERT INTO Acc.Expense
                         (ExpID, YearId, FormNo, FormDate, BudgetYear, TopicCode, DetailCode, CTopicCode, PayerTopicCode, PayerDetailCode, PayerCTopicCode, Cacther, State, Kind, Preference, Comments, CustDetailId, firstUser, lastUser, 
                         StateChangeDate, AidDate, AidNumber)
SELECT        ExpID, YearId, FormNo, FormDate, BudgetYear, TopicCode, DetailCode, CTopicCode, PayerTopicCode, PayerDetailCode, PayerCTopicCode, Cacther, State, Kind, Preference, Comments, CustDetailId, firstUser, lastUser, 
                         StateChangeDate, AidDate, AidNumber
FROM            ACC_DataBase.Acc.Expense
--
INSERT INTO Acc.ExpenseItems
                         (ExpID, CatcherItem, [Desc], Bed, Bes, ItemDetailCode)
SELECT        ExpID, CatcherItem, [Desc], Bed, Bes, ItemDetailCode
FROM            ACC_DataBase.Acc.ExpenseItems
--
INSERT INTO Acc._ReportRowsOnDocs
                         (repCode, rowID, ColNum, G_TopicCode, G_DetailCode, G_CTopicCode, YearID)
SELECT        repCode, rowID, ColNum, G_TopicCode, G_DetailCode, G_CTopicCode, YearID
FROM            ACC_DataBase.Acc._ReportRowsOnDocs
--
--
INSERT INTO Acc.DetailNotes  (TopicCode, DetailCode, Note, NoteDate, AttachFileName, MakeDate, CompanyCode, ID)
SELECT        TopicCode, DetailCode, Note, NoteDate, AttachFileName, MakeDate, CompanyCode, ID
FROM            ACC_DataBase.Acc.DetailNotes
--

--
INSERT INTO Acc.CtopicNotes
                         (TopicCode,  Note, NoteDate, AttachFileName, MakeDate, ID)
SELECT        TopicCode,  Note, NoteDate, AttachFileName, MakeDate, ID
FROM            ACC_DataBase.Acc.CtopicNotes
--
