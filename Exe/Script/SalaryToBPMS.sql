use Bsell_talachin_1393

/*  Salary To BPMS    Abedi 1402 08 15     1402 08 16   1402 08 17
  Salary_tala_master1401  TO   Bsell_talachin_1393
   1 -  همه این اسکرییپ قبل از اجرا نام های   بیسل و سلری  به نام بانک شما جایگیزن شود
   2-  ScriptFara.Zip      را  از داخل فایل اسکریپن رو بانک فرا یا بیسل اجرا کنید   UpdateBankFara.sql  
   اسکریپت فوق را چندین بار اجرا کنید تا همه پیام ها  
   Column already has a DEFAULT bound to it.
   Could not create constraint or index. See previous errors.
   There is already an object named '          ' in the database.

   */
use Bsell_talachin_1393
INSERT INTO Pay.Config( CompanyName, CompanyName_L2, CompanyDesc, CompanyDesc_L2, RegisterNumber, Address, Address_L2, Tel1, Tel2, Fax, Email, WebSite, AccountDBName, StartMaliYear, FinishMaliYear, BankState, EconomicNumber, 
                         PostalCode, BudgetBankName, Language1, Language2, BaseSalary, StoreSalaryID, ManagementName_L1, ManagementName_L2, UpperBonus, BonusTaxExemption, TaxBonusCo, RecalSalaryLaw, SpacialWageCode, 
                         AccountDBNameOld, TaxKindCalc, ActiveSalary, ActivePayRoll, ActiveMange, ActiveSchedule, ActiveOrganization, FunctionKind, DecContainTaxunder, DecContainTaxNumerator, TFN, PayMainKind, PayPettyKind, TIN, 
                         Signer1NationalID, Signer1Name, Signer1LastName, Signer1Job, Signer2NationalID, Signer2Name, Signer2LastName, Signer2Job, InterdictItemSumSalary1, InterdictItemSumSalary2, InterdictItem4ListSalary, 
                         HideSalaryID4ListSalary, AccountServerName, SubDayOfCurrentMonth, ChkHideSalaryID4ListSalary, TaxWithExemptionsTimeSheets, SituationTime, OffTimeInFish, ChkGroupInterdicts, ChkStateArchiveEdit, ScanState, 
                         ArchiveScan, ActiveRangeProject, FunctionActiveMinutes, AccDetailCodeEqualPersonelNo, OffTimeControlMessages, SysSmsActive, LastVersion, EidiDisplayedSeparatelyOnTaxList, HasSeprateDetailCompany, 
                         DecExtInFishPrint, IntegrateLoanRemain, PrvBankName, MinBenefitsInsuranceList, VacationMounthFrom, VacationMounthTo, SendDoc2OtherSystems, PonyTaxAble, PersonelNoInInterdictNo, NumberOffDaysInMonth, BenCode, 
                         ActAnnuityInlistSalary, SalaryID4PartMakeBankDSK, FloatToTimeActive, FunctionItemSeparation, UnicNationalID, SalaryID4PartKind, ActRewardInlistSalary, Eid_E_Tax_IncludedInTheTaxList, TaxWithExemptionsFunctionDay, 
                         FunctionDayDefault, ClockCard4FieldName, DocTypeCode, GovConstAmount, GovSpouse, GovChild, InterimInterest)
SELECT        CompanyName, CompanyName_L2, CompanyDesc, CompanyDesc_L2, RegisterNumber, Address, Address_L2, Tel1, Tel2, Fax, Email, WebSite, AccountDBName, StartMaliYear, FinishMaliYear, BankState, EconomicNumber, 
                         PostalCode, BudgetBankName, Language1, Language2, BaseSalary, StoreSalaryID, ManagementName_L1, ManagementName_L2, UpperBonus, BonusTaxExemption, TaxBonusCo, RecalSalaryLaw, SpacialWageCode, 
                         AccountDBNameOld, TaxKindCalc, ActiveSalary, ActivePayRoll, ActiveMange, ActiveSchedule, ActiveOrganization, FunctionKind, DecContainTaxunder, DecContainTaxNumerator, TFN, PayMainKind, PayPettyKind, TIN, 
                         Signer1NationalID, Signer1Name, Signer1LastName, Signer1Job, Signer2NationalID, Signer2Name, Signer2LastName, Signer2Job, InterdictItemSumSalary1, InterdictItemSumSalary2, InterdictItem4ListSalary, 
                         HideSalaryID4ListSalary, AccountServerName, SubDayOfCurrentMonth, ChkHideSalaryID4ListSalary, TaxWithExemptionsTimeSheets, SituationTime, OffTimeInFish, ChkGroupInterdicts, ChkStateArchiveEdit, ScanState, 
                         ArchiveScan, ActiveRangeProject, FunctionActiveMinutes, AccDetailCodeEqualPersonelNo, OffTimeControlMessages, SysSmsActive, LastVersion, EidiDisplayedSeparatelyOnTaxList, HasSeprateDetailCompany, 
                         DecExtInFishPrint, IntegrateLoanRemain, PrvBankName, MinBenefitsInsuranceList, VacationMounthFrom, VacationMounthTo, SendDoc2OtherSystems, PonyTaxAble, PersonelNoInInterdictNo, NumberOffDaysInMonth, BenCode, 
                         ActAnnuityInlistSalary, SalaryID4PartMakeBankDSK, FloatToTimeActive, FunctionItemSeparation, UnicNationalID, SalaryID4PartKind, ActRewardInlistSalary, Eid_E_Tax_IncludedInTheTaxList, TaxWithExemptionsFunctionDay, 
                         FunctionDayDefault, ClockCard4FieldName, DocTypeCode, GovConstAmount, GovSpouse, GovChild, InterimInterest
