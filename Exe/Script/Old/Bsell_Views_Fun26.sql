---26  تاريخ  1402/07/05  Pay Active
SET NOCOUNT ON 
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Fn_FunctionsHasCount') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.Fn_FunctionsHasCount
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Fn_FixedCalculated_95') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.Fn_FixedCalculated_95
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Fn_PersonelTypeInfo') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.Fn_PersonelTypeInfo
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Fn_GetSalaryRangePrice') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.Fn_GetSalaryRangePrice
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Fn_GetCOUNTFun') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.Fn_GetCOUNTFun
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Fn_S_CaclBonus') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.Fn_S_CaclBonus
GO

if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[SpTax_ListFiles95]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.SpTax_ListFiles95
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Tax_List&File95]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Tax_List&File95]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[Tax4Rpt95]') and xtype in (N'FN',N'IF',N'TF'))
drop function Pay.[Tax4Rpt95]
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.[TaxCheck95]') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.TaxCheck95
GO

UPDATE       Pay.FormTypes
SET                ShowMnuPlace = NULL
WHERE        (FormType = 94) AND (NOT (ShowMnuPlace IS NULL))
GO

if ((SELECT COUNT(FormType)FROM Pay.FormTypes WHERE (FormType =130 ))= 0) 
INSERT INTO Pay.FormTypes ([FormType],[FormCaption_L1],DisplayFormType,ShowMnuId,ShowMnuPlace,MnuRow)  VALUES 
                        (130,'ليست و ديسكت ماليات بر درآمد حقوق 95',4,3,'0,1,2,3,4',6)


GO
UPDATE Pay.FormTypes SET  ReportFileName1 = 'MakeDskTax95.rtm',    ReportCaption1 = 'چاپ ليست حقوق 95'
WHERE     (FormType = 130)AND (ReportFileName1 IS NULL OR ReportFileName1 = '')
GO
UPDATE Pay.FormTypes SET  ReportFileName2 = 'MakeDskTax95Sum.rtm', ReportCaption2 = 'چاپ خلاصه ليست 95'
WHERE     (FormType = 130)AND (ReportFileName2 IS NULL OR ReportFileName2 = '')
GO

if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =130)and(InfoID=11))= 0) 
begin
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,PrvInfoID)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 130, 11, 'ناخالص حقوق و دستمزد مستمر نقدی ماه جاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 2 FROM Pay.FormsInfo) , 130, 12, 'پرداخت های مستمر معوق که مالیاتی برای آنها محاسبه نشده است',0
	UNION ALL
	--SELECT (SELECT MAX(FormInfoID) + 3 FROM Pay.FormsInfo) , 130, 13, 'مسکن'  FurnitureTaxCode13
	--UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 4 FROM Pay.FormsInfo) , 130, 14, 'مبلغ کسر شده از حقوق کارمند بابت مسکن ماه جاری',0
	UNION ALL
	--SELECT (SELECT MAX(FormInfoID) + 5 FROM Pay.FormsInfo) , 130, 15, 'وسیله نقلیه'  VehicleTaxCode15
	--UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 6 FROM Pay.FormsInfo) , 130, 16, 'مبلغ کسر شده از حقوق کارمند بابت وسیله نقلیه ماه جاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 7 FROM Pay.FormsInfo) , 130, 17, 'پرداخت مزایای مستمر غیر نقدی ماه جاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 8 FROM Pay.FormsInfo) , 130, 18, 'هزینه های درمانی موضوع ماده 137 ق.م.م',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 9 FROM Pay.FormsInfo) , 130, 19, 'حق بیمه پرداختی موضوع ماده 137 ق.م.م.',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 10 FROM Pay.FormsInfo) , 130, 20, 'تسهیلات اعتباری مسکن از بانک ها )موضوع بند الف ماده 139 قانون برنامه سوم(',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 11 FROM Pay.FormsInfo) , 130, 21, 'سایر معافیت ها',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 12 FROM Pay.FormsInfo) , 130, 22, 'ناخالص اضافه کاری ماه جاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 13 FROM Pay.FormsInfo) , 130, 23, 'سایر پرداخت های غیر مستمر نقدی ماه جاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 14 FROM Pay.FormsInfo) , 130, 24, 'پاداش های موردی ماه جاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 15 FROM Pay.FormsInfo) , 130, 25, 'پرداخت های غیر مستمر نقدی معوقه ماه جاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 16 FROM Pay.FormsInfo) , 130, 26, ') کسر می شود: معافیت های غیر مستمر نقدی )شامل بند 6 ماده 91',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 17 FROM Pay.FormsInfo) , 130, 27, 'پرداخت مزایای غیر مستمر غیر نقدی ماه جاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 18 FROM Pay.FormsInfo) , 130, 28, 'عیدی و مزایای پایان سال',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 19 FROM Pay.FormsInfo) , 130, 29, 'بازخرید مرخصی و بازخرید سنوات',0
	--UNION ALL
	--SELECT (SELECT MAX(FormInfoID) + 20 FROM Pay.FormsInfo) , 130, 30, ') کسر می شود: معافیت )فقط برای بند 1 ماده ۳۴'
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 21 FROM Pay.FormsInfo) , 130, 31, 'معافیت مربوط به مناطق آزاد تجاری',0
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 22 FROM Pay.FormsInfo) , 130, 32, 'معافیت موضوع قانون اجتناب از اخذ مالیات مضاعف',0
	--UNION ALL
	--SELECT (SELECT MAX(FormInfoID) + 23 FROM Pay.FormsInfo) , 130, 33, 'مالیات متعلّقه حقوق و دستمزد مستمر نقدی، درآمدها و مزایای غیر نقدی، پرداختهای غیر مستمر نقدی و غیر نقدی،عیدی و مزایا، بازخرید مرخصی و سنوات ماه جاری'
	--UNION ALL
	--SELECT (SELECT MAX(FormInfoID) + 24 FROM Pay.FormsInfo) , 130, 34, 'جمع خالص مالیات متعلّقه ماه جاری'
end
GO
DELETE FROM Pay.FormsInfo  WHERE        (FormType = 130) AND (InfoID IN (13, 15, 30, 33, 34))

if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =131 ))= 0) 
INSERT INTO Pay.FormTypes ([FormType],[FormCaption_L1],DisplayFormType,ShowMnuId,ShowMnuPlace,MnuRow,TaxCodeShow)  VALUES 
                        (131,'نوع قرارداد',3,3,'0,1,2,3,4',6,1)

if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =131))= 0) 
begin
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 131, 1, 'تمام وقت',1
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 2 FROM Pay.FormsInfo) , 131, 2, 'پاره وقت',2
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 3 FROM Pay.FormsInfo) , 131, 3, 'ساعتی',3
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 4 FROM Pay.FormsInfo) , 131, 4, 'پیمانی',4
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 5 FROM Pay.FormsInfo) , 131, 5, 'موقت',5
END

if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =132 ))= 0) 
INSERT INTO Pay.FormTypes ([FormType],[FormCaption_L1],DisplayFormType,ShowMnuId,ShowMnuPlace,MnuRow,TaxCodeShow,PersonelTypeInfoRow)  VALUES 
                        (132,'مسکن',3,3,'0,1,2,3,4',6,1,10)

if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =132))= 0) 
begin
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 132, 1, 'ندارد',1
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 2 FROM Pay.FormsInfo) , 132, 2, 'با اثاثیه',2
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 3 FROM Pay.FormsInfo) , 132, 3, 'بدون اثاثیه',3
END

if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =133 ))= 0) 
INSERT INTO Pay.FormTypes ([FormType],[FormCaption_L1],DisplayFormType,ShowMnuId,ShowMnuPlace,MnuRow,TaxCodeShow,PersonelTypeInfoRow)  VALUES 
                        (133,'وسیله نقلیه',3,3,'0,1,2,3,4',6,1,10)

if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =133))= 0) 
begin
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 133, 1, 'ندارد',1
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 2 FROM Pay.FormsInfo) , 133, 2, 'با راننده',2
	UNION ALL
	SELECT (SELECT MAX(FormInfoID) + 3 FROM Pay.FormsInfo) , 133, 3, 'بدون راننده',3
END


if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =137 ))= 0) 
begin
INSERT INTO Pay.FormTypes
                         (FormType, FormCaption_L1, FormCaption_L2, DurationDayActive, DurationTimeActive, ExemptPersonActive, SalaryEffectKind, KargozinyEffectKind, RecalSalaryTypes, SalaryKind, CoefficientActive, AmountActive, 
                         Amount2Active, RecallFormTypes, UseEndMounthKind, AidInfoNo1Active, AidInfoDate1Active, AidInfo1Caption, AidInfoNo2Active, AidInfoDate2Active, AidInfo2Caption, TopicCodeKind, DetailCodeKind, CTopicCodeKind, 
                         CTopicCode2Kind, DisplayFormType, ReportFileName1, ReportFileName2, ReportFileName3, ReportFileName4, Note_L1, Note_L2, WordDocumentsActive, FunctionShow, RecalKindClock, CalCulateTypeActive, 
                         FormInfo4Function, ChangeAmountActive, FirstAmountActive, NoteActive, LimitMounthActive, ReportFooter, MaxDayTimeActive, ReportCaption1, ReportCaption2, ReportCaption3, ReportCaption4, MnuRow, ShowMnuId, 
                         ShowOperators, MuliplyInDayActive, CTopicCode3Kind, EarthProceedsActivate, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID, PrintDesignLevelID, FormRelatedLevelID, AccCodeLevelID, 
                         OtherCtrlLevelID, XlsLevelID, FinalStateEditLevelID, ConstantStateEditLevelID, CalcLevelID, SendLevelID, DecExtStateActive, AmountCaption, Amount2Caption, StandardDayCaption, StandardTimeCaption, ShowMnuPlace, 
                         PayMentShow, ProcName, EarthName, TaxCodeShow, WageCalcKindActive, FirstAmountName, PrefixInfoID, MasterFormType, ContactFormType, RepetitiveControl, ActiveYearID, PersonelTypeInfoRow, PrintAfterPost, 
                         InsertAccCode, WorkFlowID, RepetitiveControlInfoID)
