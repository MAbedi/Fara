--CnvSalaryToFara_Data   1404/09/10
/*  
       Salary To Fara   
	1- plz change "Fara_DataBase" to distination DataBase Like Bsell_FaraRayaneh Or Fara_FaraRayaneh .
	2- Plz Change "Salary_DataBase" To Source DataBase Like Salary_FaraRayaneh .
	3- After Insert All Of Data Without any error , choose Beroozresani DataBase From Modirsystem Menu.

*/

use Fara_DataBase 
--
INSERT INTO Pay.Config( CompanyName, CompanyName_L2, CompanyDesc, CompanyDesc_L2, RegisterNumber, Address, Address_L2, Tel1, Tel2, Fax, Email, WebSite, BankState, EconomicNumber, PostalCode, BudgetBankName, Language1, 
                         Language2, BaseSalary, StoreSalaryID, ManagementName_L1, ManagementName_L2, UpperBonus, BonusTaxExemption, TaxBonusCo, RecalSalaryLaw, SpacialWageCode, AccountDBNameOld, TaxKindCalc, ActiveSalary, 
                         ActivePayRoll, ActiveMange, ActiveSchedule, ActiveOrganization, FunctionKind, DecContainTaxunder, DecContainTaxNumerator, TFN, PayMainKind, PayPettyKind, TIN, Signer1NationalID, Signer1Name, Signer1LastName, 
                         Signer1Job, Signer2NationalID, Signer2Name, Signer2LastName, Signer2Job, InterdictItemSumSalary1, InterdictItemSumSalary2, InterdictItem4ListSalary, HideSalaryID4ListSalary, AccountServerName, SubDayOfCurrentMonth, 
                         ChkHideSalaryID4ListSalary, TaxWithExemptionsTimeSheets, SituationTime, OffTimeInFish, ChkGroupInterdicts, ChkStateArchiveEdit, ScanState, ArchiveScan, ActiveRangeProject, FunctionActiveMinutes, 
                         AccDetailCodeEqualPersonelNo, OffTimeControlMessages, SysSmsActive, LastVersion, EidiDisplayedSeparatelyOnTaxList, HasSeprateDetailCompany, DecExtInFishPrint, IntegrateLoanRemain, PrvBankName, 
                         MinBenefitsInsuranceList, VacationMounthFrom, VacationMounthTo, SendDoc2OtherSystems, PonyTaxAble, PersonelNoInInterdictNo, NumberOffDaysInMonth, BenCode, ActAnnuityInlistSalary, SalaryID4PartMakeBankDSK, 
                         FloatToTimeActive, FunctionItemSeparation, UnicNationalID, SalaryID4PartKind, ActRewardInlistSalary, Eid_E_Tax_IncludedInTheTaxList, TaxWithExemptionsFunctionDay, FunctionDayDefault, ClockCard4FieldName, 
                         DocTypeCode, GovConstAmount, GovSpouse, GovChild, InterimInterest, DecimalOrMinute, NoPrintSalaryIDs)
SELECT        CompanyName, CompanyName_L2, CompanyDesc, CompanyDesc_L2, RegisterNumber, Address, Address_L2, Tel1, Tel2, Fax, Email, WebSite, BankState, EconomicNumber, PostalCode, BudgetBankName, Language1, 
                         Language2, BaseSalary, StoreSalaryID, ManagementName_L1, ManagementName_L2, UpperBonus, BonusTaxExemption, TaxBonusCo, RecalSalaryLaw, SpacialWageCode, AccountDBNameOld, TaxKindCalc, ActiveSalary, 
                         ActivePayRoll, ActiveMange, ActiveSchedule, ActiveOrganization, FunctionKind, DecContainTaxunder, DecContainTaxNumerator, TFN, PayMainKind, PayPettyKind, TIN, Signer1NationalID, Signer1Name, Signer1LastName, 
                         Signer1Job, Signer2NationalID, Signer2Name, Signer2LastName, Signer2Job, InterdictItemSumSalary1, InterdictItemSumSalary2, InterdictItem4ListSalary, HideSalaryID4ListSalary, AccountServerName, SubDayOfCurrentMonth, 
                         ChkHideSalaryID4ListSalary, TaxWithExemptionsTimeSheets, SituationTime, OffTimeInFish, ChkGroupInterdicts, ChkStateArchiveEdit, ScanState, ArchiveScan, ActiveRangeProject, FunctionActiveMinutes, 
                         AccDetailCodeEqualPersonelNo, OffTimeControlMessages, SysSmsActive, LastVersion, EidiDisplayedSeparatelyOnTaxList, HasSeprateDetailCompany, DecExtInFishPrint, IntegrateLoanRemain, PrvBankName, 
                         MinBenefitsInsuranceList, VacationMounthFrom, VacationMounthTo, SendDoc2OtherSystems, PonyTaxAble, PersonelNoInInterdictNo, NumberOffDaysInMonth, BenCode, ActAnnuityInlistSalary, SalaryID4PartMakeBankDSK, 
                         FloatToTimeActive, FunctionItemSeparation, UnicNationalID, SalaryID4PartKind, ActRewardInlistSalary, Eid_E_Tax_IncludedInTheTaxList, TaxWithExemptionsFunctionDay, FunctionDayDefault, ClockCard4FieldName, 
                         DocTypeCode, GovConstAmount, GovSpouse, GovChild, InterimInterest, DecimalOrMinute, NoPrintSalaryIDs