FROM            Salary_tala_master1401.Pay.Config

 ALTER TABLE [Pay].[FormsInfo] Alter column  InfoName_L1  varchar(500)
 ALTER TABLE [Pay].[FormsInfo] Alter column  InfoName_L2  varchar(500)

/*
   3 - زیر سیستم حقوق دستمزد را در فرا فعال کنید و بروزرسانی انجام دهید 
   4 - بروز رسانی بانک و گزارشات را بطور کامل و بدون خطا اجرا کنید
*/


delete  Pay.FormsInfo  ---چون دیفالت ها با بروزرسانی پر شده دوبار نباید ریخته شود همه حذف می کنیم 
delete  Pay.FormTypes  ---چون دیفالت ها با بروزرسانی پر شده دوبار نباید ریخته شود همه حذف می کنیم 


INSERT INTO Pay.FormTypes(FormType, FormCaption_L1, FormCaption_L2, DurationDayActive, DurationTimeActive, ExemptPersonActive, SalaryEffectKind, KargozinyEffectKind, RecalSalaryTypes, SalaryKind, CoefficientActive, AmountActive, 
                         Amount2Active, RecallFormTypes, UseEndMounthKind, AidInfoNo1Active, AidInfoDate1Active, AidInfo1Caption, AidInfoNo2Active, AidInfoDate2Active, AidInfo2Caption, TopicCodeKind, DetailCodeKind, CTopicCodeKind, 
                         CTopicCode2Kind, DisplayFormType, ReportFileName1, ReportFileName2, ReportFileName3, ReportFileName4, Note_L1, Note_L2, WordDocumentsActive, FunctionShow, RecalKindClock, CalCulateTypeActive, 
                         FormInfo4Function, ChangeAmountActive, FirstAmountActive, NoteActive, LimitMounthActive, MnuRow, ReportFooter, MaxDayTimeActive, ReportCaption1, ReportCaption2, ReportCaption3, ReportCaption4, ShowMnuId, 
                         ShowOperators, MuliplyInDayActive, CTopicCode3Kind, EarthProceedsActivate, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID, PrintDesignLevelID, FormRelatedLevelID, AccCodeLevelID, 
                         OtherCtrlLevelID, XlsLevelID, FinalStateEditLevelID, ConstantStateEditLevelID, CalcLevelID, SendLevelID, DecExtStateActive, AmountCaption, Amount2Caption, StandardDayCaption, StandardTimeCaption, ShowMnuPlace, 
                         PayMentShow, ProcName, EarthName, TaxCodeShow, WageCalcKindActive, FirstAmountName, PrefixInfoID, MasterFormType, ContactFormType, RepetitiveControl, PersonelTypeInfoRow, ActiveYearID, PrintAfterPost, 
                         InsertAccCode, WorkFlowID, RepetitiveControlInfoID, SalaryIDinDocShow)
SELECT        FormType, FormCaption_L1, FormCaption_L2, DurationDayActive, DurationTimeActive, ExemptPersonActive, SalaryEffectKind, KargozinyEffectKind, RecalSalaryTypes, SalaryKind, CoefficientActive, AmountActive, 
                         Amount2Active, RecallFormTypes, UseEndMounthKind, AidInfoNo1Active, AidInfoDate1Active, AidInfo1Caption, AidInfoNo2Active, AidInfoDate2Active, AidInfo2Caption, TopicCodeKind, DetailCodeKind, CTopicCodeKind, 
                         CTopicCode2Kind, DisplayFormType, ReportFileName1, ReportFileName2, ReportFileName3, ReportFileName4, Note_L1, Note_L2, WordDocumentsActive, FunctionShow, RecalKindClock, CalCulateTypeActive, 
                         FormInfo4Function, ChangeAmountActive, FirstAmountActive, NoteActive, LimitMounthActive, MnuRow, ReportFooter, MaxDayTimeActive, ReportCaption1, ReportCaption2, ReportCaption3, ReportCaption4, ShowMnuId, 
                         ShowOperators, MuliplyInDayActive, CTopicCode3Kind, EarthProceedsActivate, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID, PrintDesignLevelID, FormRelatedLevelID, AccCodeLevelID, 
                         OtherCtrlLevelID, XlsLevelID, FinalStateEditLevelID, ConstantStateEditLevelID, CalcLevelID, SendLevelID, DecExtStateActive, AmountCaption, Amount2Caption, StandardDayCaption, StandardTimeCaption, ShowMnuPlace, 
                         PayMentShow, ProcName, EarthName, TaxCodeShow, WageCalcKindActive, FirstAmountName, PrefixInfoID, MasterFormType, ContactFormType, RepetitiveControl, PersonelTypeInfoRow, ActiveYearID, PrintAfterPost, 
                         InsertAccCode, WorkFlowID, RepetitiveControlInfoID, SalaryIDinDocShow