SELECT       137 AS  FormType,'معافیت خاص بیمه' AS FormCaption_L1, FormCaption_L2, DurationDayActive, DurationTimeActive, ExemptPersonActive, SalaryEffectKind, KargozinyEffectKind, RecalSalaryTypes,10 as SalaryKind, CoefficientActive, AmountActive, 
                         Amount2Active, RecallFormTypes, UseEndMounthKind, AidInfoNo1Active, AidInfoDate1Active, AidInfo1Caption, AidInfoNo2Active, AidInfoDate2Active, AidInfo2Caption, TopicCodeKind, DetailCodeKind, CTopicCodeKind, 
                         CTopicCode2Kind, DisplayFormType, ReportFileName1, ReportFileName2, ReportFileName3, ReportFileName4, Note_L1, Note_L2, WordDocumentsActive, FunctionShow, RecalKindClock, CalCulateTypeActive, 
                         FormInfo4Function, ChangeAmountActive, FirstAmountActive, NoteActive, LimitMounthActive, ReportFooter, MaxDayTimeActive, ReportCaption1, ReportCaption2, ReportCaption3, ReportCaption4, MnuRow, ShowMnuId, 
                         ShowOperators, MuliplyInDayActive, CTopicCode3Kind, EarthProceedsActivate, ADDLevelID, EditLevelID, DeleteLevelID, ChangeStateLevelID, PrintLevelID, PrintDesignLevelID, FormRelatedLevelID, AccCodeLevelID, 
                         OtherCtrlLevelID, XlsLevelID, FinalStateEditLevelID, ConstantStateEditLevelID, CalcLevelID, SendLevelID, DecExtStateActive, AmountCaption, Amount2Caption, StandardDayCaption, StandardTimeCaption, ShowMnuPlace, 
                         PayMentShow, ProcName, EarthName, TaxCodeShow, WageCalcKindActive, FirstAmountName, PrefixInfoID, MasterFormType, ContactFormType, RepetitiveControl, ActiveYearID, PersonelTypeInfoRow, PrintAfterPost, 
                         InsertAccCode, WorkFlowID, RepetitiveControlInfoID
FROM            Pay.FormTypes AS FormTypes_1
WHERE        (FormType = 25)
end
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =137))< 1) 
begin
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =137)AND (InfoID = 1 ))=0) 
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 137, 1, 'معافیت 1 بیمه',1
end


if ((SELECT count(FormType)FROM Pay.FormTypes WHERE (FormType =75 ))= 0) 
INSERT INTO Pay.FormTypes ([FormType],[FormCaption_L1],DisplayFormType,ShowMnuId,ShowMnuPlace,MnuRow,TaxCodeShow,PersonelTypeInfoRow)  VALUES 
                        (75,'وضعیت کارمند',3,3,'0,1,2,3,4',6,1,10)

UPDATE Pay.FormTypes SET TaxCodeShow = 1 WHERE (FormType =75 ) and (TaxCodeShow=0)
UPDATE Pay.FormTypes SET TaxCodeShow = 1 WHERE (FormType = 1) AND (TaxCodeShow = 0)


if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =75))< 7) 
begin
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =75)AND (InfoID = 1 ))=0) 
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 1 FROM Pay.FormsInfo) , 75, 1, 'عادی',1
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =75)AND (InfoID = 2 ))=0) 
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 2 FROM Pay.FormsInfo) , 75, 2, 'جانباز',2
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =75)AND (InfoID = 3 ))=0) 
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 3 FROM Pay.FormsInfo) , 75, 3, 'فرزند شهید',3
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =75)AND (InfoID = 4 ))=0) 
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 4 FROM Pay.FormsInfo) , 75, 4, 'آزاده',4
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =75)AND (InfoID = 5 ))=0) 
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 5 FROM Pay.FormsInfo) , 75, 5, 'نیروهای مسلح)نظامی یا انتظامی(',5
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =75)AND (InfoID = 6 ))=0) 
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 6 FROM Pay.FormsInfo) , 75, 6, 'سایر مشمولین بند 14 ماده',6
if ((SELECT count(InfoID)FROM Pay.FormsInfo WHERE (FormType =75)AND (InfoID = 7 ))=0) 
	INSERT INTO Pay.FormsInfo (FormInfoID, FormType, InfoID, InfoName_L1,TaxCode)
	SELECT (SELECT MAX(FormInfoID) + 7 FROM Pay.FormsInfo) , 75, 7, 'اتباع خارجی مشمول قانون اجتناب از اخذ مالیات مضاعف',7
END

UPDATE       Pay.FormsInfo
SET               TaxCode= InfoID
WHERE        (FormType =75)AND (ISNULL(TaxCode,0)=0)


UPDATE       Pay.Interdicts
SET                TypeOfContract = (SELECT MIN(FormInfoID) FROM Pay.FormsInfo WHERE (FormType = 131) AND (InfoID = 1))
WHERE        (TypeOfContract IS NULL)


INSERT INTO Pay.PersonelTypeInfo
                         (PersonelNo, FormType, FormInfoID)
SELECT        derivedtbl_1.PersonelNo, derivedtbl_1.FormType, derivedtbl_1.FormInfoID
FROM            (SELECT        PersonelNo, 132 AS FormType,
                                                        (SELECT        FormInfoID
                                                           FROM            Pay.FormsInfo
                                                           WHERE        (FormType = 132) AND (InfoID = 1)) AS FormInfoID
                           FROM            Pay.PersonelInfo) AS derivedtbl_1 LEFT OUTER JOIN
                         Pay.PersonelTypeInfo AS PersonelTypeInfo_1 ON derivedtbl_1.PersonelNo = PersonelTypeInfo_1.PersonelNo AND derivedtbl_1.FormType = PersonelTypeInfo_1.FormType
WHERE        (PersonelTypeInfo_1.FormInfoID IS NULL)


INSERT INTO Pay.PersonelTypeInfo
                         (PersonelNo, FormType, FormInfoID)
SELECT        derivedtbl_1.PersonelNo, derivedtbl_1.FormType, derivedtbl_1.FormInfoID
FROM            (SELECT        PersonelNo, 133 AS FormType,
                                                        (SELECT        FormInfoID
                                                           FROM            Pay.FormsInfo
                                                           WHERE        (FormType = 133) AND (InfoID = 1)) AS FormInfoID
                           FROM            Pay.PersonelInfo) AS derivedtbl_1 LEFT OUTER JOIN
                         Pay.PersonelTypeInfo AS PersonelTypeInfo_1 ON derivedtbl_1.PersonelNo = PersonelTypeInfo_1.PersonelNo AND derivedtbl_1.FormType = PersonelTypeInfo_1.FormType
WHERE        (PersonelTypeInfo_1.FormInfoID IS NULL)



if (SELECT    ISNULL( COUNT(FormsInfo.FormType),0) AS Expr1
FROM            Pay.SalaryRange INNER JOIN
                         Pay.FormsInfo ON SalaryRange.FormInfoID = FormsInfo.FormInfoID
WHERE       FormsInfo.FormType = 130)=0
begin

INSERT INTO Pay.SalaryRange
                         (FormInfoID, SalaryID, Kind)
SELECT        NewSalaryRange.FormInfoID, NewSalaryRange.SalaryID, NewSalaryRange.Kind
FROM            (SELECT        FormsInfo_1.FormInfoID, derivedtbl_1.SalaryID, 0 AS Kind
                           FROM            (SELECT        SalaryRange_2.SalaryID, 
						   CASE WHEN FormsInfo.InfoID = 17 THEN 11 
						        WHEN FormsInfo.InfoID = 18 THEN 23 
						        WHEN FormsInfo.InfoID = 19 THEN 28 
								WHEN FormsInfo.InfoID = 21 THEN 26 
								WHEN FormsInfo.InfoID IN(17,18,19)  THEN 33 
								ELSE FormsInfo.InfoID END AS NewInfoID
                                                      FROM            Pay.SalaryRange AS SalaryRange_2 INNER JOIN
                                                                               Pay.FormsInfo ON SalaryRange_2.FormInfoID = FormsInfo.FormInfoID INNER JOIN
                                                                               Pay.FormsInfo AS FormsInfoFormsInfo ON SalaryRange_2.SalaryID = FormsInfoFormsInfo.FormInfoID
                                                      WHERE        (SalaryRange_2.Kind = 0) AND (FormsInfo.FormType = 94)) AS derivedtbl_1 INNER JOIN
                                                    Pay.FormsInfo AS FormsInfo_1 ON derivedtbl_1.NewInfoID = FormsInfo_1.InfoID
                           WHERE        (FormsInfo_1.FormType = 130)) AS NewSalaryRange LEFT OUTER JOIN
                         Pay.SalaryRange AS SalaryRange_1 ON NewSalaryRange.FormInfoID = SalaryRange_1.FormInfoID AND NewSalaryRange.SalaryID = SalaryRange_1.SalaryID AND 
                         NewSalaryRange.Kind = SalaryRange_1.Kind