FROM            Salary_DataBase.Pay.Config
where Language1  not in (SELECT        Language1 from Pay.Config)
--
INSERT INTO Pay.FormTypes(FormType, FormCaption_L1, FormCaption_L2, DurationDayActive, DurationTimeActive, ExemptPersonActive, SalaryEffectKind, KargozinyEffectKind, RecalSalaryTypes, SalaryKind, CoefficientActive, AmountActive, 
                         Amount2Active, RecallFormTypes, UseEndMounthKind, AidInfoNo1Active, AidInfoDate1Active, AidInfo1Caption, AidInfoNo2Active, AidInfoDate2Active, AidInfo2Caption, TopicCodeKind, DetailCodeKind, CTopicCodeKind, 
                         CTopicCode2Kind, DisplayFormType, ReportFileName1, ReportFileName2, ReportFileName3, ReportFileName4, Note_L1, Note_L2, WordDocumentsActive, FunctionShow, RecalKindClock, CalCulateTypeActive, 
                         FormInfo4Function, ChangeAmountActive, FirstAmountActive, NoteActive, LimitMounthActive, MnuRow, ReportFooter, MaxDayTimeActive, ReportCaption1, ReportCaption2, ReportCaption3, ReportCaption4, ShowMnuId, 
                         ShowOperators, MuliplyInDayActive, CTopicCode3Kind, EarthProceedsActivate, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID, PrintDesignLevelID, FormRelatedLevelID, AccCodeLevelID, 
                         OtherCtrlLevelID, XlsLevelID, FinalStateEditLevelID, ConstantStateEditLevelID, CalcLevelID, SendLevelID, DecExtStateActive, AmountCaption, Amount2Caption, StandardDayCaption, StandardTimeCaption, ShowMnuPlace, 
                         PayMentShow, ProcName, EarthName, TaxCodeShow, WageCalcKindActive, FirstAmountName, PrefixInfoID, MasterFormType, ContactFormType, RepetitiveControl, PersonelTypeInfoRow, ActiveYearID, PrintAfterPost, 
                         InsertAccCode, WorkFlowID, RepetitiveControlInfoID, SalaryIDinDocShow,Checking4AllPersonnelShow,EmployerAmountActiveShow,PromissoryFormType,WageKind_Active)
SELECT        FormType, FormCaption_L1, FormCaption_L2, DurationDayActive, DurationTimeActive, ExemptPersonActive, SalaryEffectKind, KargozinyEffectKind, RecalSalaryTypes, SalaryKind, CoefficientActive, AmountActive, 
                         Amount2Active, RecallFormTypes, UseEndMounthKind, AidInfoNo1Active, AidInfoDate1Active, AidInfo1Caption, AidInfoNo2Active, AidInfoDate2Active, AidInfo2Caption, TopicCodeKind, DetailCodeKind, CTopicCodeKind, 
                         CTopicCode2Kind, DisplayFormType, ReportFileName1, ReportFileName2, ReportFileName3, ReportFileName4, Note_L1, Note_L2, WordDocumentsActive, FunctionShow, RecalKindClock, CalCulateTypeActive, 
                         FormInfo4Function, ChangeAmountActive, FirstAmountActive, NoteActive, LimitMounthActive, MnuRow, ReportFooter, MaxDayTimeActive, ReportCaption1, ReportCaption2, ReportCaption3, ReportCaption4, ShowMnuId, 
                         ShowOperators, MuliplyInDayActive, CTopicCode3Kind, EarthProceedsActivate, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID, PrintDesignLevelID, FormRelatedLevelID, AccCodeLevelID, 
                         OtherCtrlLevelID, XlsLevelID, FinalStateEditLevelID, ConstantStateEditLevelID, CalcLevelID, SendLevelID, DecExtStateActive, AmountCaption, Amount2Caption, StandardDayCaption, StandardTimeCaption, ShowMnuPlace, 
                         PayMentShow, ProcName, EarthName, TaxCodeShow, WageCalcKindActive, FirstAmountName, PrefixInfoID, MasterFormType, ContactFormType, RepetitiveControl, PersonelTypeInfoRow, ActiveYearID, PrintAfterPost, 
                         InsertAccCode, WorkFlowID, RepetitiveControlInfoID, SalaryIDinDocShow, Checking4AllPersonnelShow, EmployerAmountActiveShow, PromissoryFormType, WageKind_Active
FROM            Salary_DataBase.Pay.FormTypes
where FormType  not in (SELECT        FormType from Pay.FormTypes)
-- 
INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2,  Note, 
                         Checking4AllPersonnel, EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive,WageKind
						 )
SELECT        FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2, Note, Checking4AllPersonnel, 
                         EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive, WageKind
FROM            Salary_DataBase.Pay.FormsInfo AS FormsInfo_1
where FormType = 40
AND FormInfoID  not in (SELECT FormInfoID from Pay.FormsInfo)
-- 
INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2,  Note, 
                         Checking4AllPersonnel, EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive,WageKind)
SELECT        FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2,  Note, 
                         Checking4AllPersonnel, EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive,WageKind