FROM            Salary_tala_master1401.Pay.FormTypes
---
INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2,  Note, 
                         Checking4AllPersonnel, EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive)
SELECT        FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2,  Note, 
                         Checking4AllPersonnel, EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive
FROM            Salary_tala_master1401.Pay.FormsInfo AS FormsInfo_1
where FormType = 40
---
INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2,  Note, 
                         Checking4AllPersonnel, EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive)
SELECT        FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L2, PrvInfoID, Amount, Amount2, Coefficient, StandardDays, StandardTimes, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, CalCulateType, 
                         RecallFormInfoID1, RecallFormInfoID2, WordDocuments, RecalKindClock, FirstAmount, MaxDay, MaxTime, MuliplyInDay, AccCTopicCode3, PayMentActive, TaxCode, WageCalcKind, FormInfoID2,  Note, 
                         Checking4AllPersonnel, EmployerAmountActive, AccTopicCodeB, AccDetailCodeB, DisableDecContainTaxNumerator, SalaryIDinDocActive
FROM            Salary_tala_master1401.Pay.FormsInfo AS FormsInfo_1
where FormType != 40
-------------------------------------------------------------------------------------
---
INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1) 

SELECT distinct  BirthPlace , 1 FormType  , BirthPlace,'نامشخص'
FROM            Salary_tala_master1401.Pay.PersonelInfo
where BirthPlace not in (SELECT FormInfoid FROM            Pay.FormsInfo )
-------------------------------------------------------------------------------------
INSERT INTO Pay.FormsInfo
                         (FormInfoID, FormType, InfoID, InfoName_L1) 

SELECT distinct  StudyCityCode , 1 FormType  , StudyCityCode,'نامشخص'
FROM            Salary_tala_master1401.Pay.PersonelInfo
where StudyCityCode not in (SELECT FormInfoid FROM            Pay.FormsInfo )





INSERT INTO Pay.BudgetsInfo(  BudgetInfoID, ProjectID, ProjectDetailID, Years, Mounth, InterdictFormInfoID, PersonelCount, Fday, Fhours, UserID, Status, Kind)
SELECT        BudgetInfoID, ProjectID, ProjectDetailID, Years, Mounth, InterdictFormInfoID, PersonelCount, Fday, Fhours, UserID, Status, Kind
FROM            Salary_tala_master1401.Pay.BudgetsInfo 

--
INSERT INTO Pay.BudgetInfoItems
                         (BudgetInfoItemID, BudgetInfoID, SalaryID, Fday, Fhours)
SELECT        BudgetInfoItemID, BudgetInfoID, SalaryID, Fday, Fhours
FROM            Salary_tala_master1401.Pay.BudgetInfoItems AS BudgetInfoItems_1

--
INSERT INTO Pay.CalculateWage(SalaryID, Amount)
SELECT        SalaryID, Amount
FROM            Salary_tala_master1401.Pay.CalculateWage
--
INSERT INTO Pay.ChangeWage( SalaryID, CalculatedKind, Amount, Firstdate, Enddate, ColumnsCalc)
SELECT        SalaryID, CalculatedKind, Amount, Firstdate, Enddate, ColumnsCalc
FROM            Salary_tala_master1401.Pay.ChangeWage
--
INSERT INTO Pay.FixedLabels(LabelID, LabelDateTime, Descriptions)
SELECT        LabelID, LabelDateTime, Descriptions
FROM            Salary_tala_master1401.Pay.FixedLabels

INSERT INTO Pay.FormInfoItems( ItemID, FormInfoID, SalaryID, Coefficient, Coefficient2, Amount, SalaryID2)
SELECT        ItemID, FormInfoID, SalaryID, Coefficient, Coefficient2, Amount, SalaryID2
FROM            Salary_tala_master1401.Pay.FormInfoItems


INSERT INTO Pay.Insurance(InsuranceID, FormInfoID, MinDailySalary, MaxDailySalary, YearRun, MonthRun, InsertDate, Descriptions)
SELECT        InsuranceID, FormInfoID, MinDailySalary, MaxDailySalary, YearRun, MonthRun, InsertDate, Descriptions
FROM            Salary_tala_master1401.Pay.Insurance