WHERE        (SalaryRange_1.FormInfoID IS NULL)

end

--if (SELECT    ISNULL( COUNT(FormsInfo.FormType),0) AS Expr1
--FROM            SalaryRange INNER JOIN
--                         FormsInfo ON SalaryRange.FormInfoID = FormsInfo.FormInfoID
--WHERE       FormsInfo.FormType = 130 AND FormsInfo.InfoID = 33)=0
--begin
--INSERT INTO SalaryRange
--                         (FormInfoID, SalaryID, Kind)
--SELECT        NewSalaryRange.FormInfoID, NewSalaryRange.SalaryID, NewSalaryRange.Kind
--FROM            (SELECT        FormsInfo_1.FormInfoID, derivedtbl_1.SalaryID, 0 AS Kind
--                           FROM            (SELECT        SalaryRange_2.SalaryID, 
--						   CASE WHEN FormsInfo.InfoID IN(17,18,19)  THEN 33 
--								ELSE 0 END AS NewInfoID
--                                                      FROM            SalaryRange AS SalaryRange_2 INNER JOIN
--                                                                               FormsInfo ON SalaryRange_2.FormInfoID = FormsInfo.FormInfoID INNER JOIN
--                                                                               FormsInfo AS FormsInfoFormsInfo ON SalaryRange_2.SalaryID = FormsInfoFormsInfo.FormInfoID
--                                                      WHERE        (SalaryRange_2.Kind = 0) AND (FormsInfo.FormType = 94)) AS derivedtbl_1 INNER JOIN
--                                                    FormsInfo AS FormsInfo_1 ON derivedtbl_1.NewInfoID = FormsInfo_1.InfoID
--                           WHERE        (FormsInfo_1.FormType = 130)) AS NewSalaryRange LEFT OUTER JOIN
--                         SalaryRange AS SalaryRange_1 ON NewSalaryRange.FormInfoID = SalaryRange_1.FormInfoID AND NewSalaryRange.SalaryID = SalaryRange_1.SalaryID AND 
--                         NewSalaryRange.Kind = SalaryRange_1.Kind
--WHERE        (SalaryRange_1.FormInfoID IS NULL)
--END



UPDATE       Pay.PersonelInfo
SET                SpecialState =
                             (SELECT  top 1    FormInfoID
                                FROM            Pay.FormsInfo
                                WHERE        (FormType = 75) AND (InfoID = 1))
WHERE        (ISNULL(SpecialState, 0) = 0)
----------------------------------------------------------------------
----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.Fn_PersonelTypeInfo ( @FormType int )
RETURNS  table  AS 
Return  (
    SELECT        PersonelTypeInfo.PersonelNo, PersonelTypeInfo.FormInfoID, FormsInfo.TaxCode
FROM            Pay.PersonelTypeInfo INNER JOIN
                         Pay.FormsInfo ON PersonelTypeInfo.FormInfoID = FormsInfo.FormInfoID
WHERE        (PersonelTypeInfo.FormType = @FormType)  )
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
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.Fn_FunctionsHasCount ( @Mounth int  ,@YearIDFrom  int=1402,@YearIDTo  int=1402) /*تعداد ماه های کارکرد واقعی از ابتدای سال جاری*/ 
RETURNS  table  AS 
Return  (
--SELECT        PersonelInfo.PersonelNo,  Mounth, ISNULL(tbl_Functions.FunctionMountCount, 0) AS FunctionMountCount
--FROM            PersonelInfo LEFT OUTER JOIN
--                             (SELECT        PersonelNo,  Mounth, COUNT(*) AS FunctionMountCount
							     
--                                FROM            (SELECT        PersonelNo
--								      , MAX(CASE WHEN Functions.Mounth = @Mounth THEN Functions.Mounth WHEN @Mounth = 13 THEN 13 ELSE 0 END) AS Mounth
--                                                           FROM            Functions
--														   WHERE        (Mounth <= @Mounth)
--                                                           GROUP BY PersonelNo
--                                                           ) AS Karkard
--                                GROUP BY PersonelNo,  Mounth) AS tbl_Functions ON PersonelInfo.PersonelNo = tbl_Functions.PersonelNo


    SELECT PersonelInfo.PersonelNo, MAX(CASE WHEN Functions.Mounth = @Mounth THEN Functions.Mounth WHEN @Mounth = 13 THEN 13 ELSE 0 END) AS Mounth
	    , COUNT(Functions.Mounth) AS FunctionMountCount
FROM  Pay.PersonelInfo LEFT OUTER JOIN
      ( SELECT DISTINCT PersonelNo ,Mounth,YearID
           FROM Pay.Functions) AS Functions ON PersonelInfo.PersonelNo = Functions.PersonelNo
WHERE (Functions.Mounth <= @Mounth) and (Functions.YearID between @YearIDFrom and @YearIDTo)
GROUP BY PersonelInfo.PersonelNo 
 )
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
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.Fn_FixedCalculated_95 (@MounthFROM int =1, @MounthTo int =12, @ArchiveId int=0 ,@LabelIDFrom  int=0,@LabelIDTo  int=0 ,@YearIDFrom  int=1402,@YearIDTo  int=1402)  
RETURNS table AS  
return
(

SELECT         PersonelNO, SalaryID,Mounth,ArchiveId,ShowlistKind,bedbes,CalCulateKind,  Price ,LabelID
FROM            Pay.FixedCalculated
WHERE    (Mounth BETWEEN @MounthFROM AND @MounthTo )
And (LabelID between @LabelIDFrom  and @LabelIDTo   )
And (YearID between @YearIDFrom  and @YearIDTo   )

UNION ALL
SELECT     PersonelDecExt_1.PersonelNo,PersonelDecExt_1.FormInfoID ,FirstMounth ,@ArchiveId as ArchiveId,-1 AS ShowlistKind,-1 AS bedbes,-1 AS CalCulateKind , 
	  sum( case when FormsInfo_sanavat.FormType = 59 then  EmployerAmount else EmployeeAmount end ) AS sanavatAmount , @LabelIDFrom as LabelID
	 
FROM            Pay.PersonelDecExt PersonelDecExt_1 INNER JOIN
                         Pay.FormsInfo FormsInfo_sanavat ON PersonelDecExt_1.FormInfoID = FormsInfo_sanavat.FormInfoID 

 INNER JOIN
                             (SELECT DISTINCT PersonelNO, LabelID
                                FROM            Pay.FixedCalculated
                                WHERE   ( ( @MounthFROM = 13 )or( @MounthTo = 13 )or   (Mounth BETWEEN @MounthFROM AND @MounthTo ))
								And (YearID between @YearIDFrom  and @YearIDTo   )
                                And   (LabelID BETWEEN  @LabelIDFrom  and @LabelIDTo)) AS FixedCal ON PersonelDecExt_1.PersonelNo = FixedCal.PersonelNO

       WHERE   (LEN(EndDate) = 10) AND ( CAST(RIGHT(LEFT(EndDate,7),2) as INT)  BETWEEN  @MounthFROM  and @MounthTo)  AND 
				((FormsInfo_sanavat.FormType IN (59)) OR 
				(FormsInfo_sanavat.FormType IN (111) /*AND (FormsInfo_sanavat.InfoID > 10 )*/  )  )and 
	   	case when (@MounthTo = 12 and (select EidiDisplayedSeparatelyOnTaxList from Pay.config )=1 ) then 0 else 1 end =1
       Group by PersonelDecExt_1.PersonelNo,PersonelDecExt_1.FormInfoID,FirstMounth )
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------  ----------------------------------------------------------------------
--SET QUOTED_IDENTIFIER ON 
--GO
--SET ANSI_NULLS OFF 
--GO
--CREATE FUNCTION Fn_GetSalaryRangePrice (@salaryid int ,@SalaryEffectKind int , @price money ,@InfoID int )
--RETURNS money 
--begin
--  DECLARE @RangePrice money
--  SET @RangePrice=(CASE WHEN @salaryid IN
--      (SELECT     SalaryRange.SalaryID
--             FROM         FormsInfo INNER JOIN
--                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
--             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = @InfoID )) THEN  
--             CASE WHEN @SalaryEffectKind = 1 THEN @price ELSE - @price END
--             ELSE 0 END)