FROM            Salary_DataBase.Pay.FormsInfo AS FormsInfo_1
where FormType != 40
AND FormInfoID  not in (SELECT FormInfoID from Pay.FormsInfo)
-- 
INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1) 
SELECT distinct  BirthPlace , 1 FormType  , BirthPlace,'نامشخص'
FROM            Salary_DataBase.Pay.PersonelInfo
where BirthPlace not in (SELECT FormInfoid FROM            Pay.FormsInfo )
--
INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1) 
SELECT distinct  StudyCityCode , 1 FormType  , StudyCityCode,'نامشخص'
FROM            Salary_DataBase.Pay.PersonelInfo
where StudyCityCode not in (SELECT FormInfoid FROM            Pay.FormsInfo )
--
INSERT INTO Pay.BudgetsInfo(  BudgetInfoID, ProjectID, ProjectDetailID, Years, Mounth, InterdictFormInfoID, PersonelCount, Fday, Fhours, UserID, Status, Kind)
SELECT        BudgetInfoID, ProjectID, ProjectDetailID, Years, Mounth, InterdictFormInfoID, PersonelCount, Fday, Fhours, UserID, Status, Kind
FROM            Salary_DataBase.Pay.BudgetsInfo 
where BudgetInfoID not in (SELECT BudgetInfoID FROM            Pay.BudgetsInfo )
--
INSERT INTO Pay.BudgetInfoItems
                         (BudgetInfoItemID, BudgetInfoID, SalaryID, Fday, Fhours)
SELECT        BudgetInfoItemID, BudgetInfoID, SalaryID, Fday, Fhours
FROM            Salary_DataBase.Pay.BudgetInfoItems AS BudgetInfoItems_1
where BudgetInfoItemID not in (SELECT BudgetInfoItemID FROM            Pay.BudgetInfoItems )
--
INSERT INTO Pay.CalculateWage(SalaryID, Amount)
SELECT        SalaryID, Amount
FROM            Salary_DataBase.Pay.CalculateWage
where SalaryID not in (SELECT SalaryID FROM            Pay.CalculateWage )
--
INSERT INTO Pay.ChangeWage( SalaryID, CalculatedKind, Amount, Firstdate, Enddate, ColumnsCalc/*, SalaryIDFormula*/)
SELECT        SalaryID, CalculatedKind, Amount, Firstdate, Enddate, ColumnsCalc /*, SalaryIDFormula*/
FROM            Salary_DataBase.Pay.ChangeWage
where SalaryID  not in (SELECT        SalaryID from Pay.ChangeWage)
--
INSERT INTO Pay.FixedLabels(LabelID, LabelDateTime, Descriptions)
SELECT        LabelID, LabelDateTime, Descriptions
FROM            Salary_DataBase.Pay.FixedLabels
where LabelID  not in (SELECT LabelID from Pay.FixedLabels)
--
INSERT INTO Pay.FormInfoItems( ItemID, FormInfoID, SalaryID, Coefficient, Coefficient2, Amount, SalaryID2)
SELECT        ItemID, FormInfoID, SalaryID, Coefficient, Coefficient2, Amount, SalaryID2
FROM            Salary_DataBase.Pay.FormInfoItems
where ItemID  not in (SELECT        ItemID from Pay.FormInfoItems)
--
INSERT INTO Pay.SalaryRange(FormInfoID, SalaryID, Kind)
SELECT        FormInfoID, SalaryID, Kind
FROM            Salary_DataBase.Pay.SalaryRange
where FormInfoID  not in (SELECT        FormInfoID from Pay.SalaryRange)
--
INSERT INTO Pay.ScanType(  ScanType, ScanTypeName)
SELECT        ScanType, ScanTypeName
FROM            Salary_DataBase.Pay.ScanType
where ScanType  not in (SELECT        ScanType from Pay.ScanType)
--
INSERT INTO Pay.ScanInfo(ScanType, ScanInfoID, ScanInfoName)
SELECT        ScanType, ScanInfoID, ScanInfoName
FROM            Salary_DataBase.Pay.ScanInfo
where ScanType  not in (SELECT        ScanType from Pay.ScanInfo)
--
INSERT INTO Pay.Taxs( TaxID, FormInfoID, YearRun, MonthRun, Descriptions, BonusFreeTax, TFN_CODE, Statuss, Taxs_Bonus_TaxID)
SELECT        TaxID, FormInfoID, YearRun, MonthRun, Descriptions, BonusFreeTax, TFN_CODE, Statuss, Taxs_Bonus_TaxID
FROM            Salary_DataBase.Pay.Taxs
where TaxID  not in (SELECT TaxID from Pay.Taxs)
--
SET IDENTITY_INSERT Pay.TaxsItems  ON
INSERT INTO Pay.TaxsItems  ( ID, TaxID, RowNo, RevenuePrice, FixedPrice, Cofficient)
SELECT        ID, TaxID, RowNo, RevenuePrice, FixedPrice, Cofficient
FROM            Salary_DataBase.Pay.TaxsItems
where ID  not in (SELECT ID from Pay.TaxsItems)
--
INSERT INTO Pay.TaxInfo( YearID, Mounth, PayKind, Branch, PostDate, Bank, TaxCheakDate, TaxBranch, TaxAccountNum, TaxCheckSerial, PaymentsCasesDate, PaymentsCases, Penalties4NonSubmission, Penalties4NonPay, 
                         Penalties4NonSubmissionLast, Penalties4NonPayLast, SalarieLastMonth, SalarieBonusesLastMonth, TaxLastMonth, TaxDebtLastMonth, Paragraph)