INSERT INTO Pay.InsuranceCONSTinfo(insuranceNo, FormInfoID, insurancename, EmployerName, workShop, InsuranceLabel_L1, InsuranceLabel_L2, Employeeshare, Employershare, InactionInsuranceShare, insuranceUp, dailywage, AccTopicCode, AccDetailCode, 
                         AccCTopicCode, AccCTopicCode2, tel, address, HardShipPercent, PeopleExempt, OffShootName_L1, PostalCode, PoorsantRate, AccCTopicCode3, TaxCode, MON_PYM, AccTopicCodeExempt, AccDetailCodeExempt, 
                         AccCTopicCodeExempt, AccCTopicCode2Exempt, AccCTopicCode3Exempt)
SELECT        insuranceNo, FormInfoID, insurancename, EmployerName, workShop, InsuranceLabel_L1, InsuranceLabel_L2, Employeeshare, Employershare, InactionInsuranceShare, insuranceUp, dailywage, AccTopicCode, AccDetailCode, 
                         AccCTopicCode, AccCTopicCode2, tel, address, HardShipPercent, PeopleExempt, OffShootName_L1, PostalCode, PoorsantRate, AccCTopicCode3, TaxCode, MON_PYM, AccTopicCodeExempt, AccDetailCodeExempt, 
                         AccCTopicCodeExempt, AccCTopicCode2Exempt, AccCTopicCode3Exempt
FROM            Salary_tala_master1401.Pay.InsuranceCONSTinfo


INSERT INTO Pay.PersonelInfo ( PersonelNo, PersonelState, name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2, NationalityCode, BirthDate, SodurDate, BirthPlace, SodurPlace, NationalID, IDNumber, sex, marriage, childNumber, 
                         SupPepNumber, LicenceCode, studyField, StudyCityCode, StudyFinishedate, UnivercityCode, StudyAverage, employDate, finishEmployDate, BankCode, BranchCode, AccountNumber, AccBankType, insuranceID, 
                         InsuranceNumber, TaxZone, TaxCalculationType, CoTax, Tel, address_L1, address_L2, Note_L1, Note_L2, StoreDayTime, employDatem, StoreDayTimeActive, EmployID, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, SoldierState, PercentWound, SpecialJob, AccCTopicCode3, CreditCardNo, MaskanKind,  SpecialState, PostalCode, BranchInfo, OffTime, DSW_JOB, EducationType, EducationDegree, 
                         EducationGrade, TimeCardNumber, NumberOfMedicalOffice, IssuedProvince, IssuedSection, IssuedVillage, BirthProvince, BirthSection, BirthVillage, EmployTypeID, Mobile, Email, MartyrChild, TelegramChatID
)
SELECT        PersonelNo, PersonelState, name_L1, name_L2, lastName_L1, lastName_L2, fatherName_L1, fatherName_L2, NationalityCode, BirthDate, SodurDate,isnull(BirthPlace,0) BirthPlace, SodurPlace, NationalID, IDNumber,isnull(sex,0) sex, marriage, childNumber, 
                         SupPepNumber, LicenceCode, studyField, StudyCityCode, StudyFinishedate, UnivercityCode, StudyAverage, employDate, finishEmployDate, BankCode, BranchCode, AccountNumber, AccBankType, insuranceID, 
                         InsuranceNumber, TaxZone, TaxCalculationType, CoTax, Tel, address_L1, address_L2, Note_L1, Note_L2, StoreDayTime, employDatem, StoreDayTimeActive, EmployID, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, SoldierState, PercentWound, SpecialJob, AccCTopicCode3, CreditCardNo, isnull(MaskanKind,0),  SpecialState, PostalCode, BranchInfo, OffTime, DSW_JOB, EducationType, EducationDegree, 
                         EducationGrade, TimeCardNumber, NumberOfMedicalOffice, IssuedProvince, IssuedSection, IssuedVillage, BirthProvince, BirthSection, BirthVillage, EmployTypeID, Mobile, Email, MartyrChild, TelegramChatID
FROM            Salary_tala_master1401.Pay.PersonelInfo
---where BirthPlace not in (SELECT FormInfoid FROM            Pay.FormsInfo )


INSERT INTO Pay.PersonelDecExt( DecExtID, FormInfoID, PersonelNo, EmployeeAmount, FirstMounth, EndMounth, AidNo1, AidDate1, AidNo2, AidDate2, DayQuntity, DayTime, EmployerAmount, FormInfoID2, Note_L1, Note_L2, AccTopicCode, AccDetailCode, 
                         AccCTopicCode, AccCTopicCode2, PaymentLoan, OfficeCode, ProjectInfoID, OfficeInfoID, EndDate, Minute_, AccCTopicCode3, State, ProcCode, EarthCode, Settlement, YearID, StartYear, EndYear, Situation, SettlementDate, 
                         PayableDuringMonth, LastUser, FirstUser, DocNoBonus, DocDateBonus, DocNoAnnuity, DocDateAnnuity, NumberOfMonth, leaveCount, leavePrice)