--RETURN(@RangePrice)
--end
--GO
--SET QUOTED_IDENTIFIER OFF 
--GO
--SET ANSI_NULLS ON 
--GO
----------------------------------------------------------------------
----------------------------------------------------------------------  
----------------------------------------------------------------------
----------------------------------------------------------------------  ----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.[Fn_GetCOUNTFun] (@Mounth int ,@PersonelNo int ,@YearIDFrom  int=1402,@YearIDTo  int=1402 )
RETURNS int 
begin
  DECLARE @COUNTFun int
  SET @COUNTFun=(SELECT   COUNT(*)   FROM   Functions
   WHERE     (Mounth = @Mounth ) AND (PersonelNo = @PersonelNo ) 
   And (YearID between @YearIDFrom  and @YearIDTo   ) )

RETURN(isnull(@COUNTFun,0) )
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------  
----------------------------------------------------------------------
----------------------------------------------------------------------  ----------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.Fn_S_CaclBonus (@Mounth int ,@FM84Amount2  money ,@Bonus  money , @DayQuntity int )
RETURNS money 
begin
  DECLARE @i money 
  DECLARE @Eid_ShowInList int 
  SELECT @Eid_ShowInList=Eid_E_Tax_IncludedInTheTaxList FROM Pay.config
  if @Eid_ShowInList<>1       RETURN(0)

  DECLARE @TaxWithExemptionsTimeSheets int 
  SELECT @TaxWithExemptionsTimeSheets=TaxWithExemptionsTimeSheets FROM Pay.config
  DECLARE @iBonus money 
  SET @iBonus=ISNULL(@Bonus,0) - CASE WHEN (@TaxWithExemptionsTimeSheets) = 1 THEN ROUND(@FM84Amount2 / 365 * @DayQuntity,0) ELSE ISNULL(@FM84Amount2,0) END

  SET @i = case when  @iBonus   > 0   then  --  عیدی داشته باشد
			   CASE WHEN  @iBonus> ISNULL(@FM84Amount2,0)  then	 ---  چک کردن مقدار معاف مالیات 		
					@iBonus  -   case when @Mounth = 13 then 0 else  ISNULL(@FM84Amount2,0) end
			   ELSE @iBonus END  ---  چک کردن مقدار معاف مالیات     
       else 0 --  عیدی ندارد
	    end   ---  
	   

   
  RETURN(@i)
end

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
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Pay.Tax4Rpt95   (  @MounthFROM int =1, @MounthTo int =12, @ArchiveId int=0 ,@LabelIDFrom  int=0,@LabelIDTo  int=0,@YearIDFrom  int=1402,@YearIDTo  int=1402)  
RETURNS  table  AS 
Return  (
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
SELECT     PersonelNO
,ISNULL(SUM(Column11 ),0) AS Column11,ISNULL(SUM(Column12 ),0) AS Column12--, FurnitureTaxCode13
,ISNULL(SUM(Column14 ),0) AS Column14  --- VehicleTaxCode15
,ISNULL(SUM(Column16 ),0) AS Column16,ISNULL(SUM(Column17 ),0) AS Column17,ISNULL(SUM(Column18 ),0) AS Column18
,ISNULL(SUM(Column19 ),0) AS Column19,ISNULL(SUM(Column20 ),0) AS Column20,ISNULL(SUM(Column21 ),0) AS Column21,ISNULL(SUM(Column22 ),0) AS Column22
,ISNULL(SUM(Column23 ),0) AS Column23,ISNULL(SUM(Column24 ),0) AS Column24,ISNULL(SUM(Column25 ),0) AS Column25,ISNULL(SUM(Column26 ),0) AS Column26
,ISNULL(SUM(Column27 ),0) AS Column27,ISNULL(SUM(Column28 ),0) AS Column28,ISNULL(SUM(Column29 ),0) AS Column29--,ISNULL(SUM(Column30 ),0) AS Column30
,ISNULL(SUM(Column31 ),0) AS Column31,ISNULL(SUM(Column32 ),0) AS Column32--,ISNULL(SUM(Column33 ),0) AS Column33,ISNULL(SUM(Column34 ),0) AS Column34
,ISNULL(SUM(ContainTax ),0) AS ContainTax ,SUM(SumWage) AS SumWage 

FROM(SELECT     FixedCalculated.PersonelNo
		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         Pay.FormsInfo INNER JOIN
                                   Pay.SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 11 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column11 
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         Pay.FormsInfo INNER JOIN
                                   Pay.SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 12 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column12 

,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         Pay.FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 14 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column14 


,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 16 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column16
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 17 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column17 
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 18 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column18
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 19 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column19 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 20 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column20 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 21 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column21 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 22 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column22 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 23 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column23 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 24 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column24 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 25 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column25 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 26 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column26 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 27 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column27 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 28 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column28 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 29 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column29 	
			 		  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 31 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column31 			  			 			  			 			 		  
,CASE WHEN salaryid IN
      (SELECT     SalaryRange.SalaryID
             FROM         FormsInfo INNER JOIN
                                   SalaryRange ON FormsInfo.FormInfoID = SalaryRange.FormInfoID
             WHERE     (FormsInfo.FormType = 130) AND (FormsInfo.InfoID = 32 )) THEN  
             CASE WHEN FormTypes_sEffectKind.SalaryEffectKind = 1 THEN Price ELSE - Price END
             ELSE 0 END AS Column32 	

--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,11  ) AS Column11
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,12  ) AS Column12

--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,14  ) AS Column14

--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,16  ) AS Column16
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,17  ) AS Column17
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,18  ) AS Column18
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,19  ) AS Column19
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,20  ) AS Column20
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,21  ) AS Column21
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,22  ) AS Column22
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,23  ) AS Column23
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,24  ) AS Column24
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,25  ) AS Column25
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,26  ) AS Column26
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,27  ) AS Column27
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,28  ) AS Column28
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,29  ) AS Column29

--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,31  ) AS Column31
--,Pay.Fn_GetSalaryRangePrice (SalaryID  ,FormTypes_sEffectKind.SalaryEffectKind  , Price  ,32  ) AS Column32

,( case when ( ShowlistKind=11 and bedbes=0 and CalCulateKind=12) then price else 0 end ) as ContainTax
,(case when ShowlistKind=1 and SalaryID not in (SELECT        FormsInfo.FormInfoID
FROM            Pay.FormsInfo INNER JOIN
                         Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType
WHERE        (FormTypes.SalaryKind IN (14,9)))  then price else 0 end ) as SumWage

FROM         Pay.FormTypes AS FormTypes_sEffectKind INNER JOIN
                      Pay.FormsInfo ON FormTypes_sEffectKind.FormType = FormsInfo.FormType INNER JOIN
                      Pay.Fn_FixedCalculated_95 (@MounthFROM , @MounthTo, @ArchiveId , @LabelIDFrom  , @LabelIDTo ,@YearIDFrom  ,@YearIDTo  )AS FixedCalculated ON FormsInfo.FormInfoID = FixedCalculated.SalaryID
 INNER JOIN
                      Pay.FinalArchiveWithPersonelNO ON FixedCalculated.Mounth = FinalArchiveWithPersonelNO.Mounth AND 
                      FixedCalculated.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO 
					  --AND FixedCalculated.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID 
                      
                        WHERE  (FixedCalculated.ArchiveID = @ArchiveId ) And (FixedCalculated.LabelID between @LabelIDFrom  and @LabelIDTo   )
						AND (FixedCalculated.Mounth Between  @MounthFROM AND  @MounthTo )
						And (YearID between @YearIDFrom  and @YearIDTo   )
						AND (FixedCalculated.SalaryID NOT IN (SELECT part FROM Pay.SplitString((SELECT HideSalaryID4ListSalary FROM Pay.Config),',')))
						) insourance
                        
                        
                        
GROUP BY PersonelNo
)

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
SET ANSI_NULLS OFF 
GO

CREATE FUNCTION Pay.[Tax_List&File95] (@Mounth int = 11,@PersonelNoFROM int=0,@PersonelNoTo int=9999999,
       @ShowListKind int=12,@ArchiveId int =0,@Year int=95,
       @YearMounth char(7) ='95/01',@InterdictType int=0,@bedbes int=2 ,@LabelIDFrom  int=0,@LabelIDTo  int=0
              
       )  