SELECT        YearID, Mounth, PayKind, Branch, PostDate, Bank, TaxCheakDate, TaxBranch, TaxAccountNum, TaxCheckSerial, PaymentsCasesDate, PaymentsCases, Penalties4NonSubmission, Penalties4NonPay, 
                         Penalties4NonSubmissionLast, Penalties4NonPayLast, SalarieLastMonth, SalarieBonusesLastMonth, TaxLastMonth, TaxDebtLastMonth, Paragraph
FROM            Salary_DataBase.Pay.TaxInfo
where YearID  not in (SELECT YearID from Pay.TaxInfo)
--
INSERT INTO Pay.Insurance(InsuranceID, FormInfoID, MinDailySalary, MaxDailySalary, YearRun, MonthRun, InsertDate, Descriptions)
SELECT        InsuranceID, FormInfoID, MinDailySalary, MaxDailySalary, YearRun, MonthRun, InsertDate, Descriptions
FROM            Salary_DataBase.Pay.Insurance
where InsuranceID  not in (SELECT        InsuranceID from Pay.Insurance)
--
INSERT INTO Pay.InsuranceCONSTinfo(insuranceNo, FormInfoID, insurancename, EmployerName, workShop, InsuranceLabel_L1, InsuranceLabel_L2, Employeeshare, Employershare, InactionInsuranceShare, insuranceUp, dailywage, AccTopicCode, AccDetailCode, 
                         AccCTopicCode, AccCTopicCode2, tel, address, HardShipPercent, PeopleExempt, OffShootName_L1, PostalCode, PoorsantRate, AccCTopicCode3, TaxCode, MON_PYM, AccTopicCodeExempt, AccDetailCodeExempt, 
                         AccCTopicCodeExempt, AccCTopicCode2Exempt, AccCTopicCode3Exempt)
SELECT        insuranceNo, FormInfoID, insurancename, EmployerName, workShop, InsuranceLabel_L1, InsuranceLabel_L2, Employeeshare, Employershare, InactionInsuranceShare, insuranceUp, dailywage, AccTopicCode, AccDetailCode, 
                         AccCTopicCode, AccCTopicCode2, tel, address, HardShipPercent, PeopleExempt, OffShootName_L1, PostalCode, PoorsantRate, AccCTopicCode3, TaxCode, MON_PYM, AccTopicCodeExempt, AccDetailCodeExempt, 
                         AccCTopicCodeExempt, AccCTopicCode2Exempt, AccCTopicCode3Exempt
FROM            Salary_DataBase.Pay.InsuranceCONSTinfo
where insuranceNo  not in (SELECT        insuranceNo from Pay.InsuranceCONSTinfo)
--
INSERT INTO Pay.InsouranceTemp(insuranceID, PeopleExempt, InsouranceEmployer, FDaily)
SELECT        insuranceID, PeopleExempt, InsouranceEmployer, FDaily
FROM            Pay.InsouranceTemp
where insuranceID  not in (SELECT        insuranceID from Pay.InsouranceTemp)
--
INSERT INTO Pay.PersonelInfo ( PersonelNo, PersonelState, name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2, NationalityCode, BirthDate, SodurDate, BirthPlace, SodurPlace, NationalID, IDNumber, sex, marriage, childNumber, 
                         SupPepNumber, LicenceCode, studyField, StudyCityCode, StudyFinishedate, UnivercityCode, StudyAverage, employDate, finishEmployDate, BankCode, BranchCode, AccountNumber, AccBankType, insuranceID, 
                         InsuranceNumber, TaxZone, TaxCalculationType, CoTax, Tel, address_L1, address_L2, Note_L1, Note_L2, StoreDayTime, employDatem, StoreDayTimeActive, EmployID, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, SoldierState, PercentWound, SpecialJob, AccCTopicCode3, CreditCardNo, MaskanKind,  SpecialState, PostalCode, BranchInfo, OffTime, DSW_JOB, EducationType, EducationDegree, 
                         EducationGrade, TimeCardNumber, NumberOfMedicalOffice, IssuedProvince, IssuedSection, IssuedVillage, BirthProvince, BirthSection, BirthVillage, EmployTypeID, Mobile, Email, MartyrChild, TelegramChatID,
			 CitizenCode , LocationCode
			 

)
SELECT        PersonelNo, PersonelState, name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2, NationalityCode, BirthDate, SodurDate, ISNULL(BirthPlace, 0) AS BirthPlace, SodurPlace, NationalID, IDNumber, 
                         ISNULL(sex, 0) AS sex, marriage, childNumber, SupPepNumber, LicenceCode, studyField, StudyCityCode, StudyFinishedate, UnivercityCode, StudyAverage, employDate, finishEmployDate, BankCode, BranchCode, 
                         AccountNumber, AccBankType, insuranceID, InsuranceNumber, TaxZone, TaxCalculationType, CoTax, Tel, address_L1, address_L2, Note_L1, Note_L2, StoreDayTime, employDatem, StoreDayTimeActive, EmployID, 
                         AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, SoldierState, PercentWound, SpecialJob, AccCTopicCode3, CreditCardNo, ISNULL(MaskanKind, 0) AS Expr1, SpecialState, PostalCode, BranchInfo, OffTime, 
                         DSW_JOB, EducationType, EducationDegree, EducationGrade, TimeCardNumber, NumberOfMedicalOffice, IssuedProvince, IssuedSection, IssuedVillage, BirthProvince, BirthSection, BirthVillage, EmployTypeID, Mobile, Email, 
                         MartyrChild, TelegramChatID, CitizenCode, LocationCode
						 