SELECT        DecExtID, FormInfoID, PersonelNo, EmployeeAmount, FirstMounth, EndMounth, AidNo1, AidDate1, AidNo2, AidDate2, DayQuntity, DayTime, EmployerAmount, FormInfoID2, Note_L1, Note_L2, AccTopicCode, AccDetailCode, 
                         AccCTopicCode, AccCTopicCode2, PaymentLoan, OfficeCode, ProjectInfoID, OfficeInfoID, EndDate, Minute_, AccCTopicCode3, State, ProcCode, EarthCode, Settlement, YearID, StartYear, EndYear, Situation, SettlementDate, 
                         PayableDuringMonth, LastUser, FirstUser, DocNoBonus, DocDateBonus, DocNoAnnuity, DocDateAnnuity, NumberOfMonth, leaveCount, leavePrice
FROM            Salary_tala_master1401.Pay.PersonelDecExt


INSERT INTO Pay.PersonelDecExtItem(DecExtID, Years, Months, Amount)
SELECT        DecExtID, Years, Months, Amount
FROM            Salary_tala_master1401.Pay.PersonelDecExtItem

INSERT INTO Pay.FunctionDay(FunID, OfficeCode, FunNo, FunDate, FirstUser, LastUser, state, note, YearID)
SELECT        FunID, OfficeCode, FunNo, FunDate, FirstUser, LastUser, state, note, YearID
FROM            Salary_tala_master1401.Pay.FunctionDay



--'PeresentID','حضور','كد',    (FormType = 64) ',
--'ShiftNo','شيفت','كد'  (FormType = 65) ',
--'WorkID','نوع كار','كد'  (FormType = 40) ',
--'EarthCode','زمين','كد'  (FormType = 69) ',
-- 'ProcCode','محصول','كد'   (FormType = 67)
-- SELECT count(*) from Salary_tala_master1401.Pay.FunctionDayItems  189407

INSERT INTO Pay.FunctionDayItems(FunItemID, FunID, PersonelNo, PeresentID, FunTime, ExtTime, ShiftNo, WorkID, EarthCode, ProcCode, 
FirstUser, LastUser, StandardRate, AccCTopicCode3
)
SELECT        Fi.FunItemID, Fi.FunID, Fi.PersonelNo, ISNULL(t64.FormInfoID,0) AS PeresentID, Fi.FunTime, Fi.ExtTime, ISNULL(t65.FormInfoID,0) AS ShiftNo, ISNULL(t40.FormInfoID,0) AS WorkID
, ISNULL(t69.FormInfoID,0) AS EarthCode, ISNULL(t67.FormInfoID,0) AS  ProcCode, Fi.FirstUser, Fi.LastUser, 
                         Fi.StandardRate, Fi.AccCTopicCode3
FROM            Salary_tala_master1401.Pay.FunctionDayItems AS Fi LEFT OUTER JOIN
                             (SELECT        FormInfoID, InfoID
                                FROM            Pay.FormsInfo AS FormsInfo_2
                                WHERE        (FormType = 40)) AS t40 ON Fi.PeresentID = t40.InfoID LEFT OUTER JOIN
                             (SELECT        FormInfoID, InfoID
                                FROM            Pay.FormsInfo AS FormsInfo_1
                                WHERE        (FormType = 69)) AS t69 ON Fi.PeresentID = t69.InfoID LEFT OUTER JOIN
                             (SELECT        FormInfoID, InfoID
                                FROM            Pay.FormsInfo AS FormsInfo_3
                                WHERE        (FormType = 65)) AS t65 ON Fi.PeresentID = t65.InfoID LEFT OUTER JOIN
                             (SELECT        FormInfoID, InfoID
                                FROM            Pay.FormsInfo
                                WHERE        (FormType = 64)) AS t64 ON Fi.PeresentID = t64.InfoID LEFT OUTER JOIN
                             (SELECT        FormInfoID, InfoID
                                FROM            Pay.FormsInfo
                                WHERE        (FormType = 67)) AS t67 ON Fi.PeresentID = t67.InfoID

INSERT INTO Pay.Functions( FunctionID, FormInfoID, Mounth, PersonelNo, FunctionDay, FunctionTime, ProjectID, JobCode, OfficeCode, ProjectRow, ProcCode, CTopic3, SickDay, YearID, Years, Situation)
SELECT        FunctionID, FormInfoID, Mounth, PersonelNo, FunctionDay, FunctionTime, ProjectID, JobCode, OfficeCode, ProjectRow, ProcCode, CTopic3, SickDay, YearID, Years, Situation
FROM            Salary_tala_master1401.Pay.Functions


INSERT INTO Pay.FunctionsItems(FunctionsItemsID, FunctionID, SalaryID, FDaily, FHours, Amount, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2)
SELECT        FunctionsItemsID, FunctionID, SalaryID, FDaily, FHours, Amount, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2
FROM            Salary_tala_master1401.Pay.FunctionsItems

INSERT INTO Pay.FixedCalculated( FunctionID, FormInfoID, PersonelNO, ProjectID, OfficeCode, JobCede, SalaryID, Mounth, Price, BedBes, CalCulateKind, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ShowListKind, ArchiveDate, 
                         DocNo, DocDate, ArchiveID, AccCTopicCode3, ProcCode, MounthRetard, YearRetard, YearID, Years, LabelID)