RETURNS table AS  
return
(
SELECT PR.PersonelNo,
       ISNULL(TR.Column11, 0) AS Column11, ISNULL(TR.Column12, 0) AS Column12, FU.TaxCode AS FurnitureTaxCode13,
       ISNULL(TR.Column14, 0) AS Column14, FV.TaxCode AS VehicleTaxCode15, ISNULL(TR.Column16, 0) AS Column16,
       ISNULL(TR.Column17, 0) AS Column17, ISNULL(TR.Column18, 0)+ISNULL(DC.Darmani4Tax18, 0)  AS Column18
	   , ISNULL(TR.Column19, 0)--+ISNULL(BimeTakmili.Price,0) 
--	   +ISNULL(ROUND(DC.Price, 0), 0) --New razi                قبلا همه در ستون 19 بود که قسمتی به ستون 18  انتقال یافت
	   +ISNULL(ROUND(DC.Pardakhti4Tax19, 0), 0) --New razi       
	   
	   AS Column19,
       ISNULL(TR.Column20, 0) AS Column20, ISNULL(TR.Column21, 0) AS Column21, ISNULL(TR.Column22, 0) AS Column22,
       ISNULL(TR.Column23, 0) AS Column23, ISNULL(TR.Column24, 0) + ISNULL(BU.Bonus2, 0) AS Column24,
       ISNULL(TR.Column25, 0) AS Column25, ISNULL(TR.Column26, 0) AS Column26, ISNULL(TR.Column27, 0) AS Column27,
       ISNULL(TR.Column28, 0) + ISNULL(BU.Bonus1, 0) AS Column28, 
	   ISNULL(TR.Column29, 0) + ISNULL(BU.EmployerAmount, 0) + ISNULL(CP.leavePrice, 0) AS Column29,
       ISNULL(ROUND(DC.Price, 0), 0)* 0 AS Column30
	   , ISNULL(TR.Column31, 0) AS Column31, ISNULL(TR.Column32, 0) AS Column32,
       CAST(CASE	WHEN TZ.InfoID = 1 
					THEN ISNULL(CTW.TaxValue, 0) + ISNULL(BU.BonusTax, 0)
					ELSE ISNULL(CTW.TaxValue, 0) + ISNULL(BU.BonusTax, 0) END AS money)+ ISNULL(IndTax, 0) AS Column33,
       CAST(CASE    WHEN TZ.InfoID = 1 
				    THEN ISNULL(CTW.TaxValue, 0) + ISNULL(BU.BonusTax, 0)
				    ELSE ISNULL(CTW.TaxValue, 0) + ISNULL(BU.BonusTax, 0)  END AS money)+ ISNULL(IndTax, 0) AS Column34,
       ROUND(CTW.CheckColumn20, 0) AS CheckColumn20,
       ISNULL(TR.Column11, 0) + ISNULL(TR.Column19, 0) + ISNULL(TR.Column22, 0) + ISNULL(TR.Column23, 0) +  ISNULL(TR.Column27, 0) + --New razi
       ISNULL(TR.Column24, 0) + ISNULL(TR.Column25, 0) - ISNULL(TR.Column21, 0) - ISNULL(TR.Column26, 0) -
       ISNULL(ROUND(DC.Price, 0), 0) AS Column32Chk,
       ROUND(DC.Price, 0) AS Price, ISNULL(CTW.TaxValue, 0) AS TaxValue, BU.Bonus, BU.BonusRate,
       BU.BonusTax, CT.ContainTaxValue, CT.TaxValue AS BeforeTaxValue,
       ISNULL(CASE	WHEN (SELECT TaxWithExemptionsTimeSheets FROM pay.config) = 1 THEN	round(FM84.Amount2 / 365 * BU.DayQuntity, 0)
					ELSE	FM84.Amount2 END,0) AS Made84,
       TZ.InfoID  AS TaxZoneInfoID, TZ.TaxCode AS TaxZoneTaxCode, SS.TaxCode AS SpecialStateTaxCode, SS.InfoName_L1 AS SpecialStateName,
       TC.TaxCode AS TypeOfContractTaxCode, TC.InfoName_L1 AS TypeOfContractName, FH.FunctionMountCount,

	 --  CASE WHEN  ---  چک کردن مقدار معاف مالیات 
  --     ISNULL(TR.ContainTax,0) + ISNULL(CASE	WHEN (SELECT Eid_E_Tax_IncludedInTheTaxList FROM config) = 1 
		--			THEN ISNULL(BU.Bonus1,0) - CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM pay.config) = 1 
		--			THEN ROUND(FormsInfo.Amount2 / 365 * DayQuntity,0) ELSE ISNULL(FormsInfo.Amount2,0) END ELSE  0 END, 0) 

		--> ISNULL(FM84.Amount2,0)  then	 ---  چک کردن مقدار معاف مالیات 		

  --     ISNULL(TR.ContainTax,0) + ISNULL(CASE	WHEN (SELECT Eid_E_Tax_IncludedInTheTaxList FROM config) = 1 
		--			THEN ISNULL(BU.Bonus1,0) - CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM pay.config) = 1 
		--			THEN ROUND(FormsInfo.Amount2 / 365 * DayQuntity,0) ELSE ISNULL(FormsInfo.Amount2,0) END ELSE  0 END, 0) 
		--- ISNULL(FM84.Amount2,0) 
  --     ELSE 0 END  ---  چک کردن مقدار معاف مالیات 
					
					
		--			AS ContainTax,

   --    ISNULL(TR.ContainTax,0)  + isnull(Bonus ,0)+ 
	  -- case when  Isnull(CASE	WHEN (SELECT Eid_E_Tax_IncludedInTheTaxList FROM config) = 1 THEN
			--					   isnull(BU.Bonus1,0) - CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM pay.config) = 1 THEN ROUND(FormsInfo.Amount2 / 365 * DayQuntity,0) ELSE isnull(FormsInfo.Amount2,0) END
			--					  ELSE  0 END  , 0)    
			--<>0   then  --  عیدی داشته باشد

			--   CASE WHEN  ---  چک کردن مقدار معاف مالیات 
			--		Isnull(CASE	WHEN (SELECT Eid_E_Tax_IncludedInTheTaxList FROM config) = 1 THEN
			--					   isnull(BU.Bonus1,0) - CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM pay.config) = 1 THEN ROUND(FormsInfo.Amount2 / 365 * DayQuntity,0) ELSE isnull(FormsInfo.Amount2,0) END
			--					  ELSE  0 END  , 0)
			--  				> ISNULL(FM84.Amount2,0)  then	 ---  چک کردن مقدار معاف مالیات 		
		
			--		Isnull(CASE	WHEN (SELECT Eid_E_Tax_IncludedInTheTaxList FROM config) = 1 THEN
			--					   isnull(BU.Bonus1,0) - CASE WHEN (SELECT TaxWithExemptionsTimeSheets FROM pay.config) = 1 THEN ROUND(FormsInfo.Amount2 / 365 * DayQuntity,0) ELSE isnull(FormsInfo.Amount2,0) END
			--					  ELSE  0 END  , 0)
			--  				- ISNULL(FM84.Amount2,0) 
			--   ELSE 0 END  ---  چک کردن مقدار معاف مالیات     
   --    else 0 --  عیدی ندارد
	  --  end   ---  
	   
	   
	  --  AS ContainTax,

		ISNULL(TR.ContainTax,0)  + Pay.Fn_S_CaclBonus(@Mounth , FM84.Amount2  ,Bonus ,DayQuntity )+ISNULL(Ind.IndependentContainTax ,0) ContainTax,

       TR.SumWage  + isnull(Bonus ,0)
	   +ISNULL(TR.Column29, 0) + ISNULL(BU.EmployerAmount, 0) + ISNULL(CP.leavePrice, 0)
	    as SumWage

  FROM (SELECT DISTINCT Interdicts.PersonelNo, PersonelInfo.TaxZone, PersonelInfo.SpecialState,  
						max(Interdicts.TaxCalculationType) AS TaxCalculationType, max(Interdicts.TypeOfContract) AS TypeOfContract
        FROM Pay.Interdicts
             INNER JOIN Pay.PersonelInfo ON Interdicts.PersonelNo = PersonelInfo.PersonelNo
        where ((@YearMounth between left(InterdicStartDate, 7) and left(InterdicEndDate, 7)) or (@Mounth = 13))
        group by Interdicts.PersonelNo, PersonelInfo.TaxZone, PersonelInfo.SpecialState
		 ) as PR
 INNER JOIN Pay.FormsInfo ON PR.TaxCalculationType = FormsInfo.FormInfoID
 INNER JOIN
 (  --SELECT FormInfoID, PrvInfoID, InfoID, FormType, Coefficient, Amount2     FROM Pay.FormsInfo    WHERE (FormType = 37) AND (InfoID = 1) and (Coefficient = 0)
 SELECT     FormInfoID PrvInfoID ,RevenuePrice Amount2
FROM            Pay.TaxsItems INNER JOIN
                         Pay.Taxs ON Pay.TaxsItems.TaxID = Pay.Taxs.TaxID
WHERE        (Pay.TaxsItems.RowNo = 1) AND (Pay.TaxsItems.Cofficient = 0)
 ) AS FM84       ON FormsInfo.FormInfoID = FM84.PrvInfoID
  INNER JOIN Pay.FormsInfo AS TZ	ON PR.TaxZone = TZ.FormInfoID        --TAX ZONE 
  LEFT  JOIN Pay.FormsInfo AS SS    ON PR.SpecialState = SS.FormInfoID   --SpecialState
  LEFT  JOIN Pay.FormsInfo AS TC    ON PR.TypeOfContract = TC.FormInfoID --TypeOfContract 
  LEFT  JOIN Pay.Bonus4Use(@Mounth) AS BU    ON PR.PersonelNo = BU.PersonelNo
  LEFT  JOIN Pay.DecreaseContainTax(@Mounth, @PersonelNoFrom, @PersonelNoTo, @ShowListKind, @Year) AS DC ON PR.PersonelNo = DC.PersonelNo
  LEFT  JOIN Pay.Tax4Rpt95(@Mounth, @Mounth, @ArchiveId ,@LabelIDFrom  ,@LabelIDTo ,left(@YearMounth,4)  ,left(@YearMounth,4)   ) AS TR   ON PR.PersonelNo = TR.PersonelNO
  LEFT  JOIN (SELECT PersonelNo, SUM(leavePrice) AS leavePrice
             FROM pay.PersonelDecExt PersonelDecExt_1
                 INNER JOIN pay.FormsInfo FormsInfo_leave ON PersonelDecExt_1.FormInfoID = FormsInfo_leave.FormInfoID
             WHERE (LEFT(EndDate, 7) = @YearMounth) AND ((FormsInfo_leave.FormType IN (59)))
             Group by PersonelNo
			 ) AS CP ON PR.PersonelNo = CP.PersonelNo