FROM            Salary_DataBase.Pay.PersonelInfo
where PersonelNo  not in (SELECT        PersonelNo from Pay.PersonelInfo)
--
INSERT INTO Pay.jobs(jobCode, jobName, JobLocation, OrganPos, Organizational, GroupCode, JobDefinition, CreationDate, GradeID, RankID)
SELECT        jobCode, jobName, JobLocation, OrganPos, Organizational, GroupCode, JobDefinition, CreationDate, GradeID, RankID
FROM            Salary_DataBase.Pay.jobs
where jobCode  not in (SELECT        jobCode from Pay.jobs)
--
SET IDENTITY_INSERT Pay.jobsItems ON
INSERT INTO Pay.jobsItems(ID, jobCode, Descriptions, InfoKind)
SELECT        ID, jobCode, Descriptions, InfoKind
FROM            Salary_DataBase.Pay.jobsItems
where jobCode  not in (SELECT        jobCode from Pay.jobsItems)
SET IDENTITY_INSERT Pay.jobsItems OFF

--
INSERT INTO Pay.jobsSalaryRanges(  jobCode, SalaryID, Amount)
SELECT        jobCode, SalaryID, Amount
FROM            Salary_DataBase.Pay.jobsSalaryRanges
where jobCode  not in (SELECT        jobCode from Pay.jobsSalaryRanges)
--
SET IDENTITY_INSERT Pay.y ON
SET IDENTITY_INSERT Pay.y OFF

INSERT INTO Pay.jobsTerms(ID, jobCode, LicenceCode, StudyField, ExperienceYear, ExperienceMonth, Duration, MinPoints, MaxPoints, PercentExtra, JobLevel, TestCondition, Note)
SELECT        ID, jobCode, LicenceCode, StudyField, ExperienceYear, ExperienceMonth, Duration, MinPoints, MaxPoints, PercentExtra, JobLevel, TestCondition, Note
FROM            Salary_DataBase.Pay.jobsTerms
where jobCode  not in (SELECT        jobCode from Pay.jobsTerms)
--
INSERT INTO Pay.Interdicts(InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, OfficeCode, jobCode, grade, jobCity, InterdicType, EmployTypeID, InterdicStartDate, employDaytime, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, KargozinyNote_L1, KargozinyNote_L2, State, UserID, TotalYearsWork, InterdicEndDate, Comment, InterdicStartDateM, TaxCalculationType, insuranceID, ProjectID, StandardEmployAmount, ManegePercent, 
                         OfficeManegePercent, GroupID, PayehNo,  GrpExpense,  SubFunctionID,  SubInterdictID, LastInterdictID, AccCTopicCode3, GradeDate, 
                         HasRetard, InsuranceStartDate, InsuranceEndDate, jobsGroup, TaxMounth, TaxDays, LastUser, FirstUser, AidNo1, AidDate1, TypeOfContract, StandardClock, RetardActive,  RetirementDate 
               )
SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, OfficeCode, jobCode, grade, jobCity, InterdicType, EmployTypeID, InterdicStartDate, employDaytime, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, KargozinyNote_L1, KargozinyNote_L2, State, UserID, TotalYearsWork, InterdicEndDate, Comment, InterdicStartDateM, TaxCalculationType, insuranceID, ProjectID, StandardEmployAmount, ManegePercent, 
                         OfficeManegePercent, GroupID, PayehNo, ISNULL(GrpExpense, 0) AS GrpExpense, ISNULL(SubFunctionID, 0) AS SubFunctionID, ISNULL(SubInterdictID, 0) AS SubInterdictID, LastInterdictID, AccCTopicCode3, GradeDate, 
                         HasRetard, InsuranceStartDate, InsuranceEndDate, jobsGroup, TaxMounth, TaxDays, LastUser, FirstUser, AidNo1, AidDate1, TypeOfContract, StandardClock, RetardActive,  RetirementDate 
                         jobCityAddress
FROM            Salary_DataBase.Pay.Interdicts
where InterdictID  not in (SELECT        InterdictID from Pay.Interdicts)
--
INSERT INTO Pay.InterdictItems
(InterdictItemsID, InterdictID, SalaryID, Amount, FirstMounth, EndMounth, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ExpenseType, UserID, ItemNote_L1, ItemNote_L2, Firstdate, Enddate, JobScore)
SELECT        InterdictItemsID, InterdictID, SalaryID, Amount, FirstMounth, EndMounth, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ExpenseType, UserID, ItemNote_L1, ItemNote_L2, Firstdate, Enddate, JobScore
FROM            Salary_DataBase.Pay.InterdictItems
where InterdictItemsID  not in (SELECT        InterdictItemsID from Pay.InterdictItems)
--
INSERT INTO Pay.PersonelDecExt( DecExtID, FormInfoID, PersonelNo, EmployeeAmount, FirstMounth, EndMounth, AidNo1, AidDate1, AidNo2, AidDate2, DayQuntity, DayTime, EmployerAmount, FormInfoID2, Note_L1, Note_L2, AccTopicCode, AccDetailCode, 
                         AccCTopicCode, AccCTopicCode2, PaymentLoan, OfficeCode, ProjectInfoID, OfficeInfoID, EndDate, Minute_, AccCTopicCode3, State, ProcCode, EarthCode, Settlement, YearID, StartYear, EndYear, Situation, SettlementDate, 
                         PayableDuringMonth, LastUser, FirstUser, DocNoBonus, DocDateBonus, DocNoAnnuity, DocDateAnnuity, NumberOfMonth, leaveCount, leavePrice)