SELECT        FunctionID, FormInfoID, PersonelNO, ProjectID, OfficeCode, JobCede, SalaryID, Mounth, Price, BedBes, CalCulateKind, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ShowListKind, ArchiveDate, 
                         DocNo, DocDate, ArchiveID, AccCTopicCode3, ProcCode, MounthRetard, YearRetard, YearID, Years, LabelID
FROM            Salary_tala_master1401.Pay.FixedCalculated




INSERT INTO Pay.GetReprots(GetReprotsID, GetReprotsName, OtherRptFiles, OtherRptCaptions, ActiveFunctionsItems, DeleteColumnIfSumWageIsZero)
SELECT        GetReprotsID, GetReprotsName, OtherRptFiles, OtherRptCaptions, ActiveFunctionsItems, DeleteColumnIfSumWageIsZero
FROM            Salary_tala_master1401.Pay.GetReprots

INSERT INTO Pay.GetRptColumns(ColumnsID, GetReprotsID, ColumnsName, Kind, ColumnsSalaryID, Amount, ColumnsSalaryIDSub, ColumnsRoundNo, ColumnsCalc, ConstID)
SELECT        ColumnsID, GetReprotsID, ColumnsName, Kind, ColumnsSalaryID, Amount, ColumnsSalaryIDSub, ColumnsRoundNo, ColumnsCalc, ConstID
FROM            Salary_tala_master1401.Pay.GetRptColumns



INSERT INTO Pay.GetRptConstColumns(ConstID, ColumnsName, Alias, ColumnsCaption, TabelName, IsOutPut, SortType, SortOrder, GroupBy)
SELECT        ConstID, ColumnsName, Alias, ColumnsCaption, TabelName, IsOutPut, SortType, SortOrder, GroupBy
FROM            Salary_tala_master1401.Pay.GetRptConstColumns



INSERT INTO Pay.Interdicts(InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, OfficeCode, jobCode, grade, jobCity, InterdicType, EmployTypeID, InterdicStartDate, employDaytime, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, KargozinyNote_L1, KargozinyNote_L2, State, UserID, TotalYearsWork, InterdicEndDate, Comment, InterdicStartDateM, TaxCalculationType, insuranceID, ProjectID, StandardEmployAmount, ManegePercent, 
                         OfficeManegePercent, GroupID, PayehNo, GrpExpense,  SubFunctionID, SubInterdictID, LastInterdictID, AccCTopicCode3, GradeDate, HasRetard, InsuranceStartDate, InsuranceEndDate, jobsGroup, TaxMounth, 
                         TaxDays, LastUser, FirstUser, AidNo1, AidDate1, TypeOfContract, StandardClock, RetardActive)
SELECT        InterdictID, InterdictNo, InterdictDate, subcompanyCode, PersonelNo, OfficeCode, jobCode, grade, jobCity, InterdicType, EmployTypeID, InterdicStartDate, employDaytime, AccTopicCode, AccDetailCode, AccCTopicCode, 
                         AccCTopicCode2, KargozinyNote_L1, KargozinyNote_L2, State, UserID, TotalYearsWork, InterdicEndDate, Comment, InterdicStartDateM, TaxCalculationType, insuranceID, ProjectID, StandardEmployAmount, ManegePercent, 
                         OfficeManegePercent, GroupID, PayehNo,isnull( GrpExpense,0)GrpExpense,  isnull(SubFunctionID,0)SubFunctionID , isnull(SubInterdictID,0), LastInterdictID, AccCTopicCode3, GradeDate, HasRetard, InsuranceStartDate, InsuranceEndDate, jobsGroup, TaxMounth, 
                         TaxDays, LastUser, FirstUser, AidNo1, AidDate1, TypeOfContract, StandardClock, RetardActive
FROM            Salary_tala_master1401.Pay.Interdicts


INSERT INTO Pay.InterdictItems
(InterdictItemsID, InterdictID, SalaryID, Amount, FirstMounth, EndMounth, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ExpenseType, UserID, ItemNote_L1, ItemNote_L2, Firstdate, Enddate, JobScore)
SELECT        InterdictItemsID, InterdictID, SalaryID, Amount, FirstMounth, EndMounth, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2, ExpenseType, UserID, ItemNote_L1, ItemNote_L2, Firstdate, Enddate, JobScore
FROM            Salary_tala_master1401.Pay.InterdictItems


INSERT INTO Pay.jobs(jobCode, jobName, JobLocation, OrganPos, Organizational, GroupCode, JobDefinition, CreationDate, GradeID, RankID)
SELECT        jobCode, jobName, JobLocation, OrganPos, Organizational, GroupCode, JobDefinition, CreationDate, GradeID, RankID
FROM            Salary_tala_master1401.Pay.jobs


INSERT INTO Pay.jobsItems(jobCode, Descriptions, InfoKind)
SELECT         jobCode, Descriptions, InfoKind
FROM            Salary_tala_master1401.Pay.jobsItems