LEFT  JOIN (
SELECT     PersonelNo,SUM(EmployeeAmount) as IndependentContainTax ,sum(PaymentLoan) AS IndTax	  
FROM            pay.PersonelDecExt PersonelDecExt_1 INNER JOIN
                         pay.FormsInfo FormsInfo_sanavat ON PersonelDecExt_1.FormInfoID = FormsInfo_sanavat.FormInfoID 
       WHERE     (LEFT(EndDate, 7) = @YearMounth)  AND 
				(	(FormsInfo_sanavat.FormType IN (111) and (FormsInfo_sanavat.infoid <10)or((select ActRewardInlistSalary from pay.config)=2)  )  )and 
	   	case when ((select ActRewardInlistSalary from pay.config )in(1,2) ) then 1 else 0 end =1
		AND(PersonelNo BETWEEN @PersonelNoFrom AND @PersonelNoTo ) 
  
       Group by PersonelNo
			 ) AS Ind ON PR.PersonelNo = Ind.PersonelNo

----------------------------------------------------
--LEFT  JOIN (
--SELECT     PersonelNo,SUM(EmployeeAmount) as Price
--FROM            PersonelDecExt PE INNER JOIN
--                         FormsInfo F_Takmili ON PE.FormInfoID = F_Takmili.FormInfoID 
--       WHERE ( @Year between  PE.StartYear  AND PE.EndYear)  AND (  @Mounth BETWEEN  PE.FirstMounth  AND PE.EndMounth)  
--	   AND	( F_Takmili.FormType IN (25) AND (F_Takmili.infoid = 2)   )
--		AND(PersonelNo BETWEEN @PersonelNoFrom AND @PersonelNoTo ) 
  
--       Group by PersonelNo
--			 ) AS BimeTakmili ON PR.PersonelNo = BimeTakmili.PersonelNo


----------------------------------------------------
------RE
 LEFT  JOIN (
		SELECT PersonelNO,sum(CheckColumn20) AS CheckColumn20, sum(Column32) AS Column32,sum(TaxValue) AS TaxValue
    FROM (
		SELECT Interdicts.PersonelNO, sum(PriceP - PriceN) as CheckColumn20, 0 AS Column32, 0 AS TaxValue
		FROM Pay.Interdicts
			inner join (SELECT FixedCalculated.PersonelNO, D.FormInfoID, 
							   case when (FixedCalculated.Mounth <= @Mounth) then  isnull(FixedCalculated.Price,0) else 0 end PriceP,
							   case when (FixedCalculated.Mounth <  @Mounth) then  isnull(FixedCalculated.Price,0) else 0 end PriceN,  
							   CalCulateKind,   ShowListKind, ArchiveID, Mounth
						FROM	pay.FixedCalculated
							INNER JOIN (SELECT SalaryRange.FormInfoID, SalaryRange.SalaryID
										FROM pay.SalaryRange
											INNER JOIN pay.FormsInfo  ON SalaryRange.SalaryID =FormsInfo.FormInfoID
										group by SalaryRange.FormInfoID,SalaryRange.SalaryID
										) AS D    ON FixedCalculated.SalaryID =  D.SalaryID
										where (FixedCalculated.Years = @Year) 
										AND (FixedCalculated.Mounth <= @Mounth) 
										AND (FixedCalculated.LabelID BETWEEN  @LabelIDFrom  and @LabelIDTo)
										--AND (FixedCalculated.SalaryID NOT IN (SELECT part FROM Pay.SplitString((SELECT HideSalaryID4ListSalary FROM Config),',')))
                                        AND NOT exists( Select part From Pay.SplitString((SELECT HideSalaryID4ListSalary FROM Pay.Config),',') where part = FixedCalculated.SalaryID)


						) as E  on Pay.Interdicts.TaxCalculationType =  E.FormInfoID and Pay.Interdicts.PersonelNo = E.PersonelNO
						inner join pay.FinalArchiveWithPersonelNO    on E.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID  
							and E.Mounth     = FinalArchiveWithPersonelNO.Mounth
							and @Year     = FinalArchiveWithPersonelNO.yearid
							and E.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO
		WHERE (LEFT(Pay.Interdicts.InterdicStartDate, 7) <=  @YearMounth)AND (LEFT(Pay.Interdicts.InterdicEndDate, 7) >= @YearMounth)
								AND (Pay.Interdicts.PersonelNO between @PersonelNoFROM and @PersonelNoTo)
		GROUP BY Pay.Interdicts.PersonelNo
		
	   UNION ALL

		select PersonelNo, -sum(price) as CheckColumn20, 0, 0
		from pay.DecreaseContainTax(@Mounth, @PersonelNoFROM, @PersonelNoTo, @ShowListKind, @Year)
		group by PersonelNo

		UNION ALL

		SELECT	FixedCalculated.PersonelNO, 0 as CheckColumn20,  
				sum(CASE WHEN CalCulateKind = 12 and FixedCalculated.Mounth <= @Mounth THEN isnull(Price,0) ELSE  0 END) - 
				sum(CASE WHEN CalCulateKind = 12 and FixedCalculated.Mounth <  @Mounth THEN isnull(Price,0) ELSE  0 END) AS Column32,
				sum(CASE WHEN CalCulateKind = 11 and FixedCalculated.Mounth <= @Mounth THEN isnull(Price,0) ELSE  0 END) -
				sum(CASE WHEN CalCulateKind = 11 and FixedCalculated.Mounth <  @Mounth THEN isnull(Price,0) ELSE  0 END) AS TaxValue

		FROM pay.FixedCalculated
			inner join pay.FinalArchiveWithPersonelNO
		on FixedCalculated.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID
			and FixedCalculated.Mounth = FinalArchiveWithPersonelNO.Mounth
			and FixedCalculated.YearID = FinalArchiveWithPersonelNO.YearID
			and FinalArchiveWithPersonelNO.PersonelNO = FixedCalculated.PersonelNO

		WHERE (ShowListKind = 11)
			AND (FixedCalculated.Mounth < = @Mounth)
			AND (FixedCalculated.PersonelNO between @PersonelNoFROM and  @PersonelNoTo)
			AND (Years = @Year)AND (FixedCalculated.YearID = @Year)
			AND (FixedCalculated.LabelID BETWEEN  @LabelIDFrom  and @LabelIDTo)

		group by FixedCalculated.PersonelNO

		) RE
	GROUP BY PersonelNO
---------------------------------------------RE                   
	) AS CTW ON PR.PersonelNo = CTW.PersonelNo

 LEFT  JOIN Pay.ContainTaxBefore(@Mounth, @PersonelNoFrom, @PersonelNoTo, @Year) AS CT  ON (PR.PersonelNo = CT.PersonelNO)
   AND (PR.TaxCalculationType =  CT.TaxCalculationType)
 INNER JOIN Pay.Fn_FunctionsHasCount(@Mounth,@Year,@Year)  AS FH ON PR.PersonelNo = FH.PersonelNo --Fn_FunctionsHasCount_1
 LEFT  JOIN Pay.Fn_PersonelTypeInfo(132)       AS FU ON PR.PersonelNo = FU.PersonelNo --Fn_PersonelTypeInfo_Furniture
 LEFT  JOIN Pay.Fn_PersonelTypeInfo(133)       AS FV ON PR.PersonelNo = FV.PersonelNo --Fn_PersonelTypeInfo_Vehicle

 WHERE (PR.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo)
   AND (FH.Mounth = @Mounth) 


)
  

  

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
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE Pay.SpTax_ListFiles95
 @mounth int,
 @PersonelNoFrom int,
 @PersonelNoTo int,
 @ShowListKind int,
 @ArchiveID int,
 @YearID int,
 @YearMounth CHAR(7),
 @InterdictType int,
 @bedbes int,
 @PersonelStateFROM int,
 @PersonelStateTo int,
 @EmployTypeIDFROM int,
 @EmployTypeIDTo int,
 @OfficeCode varchar(8000),
 @ProjectIDFROM int ,
 @ProjectIDTo int ,
 @PayKind int,
 @TaxCalculationTypes varchar(1000),
 @LabelIDFrom  int=0,@LabelIDTo  int=0
 
AS
BEGIN

SET NOCOUNT ON;
declare @SqlTxt varchar(8000)
DECLARE @SqlView VARCHAR(8000)
SET @SqlView = '';