SELECT        DecExtID, FormInfoID, PersonelNo, EmployeeAmount, FirstMounth, EndMounth, AidNo1, AidDate1, AidNo2, AidDate2, DayQuntity, DayTime, EmployerAmount, FormInfoID2, Note_L1, Note_L2, AccTopicCode, AccDetailCode, 
                         AccCTopicCode, AccCTopicCode2, PaymentLoan, OfficeCode, ProjectInfoID, OfficeInfoID, EndDate, Minute_, AccCTopicCode3, State, ProcCode, EarthCode, Settlement, YearID, StartYear, EndYear, Situation, SettlementDate, 
                         PayableDuringMonth, LastUser, FirstUser, DocNoBonus, DocDateBonus, DocNoAnnuity, DocDateAnnuity, NumberOfMonth, leaveCount, leavePrice
FROM            Salary_DataBase.Pay.PersonelDecExt
where DecExtID  not in (SELECT        DecExtID from Pay.PersonelDecExt)
--
INSERT INTO Pay.PersonelDecExtItem(ID, DecExtID, Years, Months, Amount)
SELECT        ID, DecExtID, Years, Months, Amount
FROM            Salary_DataBase.Pay.PersonelDecExtItem
where DecExtID  not in (SELECT DecExtID from Pay.PersonelDecExtItem)
--
INSERT INTO Pay.FunctionDay(FunID, OfficeCode, FunNo, FunDate, FirstUser, LastUser, state, note, YearID,Situation)
SELECT        FunID, OfficeCode, FunNo, FunDate, FirstUser, LastUser, state, note, YearID,Situation
FROM            Salary_DataBase.Pay.FunctionDay
where FunID  not in (SELECT FunID from Pay.FunctionDay)
--
INSERT INTO Pay.FunctionDayItems
	(
		FunItemID, FunID, PersonelNo, PeresentID, FunTime, ExtTime, ShiftNo, WorkID, EarthCode, ProcCode, 
		FirstUser, LastUser, StandardRate, AccCTopicCode3
	)
SELECT   FunItemID, FunID, PersonelNo, PeresentID, FunTime, ExtTime, ShiftNo, WorkID, EarthCode, ProcCode, 
		FirstUser, LastUser, StandardRate, AccCTopicCode3
FROM            Salary_DataBase.Pay.FunctionDayItems 
where FunItemID  not in (SELECT FunItemID from Pay.FunctionDayItems)
--
INSERT INTO Pay.Functions( FunctionID, FormInfoID, Mounth, PersonelNo, FunctionDay, FunctionTime, ProjectID, JobCode, OfficeCode, ProjectRow, ProcCode, CTopic3, SickDay, YearID, Years, Situation)
SELECT        FunctionID, FormInfoID, Mounth, PersonelNo, FunctionDay, FunctionTime, ProjectID, JobCode, OfficeCode, ProjectRow, ProcCode, CTopic3, SickDay, YearID, Years, Situation
FROM            Salary_DataBase.Pay.Functions
where FunctionID  not in (SELECT FunctionID from Pay.Functions)
--
INSERT INTO Pay.FunctionsItems(FunctionsItemsID, FunctionID, SalaryID, FDaily, FHours, Amount, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2)
SELECT    distinct    FunctionsItemsID, FunctionID, SalaryID, FDaily, FHours, Amount, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2
FROM            Salary_DataBase.Pay.FunctionsItems
where FunctionsItemsID  not in (SELECT FunctionsItemsID from Pay.FunctionsItems)
--
SET IDENTITY_INSERT Pay.FixedCalculated ON

INSERT INTO Pay.FixedCalculated( FixedCID, FunctionID, FormInfoID, PersonelNO, ProjectID, OfficeCode, JobCede, SalaryID, Mounth, Price, BedBes, CalCulateKind, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ShowListKind, ArchiveDate, 
                         DocNo, DocDate, ArchiveID, AccCTopicCode3, ProcCode, MounthRetard, YearRetard, YearID, Years, LabelID, SubCompanyCode)
SELECT        FixedCID, FunctionID, FormInfoID, PersonelNO, ProjectID, OfficeCode, JobCede, SalaryID, Mounth, Price, BedBes, CalCulateKind, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ShowListKind, ArchiveDate, 
                         DocNo, DocDate, ArchiveID, AccCTopicCode3, ProcCode, MounthRetard, YearRetard, YearID, Years, LabelID, SubCompanyCode
FROM            Salary_DataBase.Pay.FixedCalculated
where FunctionID  not in (SELECT FunctionID from Pay.FixedCalculated)
SET IDENTITY_INSERT Pay.FixedCalculated OFF

