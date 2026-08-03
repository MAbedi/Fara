---4  تاريخ  1401/02/22  Pay Active

SET NOCOUNT ON   
if exists (select * from sysobjects where id = object_id(N'Pay.BonusForUpDateYearlyGov') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.BonusForUpDateYearlyGov
GO
if exists (select * from sysobjects where id = object_id(N'Pay.CalculateBonusSalaryYearlyGov') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.CalculateBonusSalaryYearlyGov
GO
if exists (select * from sysobjects where id = object_id(N'Pay.ContainSalaryAnnuityGov') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.ContainSalaryAnnuityGov

GO
CREATE FUNCTION Pay.ContainSalaryAnnuityGov
	 (@YearMounth varchar(7) ='81/01' ,@salarykind int=1,@salarykindTo int=1 ,
	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@InfoID int , @4ContainSalaryAnnuity int = 0 ,
	 @ConstAmount  money = 16000000 	 	 ,@Spouse  money = 4000000 	 	 ,@Child  money = 1500000)  
RETURNS  table  AS 
return  (
SELECT        I.PersonelNo, F_sex.InfoID AS کدجنسيت, F_sex.InfoName_L1 AS جنسيت, F_marriage.InfoID AS کدتاهل, F_marriage.InfoName_L1 AS تاهل, F_childNumber.InfoID AS تعدادفرزند, CASE WHEN (F_sex.InfoID = 1) AND (F_marriage.InfoID = 2)
                          THEN @Spouse ELSE 0 END AS [بايت همسر], CASE WHEN (F_sex.InfoID = 1) THEN @Child * F_childNumber.InfoID ELSE 0 END AS [بايت فرزند], CASE WHEN (F_sex.InfoID = 1) AND (F_marriage.InfoID = 2) 
                         THEN @Spouse ELSE 0 END + CASE WHEN (F_sex.InfoID = 1) THEN @Child * F_childNumber.InfoID ELSE 0 END + @ConstAmount AS Amount
FROM            Pay.InterdictForUse(@YearMounth, 1, 1, @PersonelNoFROM, @PersonelNoTo, 0) AS I INNER JOIN
                         Pay.PersonelInfo AS P ON P.PersonelNo = I.PersonelNo INNER JOIN
                         Pay.FormsInfo AS F_sex ON F_sex.FormInfoID = P.sex INNER JOIN
                         Pay.FormsInfo AS F_marriage ON F_marriage.FormInfoID = P.marriage INNER JOIN
                         Pay.FormsInfo AS F_childNumber ON F_childNumber.FormInfoID = P.childNumber
GROUP BY I.PersonelNo, F_sex.InfoID, F_sex.InfoName_L1, F_marriage.InfoName_L1, F_marriage.InfoID, F_childNumber.InfoName_L1, F_childNumber.InfoID
)

GO

CREATE FUNCTION Pay.CalculateBonusSalaryYearlyGov
	 (@YearMounth varchar(7) ='1398/01', @salarykind int=1, @salarykindTo int=1,@PersonelNoFROM int=0 ,@PersonelNoTo int=9999999 ,
	  @FormInfoID int, @InfoID int, @Mounth int, @4ContainSalaryAnnuity int=0, @InterTypeFrom int=0, @InterTypeTo int=9999999
	  ,@ConstAmount  money = 16000000  ,@Spouse  money = 4000000  ,@Child  money = 1500000)  
RETURNS  table   AS 
return  (
SELECT  PD.PersonelNo, PD.DayQuntity,CSA.amount, FI.InfoID,0 AS TaxID,	 FI.StandardDays,  FI.StandardTimes, FI.Amount AS ConstAmount , 0  AS ContainTaxValue  ,
	 0 as CountMounth ,0 AS PaymentTaxValue , 0 as MTAX ,0 as DecEmployeeAmount ,0 as DecPaymentLoan,
	 ROUND(   (((PD.DayQuntity / FI.Amount) * FI.StandardDays)  + 	((PD.DayQuntity / FI.Amount) * FI.StandardTimes)) * CSA.amount  ,0)	AS EmployeeAmount

FROM	
	(SELECT     PersonelNo,FormInfoID , SUM(DayQuntity) AS DayQuntity  ,sum(NumberOfMonth) as NumberOfMonth
	FROM         Pay.PersonelDecExt
	WHERE     (FormInfoID = @FormInfoID)
	GROUP BY PersonelNo , FormInfoID ) PD 
	    INNER JOIN Pay.ContainSalaryAnnuityGov(@YearMounth, @salarykind, @salarykindTo, @PersonelNoFrom, @PersonelNoTo, 1 ,@4ContainSalaryAnnuity,@ConstAmount  
	 	 ,@Spouse 
	 	 ,@Child  ) CSA 
					ON PD.PersonelNo = CSA.PersonelNo 
		CROSS JOIN (SELECT     *
                    FROM         pay.formsinfo
                    WHERE     formtype = 47 AND infoid =@InfoID) FI
		LEFT OUTER JOIN  Pay.BounsHours BH
					on PD.PersonelNo=BH.PersonelNo

WHERE	(PD.FormInfoID = @FormInfoID  ))  
----------------------------------------------------------------------
----------------------------------------------------------------------
GO

CREATE FUNCTION Pay.BonusForUpDateYearlyGov
	 (@YearMounth varchar(7) ='81/01' ,@salarykind int=1 ,@salarykindTo int=1 ,	 @PersonelNoFROM int=0,@PersonelNoTo int=9999999,@FormInfoID int,@InfoID int
     ,@OfficeCodeFROM int=0,@OfficeCodeTo int=9999999 ,@Mounth int, @4ContainSalaryAnnuity int = 0 ,@InterTypeFrom int=0,@InterTypeTo int=9999999
	 ,@ConstAmount  money = 16000000 ,@Spouse  money = 4000000 ,@Child  money = 1500000)  
RETURNS  table  AS 
return  (
SELECT     PersonelDecExt.DecExtID,PersonelDecExt.PersonelNo,PersonelDecExt.DayQuntity,
                      ROUND(CalculateBonusSalary.EmployeeAmount / CalculateBonusSalary.DayQuntity * PersonelDecExt.DayQuntity,0) AS CBonusPrice,
--                      ROUND(CalculateBonusSalary.TaxValue / CalculateBonusSalary.DayQuntity * PersonelDecExt.DayQuntity,0) AS CTax,
                      0 AS CTax,
                      CalculateBonusSalary.DayQuntity AS SumDayQuntity,PersonelDecExt.PaymentLoan,PersonelDecExt.EmployeeAmount,
                      PersonelDecExt.EndDate
FROM         Pay.PersonelDecExt INNER JOIN
                      Pay.CalculateBonusSalaryYearlyGov(@YearMounth,@salarykind,@salarykindTo,@PersonelNoFrom,@PersonelNoTo,@FormInfoID,@InfoID ,@Mounth
					        ,@4ContainSalaryAnnuity,@InterTypeFrom ,@InterTypeTo ,@ConstAmount  	 	 ,@Spouse  	 	 ,@Child) CalculateBonusSalary ON 
                      PersonelDecExt.PersonelNo = CalculateBonusSalary.PersonelNo LEFT OUTER JOIN
                      Pay.FormsInfo ON PersonelDecExt.OfficeCode = FormsInfo.FormInfoID
WHERE     (PersonelDecExt.FormInfoID = @FormInfoID) 
AND (FormsInfo.InfoID BETWEEN @OfficeCodeFROM AND @OfficeCodeTo)
)