set @SqlTxt='
SELECT    [Tax_List&File95_1].PersonelNo, PersonelInfo.NationalID,
	PersonelInfo.name_L1, PersonelInfo.lastName_L1, PersonelInfo.fatherName_L1, FormsInfoEmployTypeID.TaxCode AS KindEmployTypeTax,
	PersonelInfo.PostalCode, Interdicts.TotalYearsWork, 
	FormsInfo_LicenceCode.TaxCode AS LicenceTax,Interdicts.InsuranceEndDate AS finishEmployDate,PersonelInfo.Email,
	FormsInfo_OfficeCode.TaxCode AS OfficeTax, FormsInfo_TaxCalculationType.TaxCode AS TaxCalculationTypeTax, 
	FormsInfo_NationalityCode.TaxCode AS NationalityTax, FormsInfo_NationalityCode.InfoName_L1 AS NationalityName,FormsInfo_NationalityCode.InfoID AS NationalityInfoID ,
	InsuranceCONSTinfo.TaxCode AS InsuranceTax, PersonelInfo.InsuranceNumber 
	,[Tax_List&File95_1].Column11 AS Column11,[Tax_List&File95_1].Column12 AS Column12
	,[Tax_List&File95_1].FurnitureTaxCode13	,[Tax_List&File95_1].Column14 AS Column14
    ,[Tax_List&File95_1].VehicleTaxCode15,[Tax_List&File95_1].Column16 AS Column16,[Tax_List&File95_1].Column17 AS Column17,[Tax_List&File95_1].Column18 AS Column18
    ,[Tax_List&File95_1].Column19 AS Column19,[Tax_List&File95_1].Column20 AS Column20,[Tax_List&File95_1].Column21 AS Column21,[Tax_List&File95_1].Column22 AS Column22
    ,[Tax_List&File95_1].Column23 AS Column23,[Tax_List&File95_1].Column24 AS Column24,[Tax_List&File95_1].Column25 AS Column25,[Tax_List&File95_1].Column26 AS Column26
    ,[Tax_List&File95_1].Column27 AS Column27,[Tax_List&File95_1].Column28 AS Column28,[Tax_List&File95_1].Column29 AS Column29,[Tax_List&File95_1].Column30 AS Column30
    ,[Tax_List&File95_1].Column31 AS Column31,[Tax_List&File95_1].Column32 AS Column32,[Tax_List&File95_1].Column33 AS Column33,[Tax_List&File95_1].Column34 AS Column34
	,CheckColumn20
	,FormsInfo_InsuranceCONSTinfo.InfoID AS InsuranceKind ,
	FormsInfo_InsuranceCONSTinfo.InfoName_L1 AS InsuranceInfoName
	,Price ,TaxValue ,Bonus ,BonusRate ,BonusTax , ContainTaxValue, BeforeTaxValue ,Column32Chk               
	, CASE WHEN  CheckColumn20>0 THEN   Column32Chk-CheckColumn20 ELSE 0 END AS  CotrolCheck
	,TaxZoneTaxCode, isnull([Tax_List&File95_1].Column20 ,0) + isnull([Tax_List&File95_1].Column28 ,0) AS Column2028
	, FormsInfo_TaxCalculationType.InfoName_L1 AS TaxName, FormsInfo_LicenceCode.InfoName_L1 AS LicenceName, 
	FormsInfo_OfficeCode.InfoName_L1 AS OfficeName, FormsInfoEmployTypeID.InfoName_L1 AS EmployName, 
	FormsInfoPersonelState.InfoName_L1 AS StateName, InsuranceCONSTinfo.insurancename, PersonelInfo.Mobile , PersonelInfo.address_L1 
	,SpecialStateTaxCode,SpecialStateName,TypeOfContractTaxCode,TypeOfContractName,PersonelInfo.employDate, Fitful.ID AS InsertOrEdit
	,FunctionMountCount  , FormsInfo_jobCity.TaxCode AS  jobCityTaxCode, FormsInfo_jobCity.TaxCode AS jobCityTax, FormsInfo_jobCode.InfoName_L1 AS jobName 
	, FormsInfo_jobCity.InfoName_L1 AS jobCityName ,[Tax_List&File95_1].ContainTax ,[Tax_List&File95_1].SumWage 
	,ISNULL([Tax_List&File95_1].SumWage,0) +[Tax_List&File95_1].Column28
	+[Tax_List&File95_1].Column29 AS SumWage_28_29

FROM Pay.FormsInfo AS FormsInfo_OfficeCode RIGHT OUTER JOIN
	Pay.FormsInfo AS FormsInfoEmployTypeID LEFT OUTER JOIN
	Pay.FormsInfo AS FormsInfo_LicenceCode RIGHT OUTER JOIN
	Pay.FormsInfo AS FormsInfoPersonelState RIGHT OUTER JOIN
	Pay.PersonelInfo LEFT OUTER JOIN
	Pay.[Tax_List&File95]( '+str(@mounth)+' , '+str(@PersonelNoFrom)+', '+str(@PersonelNoTo)+' ,	'+str(@ShowListKind)+' , '+str(@ArchiveID)+', '+str(@YearID)+'
	, '''+@YearMounth+''' , '+str(@InterdictType)+' , '+str(@bedbes)+'  ,'+str(@LabelIDFrom)+','+str(@LabelIDTo)+' ) 
	AS [Tax_List&File95_1] LEFT OUTER JOIN
	Pay.FormsInfo AS FormsInfo_InsuranceCONSTinfo LEFT OUTER JOIN
	Pay.InsuranceCONSTinfo INNER JOIN
	Pay.Interdicts ON InsuranceCONSTinfo.insuranceNo = Interdicts.insuranceID ON FormsInfo_InsuranceCONSTinfo.FormInfoID = InsuranceCONSTinfo.FormInfoID ON 
	[Tax_List&File95_1].PersonelNo = Interdicts.PersonelNo ON PersonelInfo.PersonelNo = [Tax_List&File95_1].PersonelNo ON 
	FormsInfoPersonelState.FormInfoID = PersonelInfo.PersonelState ON FormsInfo_LicenceCode.FormInfoID = PersonelInfo.LicenceCode RIGHT OUTER JOIN
	Pay.FormsInfo AS FormsInfo_NationalityCode ON PersonelInfo.NationalityCode = FormsInfo_NationalityCode.FormInfoID LEFT OUTER JOIN
	Pay.FormsInfo AS FormsInfo_TaxCalculationType ON Interdicts.TaxCalculationType = FormsInfo_TaxCalculationType.FormInfoID ON 
	FormsInfoEmployTypeID.FormInfoID = Interdicts.EmployTypeID RIGHT OUTER JOIN
	Pay.FormsInfo AS FormsInfo_jobCode ON Interdicts.jobCode = FormsInfo_jobCode.FormInfoID ON FormsInfo_OfficeCode.FormInfoID = Interdicts.OfficeCode
	CROSS JOIN Fitful
	 LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_jobCity ON Interdicts.jobCity = FormsInfo_jobCity.FormInfoID
 INNER JOIN
                             (SELECT DISTINCT PersonelNO, LabelID
                                FROM            Pay.FixedCalculated
                                WHERE    ( ( '+str(@mounth)+' = 13 )or (Mounth =  '+str(@mounth)+' )  )
								And  (LabelID BETWEEN  '+str(@LabelIDFrom)+'   and '+str(@LabelIDTo)+' )And  (YearID = '+str(@YearID)+' ) ) AS FixedCal ON PersonelInfo.PersonelNo = FixedCal.PersonelNO


WHERE (FormsInfoPersonelState.InfoID BETWEEN '+str(@PersonelStateFrom)+' AND '+str(@PersonelStateTo)+' ) 
 AND (InterdicType = 0 )
 AND (FormsInfoEmployTypeID.InfoID BETWEEN '+str(@EmployTypeIDFrom)+' AND '+str(@EmployTypeIDTo)+' )

 AND (LEFT(Interdicts.InterdicStartDate, 7) <=''' +@YearMounth + ''' ) AND	(LEFT(Interdicts.InterdicEndDate, 7) >=''' +@YearMounth + ''')


 AND ( ( Interdicts.ProjectID BETWEEN '+str(@ProjectIDFrom)+' AND '+str(@ProjectIDTo)+') OR Interdicts.ProjectID = 0 ) 
 and  exists( Select part From Pay.SplitString('''+@OfficeCode+''','','') where part = Interdicts.OfficeCode)
 and  exists( Select part From Pay.SplitString('''+@TaxCalculationTypes+''','','') where part = Interdicts.TaxCalculationType)
 
'


EXEC('IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N''Pay.[view_Tax_ListFiles95]'') AND OBJECTPROPERTY(id, N''IsView'') = 1)'
                 +' DROP view Pay.[view_Tax_ListFiles95]')

--ATE EW LowerCase
SET @SqlView =  'create view Pay.[view_Tax_ListFiles95]  AS ' 
            + CHAR(13) + 'SELECT ''جمع:‏''AS [ ],SUM(ContainTax) AS ContainTax ,SUM(SumWage) AS SumWage ,SUM(SumWage_28_29) AS SumWage_28_29 , SUM(Column11) AS Column11,SUM(Column12) AS Column12,SUM(Column14) AS Column14