--
INSERT INTO Pay.GetReprots(GetReprotsID, GetReprotsName, OtherRptFiles, OtherRptCaptions, ActiveFunctionsItems, DeleteColumnIfSumWageIsZero)
SELECT        GetReprotsID, GetReprotsName, OtherRptFiles, OtherRptCaptions, ActiveFunctionsItems, DeleteColumnIfSumWageIsZero
FROM            Salary_DataBase.Pay.GetReprots
where GetReprotsID  not in (SELECT GetReprotsID from Pay.GetReprots)
--
SET IDENTITY_INSERT Pay.GetRptColumns ON
INSERT INTO Pay.GetRptColumns(ColumnsID, GetReprotsID, ColumnsName, Kind, ColumnsSalaryID, Amount, ColumnsSalaryIDSub, ColumnsRoundNo, ColumnsCalc, ConstID)
SELECT        ColumnsID, GetReprotsID, ColumnsName, Kind, ColumnsSalaryID, Amount, ColumnsSalaryIDSub, ColumnsRoundNo, ColumnsCalc, ConstID
FROM            Salary_DataBase.Pay.GetRptColumns
where ColumnsID  not in (SELECT ColumnsID from Pay.GetRptColumns)
SET IDENTITY_INSERT Pay.GetRptColumns OFF
--
INSERT INTO Pay.GetRptConstColumns(ConstID, ColumnsName, Alias, ColumnsCaption, TabelName, IsOutPut, SortType, SortOrder, GroupBy)
SELECT        ConstID, ColumnsName, Alias, ColumnsCaption, TabelName, IsOutPut, SortType, SortOrder, GroupBy
FROM            Salary_DataBase.Pay.GetRptConstColumns
where ConstID  not in (SELECT ConstID from Pay.GetRptConstColumns)
--
INSERT INTO Pay.PersonelAccounts( PersonelNo, AccountsType, BankCode_Pa, BranchInfo_Pa, AccBankType_Pa, BranchCode_Pa, AccountNumber_Pa, CreditCardNo_Pa, SHEBA)
SELECT        PersonelNo, AccountsType, BankCode_Pa, BranchInfo_Pa, AccBankType_Pa, BranchCode_Pa, AccountNumber_Pa, CreditCardNo_Pa, SHEBA
FROM            Salary_DataBase.Pay.PersonelAccounts
where PersonelNo  not in (SELECT PersonelNo from Pay.PersonelAccounts)
--
INSERT INTO Pay.PersonelArchives(ArchiveID, PersonelNo, Comment, FormInfoID)
SELECT        ArchiveID, PersonelNo, Comment, FormInfoID
FROM            Salary_DataBase.Pay.PersonelArchives
where ArchiveID  not in (SELECT ArchiveID from Pay.PersonelArchives)
--
INSERT INTO Pay.PersonelSponsorship
(ID,PersonelNo, Name, lastName, FatherName, IDNumber, NationalID, BirthDate, Kind, State, Note, Sex, MarriageID, StudyActive, kinship, JobType, InsuranceType, InsurancePercent, JobTitle, MaritalDate, DivorceDate, 
                         DeathDate, Degree, GraduationDate)
SELECT        ID, PersonelNo, Name, lastName, FatherName, IDNumber, NationalID, BirthDate, Kind, State, Note, Sex, MarriageID, StudyActive, kinship, JobType, InsuranceType, InsurancePercent, JobTitle, MaritalDate, DivorceDate, 
                         DeathDate, Degree, GraduationDate
FROM            Salary_DataBase.Pay.PersonelSponsorship
where PersonelNo  not in (SELECT PersonelNo from Pay.PersonelSponsorship)
--
INSERT INTO Pay.PersonelTypeInfo( PersonelNo, FormType, FormInfoID)
SELECT    distinct    PersonelNo, FormType, (FormInfoID)FormInfoID
FROM            Salary_DataBase.Pay.PersonelTypeInfo
where PersonelNo  not in (SELECT PersonelNo from Pay.PersonelTypeInfo)
--
INSERT INTO Pay.PonyArchives( PonyArchivesID, PonyID, PonyKind, ExtraCode, ExtraCaptin, ExtraAmount, Mounth, SumFunctionDay, Price)
SELECT        PonyArchivesID, PonyID, PonyKind, ExtraCode, ExtraCaptin, ExtraAmount, Mounth, SumFunctionDay, Price
FROM            Salary_DataBase.Pay.PonyArchives
where PonyID  not in (SELECT PonyID from Pay.PonyArchives)
--
SET IDENTITY_INSERT Pay.PonyDebitCredits ON
INSERT INTO Pay.PonyDebitCredits( PonyDebitCreditsID,  PonyID, PonyNote, Amount)
SELECT        PonyDebitCreditsID, PonyID, PonyNote, Amount
FROM            Salary_DataBase.Pay.PonyDebitCredits
where PonyID  not in (SELECT PonyID from Pay.PonyDebitCredits)
SET IDENTITY_INSERT Pay.PonyDebitCredits OFF
--
SET IDENTITY_INSERT Pay.RecalClocks ON
INSERT INTO Pay.RecalClocks(ID,  SalaryID, RecalClockName, StartStr, CountStr, StartFloatStr, CountFloatStr, ExcelFieldName, Kind, TableFieldName, ExcelFieldName2)
SELECT        ID, SalaryID, RecalClockName, StartStr, CountStr, StartFloatStr, CountFloatStr, ExcelFieldName, Kind, TableFieldName, ExcelFieldName2
FROM            Salary_DataBase.Pay.RecalClocks
where SalaryID  not in (SELECT SalaryID from Pay.RecalClocks)
SET IDENTITY_INSERT Pay.RecalClocks OFF
--
INSERT INTO Pay.WageFormula( SalaryID, YearFrom, MounthFrom, YearTo, MounthTo, SQLCalc, WhereSQLCalc, Note, RunOrder)
SELECT        SalaryID, YearFrom, MounthFrom, YearTo, MounthTo, SQLCalc, WhereSQLCalc, Note, RunOrder
FROM            Salary_DataBase.Pay.WageFormula
where SalaryID  not in (SELECT SalaryID from Pay.WageFormula)
--
INSERT INTO Pay.DecExtItems(DecExtItemID, DecExtID, SalaryID, DayQuntity, Amount, Rate)
SELECT        DecExtItemID, DecExtID, SalaryID, DayQuntity, Amount, Rate
FROM            Salary_DataBase.Pay.DecExtItems
where DecExtItemID  not in (SELECT DecExtItemID from Pay.DecExtItems)
--
SET IDENTITY_INSERT Pay.FunctionSpecialControl ON
INSERT INTO Pay.FunctionSpecialControl( ID,  YearID, ControlDate, PersonelNo, OfficeCode, ProjectID, CarCode, ActivityCode, ProcCode, FunctionKind, FunctionTime, FunAmount)
SELECT       ID,   YearID, ControlDate, PersonelNo, OfficeCode, ProjectID, CarCode, ActivityCode, ProcCode, FunctionKind, FunctionTime, FunAmount
FROM            Pay.FunctionSpecialControl
where PersonelNo  not in (SELECT PersonelNo from Pay.FunctionSpecialControl)
SET IDENTITY_INSERT Pay.FunctionSpecialControl OFF