INSERT INTO Pay.jobsSalaryRanges(  jobCode, SalaryID, Amount)
SELECT        jobCode, SalaryID, Amount
FROM            Salary_tala_master1401.Pay.jobsSalaryRanges

INSERT INTO Pay.jobsTerms(jobCode, LicenceCode, StudyField, ExperienceYear, ExperienceMonth, Duration, MinPoints, MaxPoints, PercentExtra, JobLevel, TestCondition, Note)
SELECT        jobCode, LicenceCode, StudyField, ExperienceYear, ExperienceMonth, Duration, MinPoints, MaxPoints, PercentExtra, JobLevel, TestCondition, Note
FROM            Salary_tala_master1401.Pay.jobsTerms


--SET IDENTITY_INSERT Pay.Mission OFF
--INSERT INTO Pay.Mission(--MissionID,
--MissionNo, MissionDate, State, PersonelNo, MissionPlace, CompanyCode, MissionStartDate, MissionEndDate, MissionFunction, MissionTopic, TransPort, OtherTopic, MissionKind, AccTopicCode, AccDetailCode, 
--                         AccCTopicCode, AccCTopicCode2, AccCTopicCode3, DocNo, YearID)
--SELECT        ---MissionID,
--MissionNo, MissionDate, State, PersonelNo, MissionPlace, CompanyCode, MissionStartDate, MissionEndDate, MissionFunction, MissionTopic, TransPort, OtherTopic, MissionKind, AccTopicCode, AccDetailCode, 
--                         AccCTopicCode, AccCTopicCode2, AccCTopicCode3, DocNo, YearID
--FROM            Salary_tala_master1401.Pay.Mission
--SET IDENTITY_INSERT Pay.Mission ON


--INSERT INTO Pay.MissionInfo
--SELECT     *
--FROM            Salary_tala_master1401.Pay.MissionInfo


INSERT INTO Pay.PersonelAccounts( PersonelNo, AccountsType, BankCode_Pa, BranchInfo_Pa, AccBankType_Pa, BranchCode_Pa, AccountNumber_Pa, CreditCardNo_Pa)
SELECT        PersonelNo, AccountsType, BankCode_Pa, BranchInfo_Pa, AccBankType_Pa, BranchCode_Pa, AccountNumber_Pa, CreditCardNo_Pa
FROM            Salary_tala_master1401.Pay.PersonelAccounts


INSERT INTO Pay.PersonelArchives(ArchiveID, PersonelNo, Comment, FormInfoID)
SELECT        ArchiveID, PersonelNo, Comment, FormInfoID
FROM            Salary_tala_master1401.Pay.PersonelArchives

INSERT INTO Pay.PersonelSponsorship
(PersonelNo, Name, lastName, FatherName, IDNumber, NationalID, BirthDate, Kind, State, Note, Sex, MarriageID, StudyActive, kinship, JobType, InsuranceType, InsurancePercent, JobTitle, MaritalDate, DivorceDate, 
                         DeathDate, Degree, GraduationDate)
SELECT         PersonelNo, Name, lastName, FatherName, IDNumber, NationalID, BirthDate, Kind, State, Note, Sex, MarriageID, StudyActive, kinship, JobType, InsuranceType, InsurancePercent, JobTitle, MaritalDate, DivorceDate, 
                         DeathDate, Degree, GraduationDate
FROM            Salary_tala_master1401.Pay.PersonelSponsorship

delete Bsell_talachin_1393.Pay.PersonelTypeInfo
INSERT INTO Pay.PersonelTypeInfo( PersonelNo, FormType, FormInfoID)
SELECT        PersonelNo, FormType, max(FormInfoID)FormInfoID
FROM            Salary_tala_master1401.Pay.PersonelTypeInfo
group by PersonelNo ,FormType
order by PersonelNo ,FormType

 SET IDENTITY_INSERT Pay.Pony on ;  
INSERT INTO Pay.Pony(PonyID, PonyNo, PonyDate, PersonelNo, AdjustDate, FunctionYearly, Months, CurrentMonthsPay, UselessLeave, UselessLeavePay, AnnuityOldPay, Annuity, AnnuityPay, Tide, TidePay, RemainLoan, DebitCredit, Note, Tax, 
                         SalaryNet, SalaryNonNet, SalarySum, SalaryPureSum, PArchiveDate, PArchiveID, OrderDate, RealDate)
SELECT        PonyID, PonyNo, PonyDate, PersonelNo, AdjustDate, FunctionYearly, Months, CurrentMonthsPay, UselessLeave, UselessLeavePay, AnnuityOldPay, Annuity, AnnuityPay, Tide, TidePay, RemainLoan, DebitCredit, Note, Tax, 
                         SalaryNet, SalaryNonNet, SalarySum, SalaryPureSum, PArchiveDate, PArchiveID, OrderDate, RealDate
FROM            Salary_tala_master1401.Pay.Pony
SET IDENTITY_INSERT Pay.Pony off ;  