,SUM(Column16) AS Column16,SUM(Column17) AS Column17,SUM(Column18) AS Column18
,SUM(Column19) AS Column19,SUM(Column20) AS Column20,SUM(Column21) AS Column21,SUM(Column22) AS Column22
,SUM(Column23) AS Column23,SUM(Column24) AS Column24,SUM(Column25) AS Column25,SUM(Column26) AS Column26
,SUM(Column27) AS Column27,SUM(Column28) AS Column28,SUM(Column29) AS Column29,SUM(Column30) AS Column30
,SUM(Column31) AS Column31,SUM(Column32) AS Column32,SUM(Column33) AS Column33,SUM(CheckColumn20) AS CheckColumn20,SUM(Column32Chk) AS Column32Chk
,SUM(Column34) AS Column34 ,'+str(@PayKind)+'*SUM(Column34) AS Column340 ,SUM(CotrolCheck) AS CotrolCheck  FROM (' 
               + CHAR(13) + @SqlTxt +') AS Temp'
			    

set @SqlTxt=@SqlTxt+' ORDER BY [Tax_List&File95_1].PersonelNo'

--print @SqlTxt
Exec(@SqlTxt)

--PRINT (@SqlView)
EXEC (@SqlView)

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
SET ANSI_NULLS OFF 
GO
CREATE  PROCEDURE Pay.[TaxCheck95] 
	(@Mounth int = 11,   @Year int=89,   @YearMounth Varchar(7) =[89/01])  
 AS  
begin
--SET NOCOUNT ON 
(
SELECT     SalaryRange.SalaryID, FormsInfo_3.infoname_l1 , 
		FormsInfo_3.infoname_l1 + '  در ديسكت مالياتي در ستونهاي ' + str(min (FormsInfo.infoID)) 
		+ '  و   '+ ltrim(str(max (FormsInfo.infoID)))  + '    تكراري است' AS ErrorTxt,1 AS ErrorNoumber 
	FROM         SalaryRange INNER JOIN
                      FormsInfo ON SalaryRange.FormInfoID = FormsInfo.FormInfoID inner join 
                      FormsInfo AS FormsInfo_3 ON SalaryRange.SalaryID = FormsInfo_3.FormInfoID 
WHERE     (FormsInfo.FormType = 130)   AND FormsInfo.infoID<>21
GROUP BY SalaryRange.SalaryID , FormsInfo_3.infoname_l1 
HAVING      (COUNT(*) <> 1)
union all

SELECT    salaryid_Fiexed , FormsInfo_2.infoname_l1 ,
 FormsInfo_2.infoname_l1  + '--  براي  -- '+ FormsInfo_1.infoname_l1 +  '-- با ديسكت مالياتي مطابقت ندارد '  AS ErrorTxt ,1 AS ErrorNoumber 
FROM (
SELECT DISTINCT PersonelInfo.TaxCalculationType, FixedCalculated.SalaryID AS salaryid_Fiexed, 
			CASE WHEN FixedCalculated.salaryid IN
				(SELECT     SalaryRange.SalaryID
					FROM         SalaryRange INNER JOIN
							FormsInfo ON SalaryRange.FormInfoID = FormsInfo.FormInfoID
					WHERE     (FormsInfo.FormType = 130) 
					AND FormsInfo.infoID IN (11, 22, 19, 23, 24, 25)
					) THEN FixedCalculated.salaryid ELSE 0 END AS Type130Tax, 
			CASE WHEN FixedCalculated.salaryid IN
				(   SELECT     SalaryRange.SalaryID
					FROM         SalaryRange INNER JOIN
							FormsInfo ON SalaryRange.FormInfoID = FormsInfo.FormInfoID
					WHERE     (FormsInfo.FormType = 130) 
					AND NOT FormsInfo.infoID IN (11, 22, 19, 23, 24, 25)
					) 
                      THEN FixedCalculated.salaryid ELSE 0 END AS Type130_WithOutTax, 
                      isnull(SalaryRange.SalaryID,0) AS Type21Tax
FROM         FormTypes AS FormTypes_sEffectKind INNER JOIN
                      FormsInfo ON FormTypes_sEffectKind.FormType = FormsInfo.FormType INNER JOIN
                      FixedCalculated ON FormsInfo.FormInfoID = FixedCalculated.SalaryID INNER JOIN
                      FinalArchiveWithPersonelNO ON FixedCalculated.Mounth = FinalArchiveWithPersonelNO.Mounth AND 
                      FixedCalculated.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO AND 
                      FixedCalculated.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID INNER JOIN
                          (SELECT     Interdicts.PersonelNo, MAX(Interdicts.TaxCalculationType) AS TaxCalculationType
                             FROM         Interdicts INNER JOIN
                                                   PersonelInfo AS PersonelInfo_1 ON Interdicts.PersonelNo = PersonelInfo_1.PersonelNo
                             WHERE     ( @YearMounth  BETWEEN LEFT(Interdicts.InterdicStartDate, 7) AND LEFT(Interdicts.InterdicEndDate, 7))
                             GROUP BY Interdicts.PersonelNo) AS PersonelInfo ON PersonelInfo.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN
                      SalaryRange ON PersonelInfo.TaxCalculationType = SalaryRange.FormInfoID AND FixedCalculated.SalaryID = SalaryRange.SalaryID
WHERE     (FixedCalculated.Mounth = @Mounth ) AND  (FixedCalculated.years = @Year ) AND
			(FormTypes_sEffectKind.SalaryEffectKind = 1)) AS Erorlist INNER JOIN
                      FormsInfo AS FormsInfo_1 ON Erorlist.TaxCalculationType = FormsInfo_1.FormInfoID INNER JOIN
                      FormsInfo AS FormsInfo_2 ON Erorlist.salaryid_Fiexed = FormsInfo_2.FormInfoID
Where type130tax-Type130_WithOutTax<>type21tax 

Union all

SELECT    salaryid_Fiexed , FormsInfo_2.infoname_l1 ,
 FormsInfo_2.infoname_l1 + '  -- در ديسكت مالياتي تنظيم نشده است  '  AS ErrorTxt ,0 AS ErrorNoumber 
FROM (
SELECT DISTINCT PersonelInfo.TaxCalculationType, FixedCalculated.SalaryID AS salaryid_Fiexed, 
			CASE WHEN FixedCalculated.salaryid IN
				(SELECT     SalaryRange.SalaryID
					FROM         SalaryRange INNER JOIN
							FormsInfo ON SalaryRange.FormInfoID = FormsInfo.FormInfoID
					WHERE     (FormsInfo.FormType = 130) 
					AND FormsInfo.infoID IN (11, 22, 19, 23, 24, 25)
					) 
					THEN FixedCalculated.salaryid ELSE 0 END AS Type130Tax, 
			CASE WHEN FixedCalculated.salaryid IN
				(   SELECT     SalaryRange.SalaryID
					FROM         SalaryRange INNER JOIN
							FormsInfo ON SalaryRange.FormInfoID = FormsInfo.FormInfoID
					WHERE     (FormsInfo.FormType = 130) 
					AND NOT FormsInfo.infoID IN (11, 22, 19, 23, 24, 25)
					) 
                      THEN FixedCalculated.salaryid ELSE 0 END AS Type130_WithOutTax, 
                      isnull(SalaryRange.SalaryID,0) AS Type21Tax
FROM         FormTypes AS FormTypes_sEffectKind INNER JOIN
                      FormsInfo ON FormTypes_sEffectKind.FormType = FormsInfo.FormType INNER JOIN
                      FixedCalculated ON FormsInfo.FormInfoID = FixedCalculated.SalaryID INNER JOIN
                      FinalArchiveWithPersonelNO ON FixedCalculated.Mounth = FinalArchiveWithPersonelNO.Mounth AND 
                      FixedCalculated.PersonelNO = FinalArchiveWithPersonelNO.PersonelNO AND 
                      FixedCalculated.ArchiveID = FinalArchiveWithPersonelNO.ArchiveID INNER JOIN
                          (SELECT     Interdicts.PersonelNo, MAX(Interdicts.TaxCalculationType) AS TaxCalculationType
                             FROM         Interdicts INNER JOIN
                                                   PersonelInfo AS PersonelInfo_1 ON Interdicts.PersonelNo = PersonelInfo_1.PersonelNo
                             WHERE     (@YearMounth  BETWEEN LEFT(Interdicts.InterdicStartDate, 7) AND LEFT(Interdicts.InterdicEndDate, 7))
                             GROUP BY Interdicts.PersonelNo) AS PersonelInfo ON PersonelInfo.PersonelNo = FixedCalculated.PersonelNO LEFT OUTER JOIN
                      SalaryRange ON PersonelInfo.TaxCalculationType = SalaryRange.FormInfoID AND FixedCalculated.SalaryID = SalaryRange.SalaryID
WHERE      (FixedCalculated.Mounth = @Mounth ) 
AND  (FixedCalculated.years = @Year ) 
AND (FormTypes_sEffectKind.SalaryEffectKind = 1)) AS Erorlist INNER JOIN
                      FormsInfo AS FormsInfo_1 ON Erorlist.TaxCalculationType = FormsInfo_1.FormInfoID INNER JOIN
                      FormsInfo AS FormsInfo_2 ON Erorlist.salaryid_Fiexed = FormsInfo_2.FormInfoID
Where type130tax <>salaryid_Fiexed 
)
end
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------
----------------------------------------------------------------------