--  Pay.Mission
SET IDENTITY_INSERT Pay.Mission ON
INSERT INTO Pay.Mission 
	( 
		MissionID, MissionNo, MissionDate, State, PersonelNo, MissionPlace, CompanyCode, MissionStartDate, MissionEndDate, MissionFunction, MissionTopic, TransPort, OtherTopic, MissionKind, AccTopicCode, 
                AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, DocNo, YearID 
	)
SELECT    MissionID, MissionNo, MissionDate, State, PersonelNo, MissionPlace, CompanyCode, MissionStartDate, MissionEndDate, MissionFunction, MissionTopic, TransPort, OtherTopic, MissionKind, AccTopicCode, 
                AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, DocNo, YearID 
FROM            Salary_DataBase.Pay.Mission
where MissionID  not in (SELECT MissionID from Pay.Mission)
SET IDENTITY_INSERT Pay.Mission OFF

-- Pay.MissionInfo
SET IDENTITY_INSERT Pay.MissionInfo ON
INSERT INTO Pay.MissionInfo
	(
		MissionInfoID, MissionID, InfoType, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, ExpID, StartDate, EndDate, FunMission, RateMission, CofficentManage, Price
	)
SELECT   MissionInfoID, MissionID, InfoType, AccDetailCode, AccCTopicCode, AccCTopicCode2, AccCTopicCode3, ExpID, StartDate, EndDate, FunMission, RateMission, CofficentManage, Price
FROM            Salary_DataBase.Pay.MissionInfo
where MissionInfoID  not in (SELECT MissionInfoID from Pay.MissionInfo)
SET IDENTITY_INSERT Pay.MissionInfo OFF

-- Pay.Pony 

SET IDENTITY_INSERT Pay.Pony ON
INSERT INTO Pay.Pony(PonyID, PonyNo, PonyDate, PersonelNo, AdjustDate, FunctionYearly, Months, CurrentMonthsPay, UselessLeave, UselessLeavePay, AnnuityOldPay, Annuity, AnnuityPay, Tide, TidePay, RemainLoan, DebitCredit, Note, Tax, 
                         SalaryNet, SalaryNonNet, SalarySum, SalaryPureSum, PArchiveDate, PArchiveID, OrderDate, RealDate, YearID)
SELECT        s.PonyID, s.PonyNo, s.PonyDate, s.PersonelNo, s.AdjustDate, s.FunctionYearly, s.Months,
    s.CurrentMonthsPay, s.UselessLeave, s.UselessLeavePay, s.AnnuityOldPay, s.Annuity,
    s.AnnuityPay, s.Tide, s.TidePay, s.RemainLoan, s.DebitCredit, s.Note, s.Tax,
    s.SalaryNet, s.SalaryNonNet, s.SalarySum, s.SalaryPureSum, s.PArchiveDate,
    s.PArchiveID, s.OrderDate, s.RealDate, s.YearID
FROM            Salary_DataBase.Pay.Pony s
LEFT JOIN Pay.Pony t ON s.PonyID = t.PonyID
WHERE t.PonyID IS NULL
SET IDENTITY_INSERT Pay.Pony OFF
--
-- Pay.FunctionSpecial
SET IDENTITY_INSERT Pay.FunctionSpecial ON
INSERT INTO Pay.FunctionSpecial (
    ID, YearID, Year, Mounth, PersonelNo, FunctionDay, SickDay,
    FunctionTime, OverTime, WorkingHoliday, NightWork,
    FractionWorkTime, FractionWorkDay
)
SELECT
    s.ID, s.YearID, s.Year, s.Mounth, s.PersonelNo, s.FunctionDay, s.SickDay,
    s.FunctionTime, s.OverTime, s.WorkingHoliday, s.NightWork,
    s.FractionWorkTime, s.FractionWorkDay
FROM Salary_DataBase.Pay.FunctionSpecial s
LEFT JOIN Pay.FunctionSpecial t ON s.ID = t.ID
WHERE t.ID IS NULL

SET IDENTITY_INSERT Pay.FunctionSpecial OFF
--
INSERT INTO Pay.Educations (EducationCode, EducationName)
SELECT        EducationCode, EducationName
FROM            Salary_DataBase.Pay.Educations
WHERE  (SELECT count(*) FROM Pay.Educations)=0
--