INSERT INTO Pay.PonyArchives( PonyID, PonyKind, ExtraCode, ExtraCaptin, ExtraAmount, Mounth, SumFunctionDay, Price)
SELECT         PonyID, PonyKind, ExtraCode, ExtraCaptin, ExtraAmount, Mounth, SumFunctionDay, Price
FROM            Salary_tala_master1401.Pay.PonyArchives

INSERT INTO Pay.PonyDebitCredits(  PonyID, PonyNote, Amount)
SELECT         PonyID, PonyNote, Amount
FROM            Salary_tala_master1401.Pay.PonyDebitCredits


INSERT INTO Pay.RecalClocks(  SalaryID, RecalClockName, StartStr, CountStr, StartFloatStr, CountFloatStr, ExcelFieldName, Kind, TableFieldName, ExcelFieldName2)
SELECT         SalaryID, RecalClockName, StartStr, CountStr, StartFloatStr, CountFloatStr, ExcelFieldName, Kind, TableFieldName, ExcelFieldName2
FROM            Salary_tala_master1401.Pay.RecalClocks

INSERT INTO Pay.SalaryRange(FormInfoID, SalaryID, Kind)
SELECT        FormInfoID, SalaryID, Kind
FROM            Salary_tala_master1401.Pay.SalaryRange

INSERT INTO Pay.ScanType(  ScanType, ScanTypeName)
SELECT        ScanType, ScanTypeName
FROM            Salary_tala_master1401.Pay.ScanType


INSERT INTO Pay.ScanInfo(ScanType, ScanInfoID, ScanInfoName)
SELECT        ScanType, ScanInfoID, ScanInfoName
FROM            Salary_tala_master1401.Pay.ScanInfo


INSERT INTO Pay.TaxInfo( YearID, Mounth, PayKind, Branch, PostDate, Bank, TaxCheakDate, TaxBranch, TaxAccountNum, TaxCheckSerial, PaymentsCasesDate, PaymentsCases, Penalties4NonSubmission, Penalties4NonPay, 
                         Penalties4NonSubmissionLast, Penalties4NonPayLast, SalarieLastMonth, SalarieBonusesLastMonth, TaxLastMonth, TaxDebtLastMonth, Paragraph)
SELECT        YearID, Mounth, PayKind, Branch, PostDate, Bank, TaxCheakDate, TaxBranch, TaxAccountNum, TaxCheckSerial, PaymentsCasesDate, PaymentsCases, Penalties4NonSubmission, Penalties4NonPay, 
                         Penalties4NonSubmissionLast, Penalties4NonPayLast, SalarieLastMonth, SalarieBonusesLastMonth, TaxLastMonth, TaxDebtLastMonth, Paragraph
FROM            Salary_tala_master1401.Pay.TaxInfo


INSERT INTO Pay.WageFormula( SalaryID, YearFrom, MounthFrom, YearTo, MounthTo, SQLCalc, WhereSQLCalc, Note, RunOrder)
SELECT        SalaryID, YearFrom, MounthFrom, YearTo, MounthTo, SQLCalc, WhereSQLCalc, Note, RunOrder
FROM            Salary_tala_master1401.Pay.WageFormula

INSERT INTO Pay.DecExtItems(DecExtItemID, DecExtID, SalaryID, DayQuntity, Amount, Rate)
SELECT        DecExtItemID, DecExtID, SalaryID, DayQuntity, Amount, Rate
FROM            Salary_tala_master1401.Pay.DecExtItems

INSERT INTO Pay.Educations( EducationCode, EducationName)
SELECT        EducationCode, EducationName
FROM            Salary_tala_master1401.Pay.Educations

--
INSERT INTO Pay.Taxs
SELECT        *
FROM            Pay.Taxs
--

INSERT INTO Pay.TaxsItems  
SELECT * 
FROM  Pay.TaxsItems  
--

INSERT INTO Pay.InsouranceTemp(insuranceID, PeopleExempt, InsouranceEmployer, FDaily)
SELECT        insuranceID, PeopleExempt, InsouranceEmployer, FDaily
FROM            Pay.InsouranceTemp
 
--
INSERT INTO Pay.FunctionSpecial(  ID, YearID, Year, Mounth, PersonelNo, FunctionDay, SickDay, FunctionTime, OverTime, WorkingHoliday, NightWork, FractionWorkTime, FractionWorkDay)
SELECT        ID, YearID, Year, Mounth, PersonelNo, FunctionDay, SickDay, FunctionTime, OverTime, WorkingHoliday, NightWork, FractionWorkTime, FractionWorkDay
FROM            Pay.FunctionSpecial

--
INSERT INTO Pay.FunctionSpecialControl(   YearID, ControlDate, PersonelNo, OfficeCode, ProjectID, CarCode, ActivityCode, ProcCode, FunctionKind, FunctionTime, FunAmount)
SELECT         YearID, ControlDate, PersonelNo, OfficeCode, ProjectID, CarCode, ActivityCode, ProcCode, FunctionKind, FunctionTime, FunAmount
FROM            Pay.FunctionSpecialControl



/*
 بروز رسانی بانک و گزارشات را دوباره  بطور کامل و بدون خطا اجرا کنید
*/

