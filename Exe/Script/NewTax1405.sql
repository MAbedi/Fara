/*
برای تنظیم مالیات حقوق در سیستم ویندوز 
1- از جدول Pay.forminfo  یک جدول بنام Pay.forminfo_Tax_1404  در همان دیتابیس Save As  کنید و اطمینان حاصل کنید که همه دیتاهای جدول Pay.forminfo در آن وجود دارد .
2- از ویو Pay.WageKinds یک ویو جدید با نام Pay.WageKinds_Tax_1404  در همان دیتابیس save as  شود .
3- در ویو Pay.WageKinds همه مقادیر 'C' as TaxGroupName  به 'A' as TaxGroupName  تغییر داده شوند .
4- محاسبات مالیات بازنگری و و در صورت نیاز بر اساس A,B,C  مرتب شوند .
*/

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Pay.FormsInfo_Tax_1404') AND type = 'U')
BEGIN
   SELECT    *
   INTO          Pay.FormsInfo_Tax_1404
   FROM        Pay.FormsInfo
   /*
   SELECT count(*) from  Pay.FormsInfo_Tax_1404
   SELECT count(*) from   Pay.FormsInfo
   */

END


GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.WageKinds_Tax_1404') and OBJECTPROPERTY(id,N'IsView') = 1)
	DROP VIEW Pay.WageKinds_Tax_1404
GO
CREATE VIEW Pay.WageKinds_Tax_1404 AS 
	SELECT        0 AS WageKind,'ندارد' AS WageKindName , '' as TaxGroupName 
	UNION
	SELECT        1 AS WageKind,'حقوق و مزایای مستمر نفدی' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        2 AS WageKind,'حقوق و مزایای مستمر نفدی معوق' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        3 AS WageKind,'نحوه استفاده از مسکن(درنوع حقوق استفاده نشود)' AS WageKindName , 'A' as TaxGroupName  
	UNION
	SELECT        4 AS WageKind,'مبلغ کسر شده از حقوق بابت مسکن' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        5 AS WageKind,'نحوه استفاده از اتومبیل(درنوع حقوق استفاده نشود)' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        6 AS WageKind,'مبلغ کسر شده از حقوق بابت اتومبیل' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        7 AS WageKind,'قیمت تمام شده سایر مزایای مستمر غیرنقدی' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        8 AS WageKind,'حقوق و مزایای مستمر غیرنقدی معوق' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        9 AS WageKind,'حق الزحمه ، حق مشاوره ، حق حضور ، حق نظارت ، حق تالیف ، حق فنی ، پاداش شورای حل اختلاف' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        10 AS WageKind,'قراردادهای پژوهشی' AS WageKindName, 'D' as TaxGroupName 
	UNION
	SELECT        11 AS WageKind,'اضافه کاری' AS WageKindName , 'C' as TaxGroupName 
	UNION
	SELECT        12 AS WageKind,'حق التدریس/حق التحقیق/حق پزوهش' AS WageKindName , 'C' as TaxGroupName 
	UNION
	SELECT        13 AS WageKind,'حق کشیک' AS WageKindName , 'C' as TaxGroupName 
	UNION
	SELECT        14 AS WageKind,'رفاهی و انگیزشی و بهره وری' AS WageKindName , 'C' as TaxGroupName 
	UNION
	SELECT        15 AS WageKind,'حق السعی(به استثنای مزد،حقوق،پاداش)‏' AS WageKindName , 'C' as TaxGroupName 
	UNION
	SELECT        16 AS WageKind,'هزینه سفر' AS WageKindName , '' as TaxGroupName 
	UNION
	SELECT        17 AS WageKind,'فوق العاده مسافرت ( ماموریت)‏' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        18 AS WageKind,'کارانه' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        19 AS WageKind,'پاداش' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        20 AS WageKind,'پاداش آخر سال' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        21 AS WageKind,'عیدی سالانه' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        22 AS WageKind,'پاداش پایان خدمت' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        23 AS WageKind,'خسارت اخراج' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        24 AS WageKind,'بازخرید خدمت' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        25 AS WageKind,'حق سنوات' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        26 AS WageKind,'حقوق ایام مرخصی استفاده نشده' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        27 AS WageKind,'سایر حقوق و مزایای غیرمستمر نقدی' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        28 AS WageKind,'حقوق و مزایای غیرمستمر نقدی معوق' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        29 AS WageKind,'قیمت تمام شده مزایای غیرمستمر غیرنقدی' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        30 AS WageKind,'مزایای غیرمستمر غیرنقدی معوق' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        50 AS WageKind,'حق تاهل' AS WageKindName, 'C' as TaxGroupName 
GO

Alter VIEW Pay.WageKinds AS 
	SELECT        0 AS WageKind,'ندارد' AS WageKindName , '' as TaxGroupName 
	UNION
	SELECT        1 AS WageKind,'حقوق و مزایای مستمر نفدی' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        2 AS WageKind,'حقوق و مزایای مستمر نفدی معوق' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        3 AS WageKind,'نحوه استفاده از مسکن(درنوع حقوق استفاده نشود)' AS WageKindName , 'A' as TaxGroupName  
	UNION
	SELECT        4 AS WageKind,'مبلغ کسر شده از حقوق بابت مسکن' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        5 AS WageKind,'نحوه استفاده از اتومبیل(درنوع حقوق استفاده نشود)' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        6 AS WageKind,'مبلغ کسر شده از حقوق بابت اتومبیل' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        7 AS WageKind,'قیمت تمام شده سایر مزایای مستمر غیرنقدی' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        8 AS WageKind,'حقوق و مزایای مستمر غیرنقدی معوق' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        9 AS WageKind,'حق الزحمه ، حق مشاوره ، حق حضور ، حق نظارت ، حق تالیف ، حق فنی ، پاداش شورای حل اختلاف' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        10 AS WageKind,'قراردادهای پژوهشی' AS WageKindName, 'D' as TaxGroupName 
	UNION
	SELECT        11 AS WageKind,'اضافه کاری' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        12 AS WageKind,'حق التدریس/حق التحقیق/حق پزوهش' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        13 AS WageKind,'حق کشیک' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        14 AS WageKind,'رفاهی و انگیزشی و بهره وری' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        15 AS WageKind,'حق السعی(به استثنای مزد،حقوق،پاداش)‏' AS WageKindName , 'A' as TaxGroupName 
	UNION
	SELECT        16 AS WageKind,'هزینه سفر' AS WageKindName , '' as TaxGroupName 
	UNION
	SELECT        17 AS WageKind,'فوق العاده مسافرت ( ماموریت)‏' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        18 AS WageKind,'کارانه' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        19 AS WageKind,'پاداش' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        20 AS WageKind,'پاداش آخر سال' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        21 AS WageKind,'عیدی سالانه' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        22 AS WageKind,'پاداش پایان خدمت' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        23 AS WageKind,'خسارت اخراج' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        24 AS WageKind,'بازخرید خدمت' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        25 AS WageKind,'حق سنوات' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        26 AS WageKind,'حقوق ایام مرخصی استفاده نشده' AS WageKindName, '' as TaxGroupName 
	UNION
	SELECT        27 AS WageKind,'سایر حقوق و مزایای غیرمستمر نقدی' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        28 AS WageKind,'حقوق و مزایای غیرمستمر نقدی معوق' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        29 AS WageKind,'قیمت تمام شده مزایای غیرمستمر غیرنقدی' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        30 AS WageKind,'مزایای غیرمستمر غیرنقدی معوق' AS WageKindName, 'A' as TaxGroupName 
	UNION
	SELECT        50 AS WageKind,'حق تاهل' AS WageKindName, 'A' as TaxGroupName 



GO
ALTER PROCEDURE [Pay].[SALARY_TAX_CALCULATED_SP]
(
	@Mounth int =01,
	@yearid int = 1404 , -- Actually this is years and its differnt by FinancialYearID 
	@YearMounth varchar(7) ='1404/01',
	@InterdictType int=0,
	@PersonelNoFROM int=0,
	@PersonelNoTo int=999999999,
	@bedbes int=2,
	@ShowListKind int=3 ,
	@FestivalCalc  tinyint=1
)
AS
BEGIN
    SET NOCOUNT ON;

    ;WITH Eydi_Dependate_Reward_FreeTax as 
(

			SELECT	PD.PersonelNo, 
					sum(pd.DayQuntity) Sum_DayQuntity,
				SUM(case 
						when fo.wagekind IN ( 1,2,3,5,7,8,29,30,9,18,19,20,21,27,28 ,11,4,6,12,13,14,15,25,50 ) then  (
								case when pd.EndYear *100+ pd.EndMounth  >= @YearID * 100 + @Mounth then @YearID * 100 +@Mounth  else pd.EndYear *100+ pd.EndMounth  end 
								-
								case when pd.StartYear *100+ pd.FirstMounth  <= @YearID * 100 + 1 then @YearID *100 +1  else pd.StartYear *100+ pd.FirstMounth end  + 1
							) * EmployeeAmount 
							+  CASE WHEN fo.FormType in (59) and LEFT(ISNULL(PD.EndDate,''),7) <=@YearMounth  THEN EmployeeAmount ELSE 0 END 
						when fo.wagekind IN ( -1/*4,6*/ ) then  - (
								case when  pd.EndYear *100+ pd.EndMounth  >= @YearID * 100 + @Mounth then @YearID * 100 +@Mounth  else pd.EndYear *100+ pd.EndMounth end 
								-
								case when pd.StartYear *100+ pd.FirstMounth  <= @YearID * 100 + 1 then @YearID *100 +1  else pd.StartYear *100+ pd.FirstMounth end  + 1
							) * EmployeeAmount
						else 0 
						end ) A,
				0 B,
				SUM(case when fo.wagekind IN ( -1/*12,13,14,15,50*/ ) then (
								case when pd.EndYear *100+ pd.EndMounth  >= @YearID * 100 + @Mounth then @YearID * 100 +@Mounth  else pd.EndYear *100+ pd.EndMounth end 
								-
								case when pd.StartYear *100+ pd.FirstMounth  <= @YearID * 100 + 1 then @YearID *100 +1  else pd.StartYear *100+ pd.FirstMounth end  + 1
							) * EmployeeAmount else 0 end  ) C,
				SUM(case when fo.wagekind IN ( 10 ) then (
								case when pd.EndYear *100+ pd.EndMounth  >= @YearID * 100 + @Mounth then @YearID * 100 +@Mounth  else pd.EndYear *100+ pd.EndMounth end 
								-
								case when pd.StartYear *100+ pd.FirstMounth  <= @YearID * 100 + 1 then @YearID *100 +1  else pd.StartYear *100+ pd.FirstMounth end  + 1
							) * EmployeeAmount else 0 end  ) D,
				SUM(case when fo.wagekind IN ( 7,8,29,30 ) then (
								case when pd.EndYear *100+ pd.EndMounth  >= @YearID * 100 + @Mounth then @YearID * 100 +@Mounth  else pd.EndYear *100+ pd.EndMounth end 
								-
								case when pd.StartYear *100+ pd.FirstMounth  <= @YearID * 100 + 1 then @YearID *100 +1  else pd.StartYear *100+ pd.FirstMounth end  + 1
							) * EmployeeAmount else 0 end  ) NoneCash,
				sum((
								case when pd.EndYear *100+ pd.EndMounth  >= @YearID * 100 + @Mounth then @YearID * 100 +@Mounth  else pd.EndYear *100+ pd.EndMounth end 
								-
								case when pd.StartYear *100+ pd.FirstMounth  <= @YearID * 100 + 1 then @YearID *100 +1  else pd.StartYear *100+ pd.FirstMounth end  + 1
							) * isnull(pd.PaymentLoan,0)) as BounesTax	,	
				TaxCalculationType ,
				sum(case when fo.FormType in (25) then (
								case when pd.EndYear *100+ pd.EndMounth  >= @YearID * 100 + @Mounth then @YearID * 100 +@Mounth  else pd.EndYear *100+ pd.EndMounth end 
								-
								case when pd.StartYear *100+ pd.FirstMounth  <= @YearID * 100 + 1 then @YearID *100 +1  else pd.StartYear *100+ pd.FirstMounth end  + 1
							) * isnull(EmployeeAmount,0) else 0 end ) as AID_INSOURANCE , 
				sum(case when fo.FormType in (59) and fo.InfoID=1 and LEFT(ISNULL(PD.EndDate,''),7) <=@YearMounth  then isnull(EmployeeAmount,0) else 0 end ) as Reward, 
				sum(case when fo.FormType in (59) and fo.InfoID=1 and LEFT(ISNULL(PD.EndDate,''),7) <=@YearMounth  then isnull(PD.PaymentLoan,0) else 0 end ) as RewardTax, 
				sum(case when fo.FormType in (59) and fo.InfoID=1 and LEFT(ISNULL(PD.EndDate,''),7) <=@YearMounth  then isnull(PD.DayQuntity,1) else 0 end ) as  DayQuntity	
			FROM      Pay.PersonelDecExt PD INNER JOIN
                      Pay.FormsInfo FO ON PD.FormInfoID = FO.FormInfoID INNER JOIN
                      Pay.FormTypes T ON FO.FormType = T.FormType 
					  inner  join  (
									SELECT       interdictid, OfficeCode, jobCode, InterdictDate, SubCompanyCode, PersonelNo, TaxCalculationType,
											     EmployTypeID,Smonth, EMonth, YearID,
												 ROW_NUMBER() OVER (partition by PersonelNo Order by startmonth desc ,interdictid desc) AS RowNumber
									FROM            Pay.Interdicts_v  
									where Years=@YearID
									AND (PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)
									) IV on IV.PersonelNo=PD.PersonelNo and iv.RowNumber = 1  
			WHERE  (
					(
						pd.StartYear * 100 + pd.FirstMounth <=  @YearID*100+ @Mounth 
						AND (pd.EndYear *100+ pd.EndMounth between @YearID *100 +1 and  pd.EndYear * 100 + pd.ENDMounth )
				    )
					OR 
					PD.YearID = @YearID AND @yearid BETWEEN PD.StartYear AND PD.EndYear AND  LEFT(ISNULL(PD.EndDate,''),7) <=@YearMounth
				   ) 
				   AND (PD.PersonelNo BETWEEN  @PersonelNoFROM AND @PersonelNoTo)
				   AND t.FormType  in (25,59,111) 
			GROUP BY  PD.PersonelNo,TaxCalculationType
), 	 
	ContainTax as 
	( -- containTax start 
		-- for Info About wagekind : Select * from pay.wagekind 
		SELECT	iv.SubCompanyCode ,
				FD.PersonelNo, 
				fd.Years,
				IV.TaxCalculationType ,
				SUM(case 
						when fo.wagekind IN ( 1,2,3,5,7,8,29,30,9,18,19,20,21,27,28 ,11,4,6,12,13,14,15,25,50 ) then  FD.PRICE 
						when fo.wagekind IN ( -1/*4,6*/ ) then  - FD.PRICE 
						else 0 
						end 
					) +
				Max(isnull(dr.A,0))+
				Max(isnull(dr.Reward,0))

						-
                        -- this part for None Cash Free tax 
                        isnull(case 
                            when SUM(case when fo.wagekind IN ( 7,8,29,30 ) then FD.PRICE else 0 end ) +max(isnull(dr.NoneCash,0)) >= 
                                                                                        max(taxtable_item.Amount2) *2 
                                Then max(taxtable_item.Amount2) *2 
                            Else SUM(case when fo.wagekind IN ( 7,8,29,30 ) then FD.PRICE else 0 end )+max(isnull(dr.NoneCash,0))  
                        End,0) 
                        -
                        -- this part for Eydi Free Tax 
                        case when max( dr.Reward ) >0 then case when max( dr.Reward )>=max(taxtable_item.Amount2) then max(taxtable_item.Amount2) else max( dr.Reward ) end  else 0 end
					A,
				0 + max(isnull(dr.B,0)) B,
				SUM(case when fo.wagekind IN ( -1/*11,12,13,14,15,50*/ ) then FD.PRICE else 0 end  ) + max(isnull(dr.C,0)) C,
				SUM(case when fo.wagekind IN ( 10 ) then FD.PRICE else 0 end  )  + max(isnull(dr.d,0))  D,
				SUM(case when fo.wagekind IN ( 7,8,29,30 ) then FD.PRICE else 0 end  )  + max(isnull(dr.NoneCash,0))  NoneCash,
				max(isnull(dr.Reward,0)) Reward ,
				max(isnull(dr.RewardTax,0)) RewardTax ,
				SUM(case when FD.CalCulateKind = 11 AND  BedBes = 2 then FD.PRICE else 0 end ) TXX,
				SUM(case when FD.CalCulateKind = 10 AND (FD.ShowListKind = 2) AND BedBes = 2 then FD.PRICE else 0 end ) + max(isnull(dr.AID_INSOURANCE,0)) +
				SUM(case 
						when fo.wagekind IN ( 31,32 ) then  FD.PRICE 
						
						else 0 
						end 
					) INSOURANCE,
				isnull(max(taxtable_item.Amount2),0) FreeTax_FIRSTPRICE,
				isnull(max(dr.Sum_DayQuntity),1) Sum_DayQuntity

		FROM pay.FixedCalculated FD
				JOIN Pay.FixedCalActive() AS FixedCalActive_1 ON FD.PersonelNO = FixedCalActive_1.PersonelNO 
										AND FD.Mounth	 = FixedCalActive_1.Mounth 
										AND FD.YearID	 = FixedCalActive_1.YearID 
										AND FD.ArchiveID = FixedCalActive_1.F_ArchiveID
				JOIN  Pay.FormsInfo FO ON FD.SalaryID	 = FO.FormInfoID 
				JOIN  Pay.Interdicts_V  IV on IV.PersonelNo = FD.PersonelNo 
										AND @yearid*100+@Mounth BETWEEN  REPLACE(iv.startmonth,'/','') AND REPLACE(iv.endMonth ,'/','')
				INNER JOIN  Pay.taxtable_List (@yearid,@Mounth) taxtable ON  iv.TaxCalculationType = taxtable.PrvInfoID
				LEFT  JOIN  Pay.taxtable(@yearid,@Mounth) taxtable_item on taxtable.TaxID = taxtable_item.TaxID and taxtable_item.Coefficient = 0 
				--left join Eydi on FD.PersonelNo = eydi.PersonelNo 
				left join Eydi_Dependate_Reward_FreeTax dr on FD.PersonelNo  = dr.PersonelNo 

		Where (FD.PersonelNo between @PersonelNoFROM And @PersonelNoTo) 
				AND (FD.Mounth <= @Mounth)
				AND (FD.Years   = @yearid)
		group by iv.SubCompanyCode ,
				FD.PersonelNo, 
				FD.years,
				IV.TaxCalculationType 
	)  , -- containTax  End 

	Function_Aid as 
	(
		SELECT  PersonelNo,
				Mounth,
				SUM(ISNULL(SickDay,0)) AS TaxFunDay_SickDay,
				SUM(ISNULL(FunctionDay,0)) AS TaxFunDay
		FROM Pay.Functions
		WHERE (Mounth <= @Mounth ) 
			  and (Years = @YearID)
		GROUP BY PersonelNo,Mounth
	), 
	Function_Final as 
	(-- برای محاسبه تعداد ماه جهت استفاده در معافیت مالیاتی
		SELECT  PersonelNo,
				count(Mounth)  COEF ,
				SUM(TaxFunDay_SickDay) TaxFunDay_SickDay,
				SUM(TaxFunDay) TaxFunDay
		FROM  Function_Aid
		GROUP BY PersonelNo
	)  ,

	Prepare_For_Calculate_Tax as 
	(
		SELECT 
			ContainTax.SubCompanyCode,
			ContainTax.PersonelNo,
            ContainTax.TaxCalculationType taxtype,
            TERMINATE_TAX.taxid TAXTABLE_ID, 
            TERMINATE_TAX.Taxs_Bonus_TaxID,
            ContainTax.Years,
            (cast (ContainTax.A as decimal)-isnull(INSOURANCE,0) ) --(ContainTax.A-isnull(INSOURANCE,0)-isnull(DCT.price,0)) 
                /case when (isnull((ContainTax.A-isnull(INSOURANCE,0)),0)+isnull(ContainTax.B,0)+isnull(ContainTax.C,0)) !=0 
                        then (isnull((ContainTax.A-isnull(INSOURANCE,0) ),0)+isnull(ContainTax.B,0)+isnull(ContainTax.C,0))
                        else 1 
                    end A_Percent ,

            ContainTax.B 
                /case when (isnull((ContainTax.A-isnull(INSOURANCE,0) ),0)+isnull(ContainTax.B,0)+isnull(ContainTax.C,0)) !=0 
                        then (isnull((ContainTax.A-isnull(INSOURANCE,0) ),0)+isnull(ContainTax.B,0)+isnull(ContainTax.C,0))
                        else 1
                    end B_Percent ,
            /*ContainTax.C 
                /case when (isnull((ContainTax.A-isnull(INSOURANCE,0)-isnull(DCT.price,0)),0)+isnull(ContainTax.B,0)+isnull(ContainTax.C,0)) !=0 
                        then (isnull((ContainTax.A-isnull(INSOURANCE,0)-isnull(DCT.price,0)),0)+isnull(ContainTax.B,0)+isnull(ContainTax.C,0))
                        else 1 
                    end*/
			round(cast ( ContainTax.C  as float )
                /case when   (isnull((ContainTax.A-isnull(INSOURANCE,0) ),0)+isnull(ContainTax.B,0)+isnull(ContainTax.C,0)) !=0 
                        then (isnull((ContainTax.A-isnull(INSOURANCE,0) ),0)+isnull(ContainTax.B,0)+isnull(ContainTax.C,0))
                        else 1 
                    end ,7,1)
			as C_Percent ,
			Case When (ContainTax.A-isnull(INSOURANCE,0) )<0 
					Then 0 
					Else (ContainTax.A-isnull(INSOURANCE,0)) 
			End                                                       As taxable_A,
                               
			Case 
						When (ContainTax.B-isnull(INSOURANCE,0)-isnull(ContainTax.A,0))<0 
						Then 0 
						Else (ContainTax.B-isnull(INSOURANCE,0)-isnull(ContainTax.A,0)) 
			End                                                       As taxable_B,
                               
			Case 
						When ((ContainTax.A+ContainTax.B)-isnull(INSOURANCE,0) )<0 
						Then ContainTax.C + (((ContainTax.A+ContainTax.B)-isnull(INSOURANCE,0) )) 
						Else ContainTax.C 
			End                                                    As taxable_C,
			ContainTax.D                                           As taxable_D,
            ContainTax.Reward Reward  ,
            ContainTax.TXX,
            ContainTax.RewardTax ,-- TXXR,
            TFD.COEF,
			FreeTax_FIRSTPRICE,
			Sum_DayQuntity
		FROM  ContainTax -- containTax  End 
			INNER JOIN Pay.taxtable_List (@yearid,@Mounth) TERMINATE_TAX ON  ContainTax.TaxCalculationType = TERMINATE_TAX.PrvInfoID
		--	INNER JOIN Pay.taxtable(@yearid,@Mounth) FTAX ON FTAX.TaxID  = Case when @FestivalCalc=1 then TERMINATE_TAX.taxid else  TERMINATE_TAX.Taxs_Bonus_TaxID end  -- TC.SalaryID = FTAX.PrvInfoID 
		--	LEFT  JOIN Pay.taxtable(@yearid,@Mounth) TaxTable_Dec1 on FTAX.PrvInfoID = TaxTable_Dec1.PrvInfoID and TaxTable_Dec1.Coefficient = 0 
			INNER JOIN Function_Final TFD ON ContainTax.PersonelNO = TFD.PersonelNo
			--LEFT  JOIN Pay.DecreaseContainTax(@Mounth,@PersonelNoFrom,@PersonelNoTo,12,@yearid) DCT ON  ContainTax.PersonelNo = DCT.PersonelNo  --   معافیت خاص مالیاتی و بیمه کارکنان
	),
	Reward_Tax as 
	(
		select CFCT.PersonelNo , 
				(cfct.Reward - FirstAmount )* (isnull(TBI.COEFFICIENT, 0) / 100)+amount -isnull(RewardTax,0) Current_RewardTax
		from Prepare_For_Calculate_Tax CFCT 
			left JOIN Pay.taxtable(@yearid,@Mounth) TBI ON CFCT.taxtype = TBI.PrvInfoID 
															AND CFCT.TAXTABLE_ID = TBI.TaxID 
		where cfct.Reward between firstamount  and  Amount2 
	),
    Calculate_tax as 
    ( 
        select CFCT.* ,
               floor ((cfct.taxable_A - floor((firstamount *CFCT.COEF - FreeTax_FIRSTPRICE *CFCT.COEF*cfct.c_Percent )))
                * (isnull(TBI.COEFFICIENT,0 ) )
                +amount*CFCT.COEF)  -- a_tax 
                + 
                case when (cfct.taxable_C - FreeTax_FIRSTPRICE *CFCT.COEF* cfct.c_Percent ) >0
                    then floor((cfct.taxable_C - FreeTax_FIRSTPRICE *CFCT.COEF*  cfct.c_Percent) * (0.1))
                else 0
                End 
                + cfct.taxable_D*0.05 Sum_OF_Tax 
        from Prepare_For_Calculate_Tax CFCT 
                left JOIN Pay.taxtable(@yearid,@Mounth) TBI ON CFCT.taxtype = TBI.PrvInfoID 
															AND CFCT.TAXTABLE_ID = TBI.TaxID 
        where cfct.taxable_a  between firstamount * CFCT.COEF - FreeTax_FIRSTPRICE *CFCT.COEF*  cfct.c_Percent
                and  Amount2 * CFCT.COEF - FreeTax_FIRSTPRICE *CFCT.COEF*  cfct.c_Percent
                and cfct.taxable_a != 0 
        ),
	tax as -- to do : reward add here 
	(
    Select
        A.* 
        ,round(a.Sum_OF_Tax - isnull(A.TXX,0),0) - isnull(RewardTax,0)           Mounth_TXX
    from Calculate_tax   A
	) -- end of B
		, SumDays AS 
	(
		select  m.Years , m.Mounth ,m.PersonelNo, sum(m.FunctionDay) Sum_Days,sum(m.FunctionTime) Sum_Time
		from Pay.Functions m
		where m.Years  = @yearid  
			AND m.Mounth = @Mounth 
		group by m.Years , m.Mounth,m.PersonelNo

)  


	SELECT   0 FunctionID
		    ,tax.taxtype FormInfoID
			,tax.SubCompanyCode
			,fd.PersonelNo
			,max(tax.TXX) BeforeTaxValue
			,fd.Mounth CalcMounth 
			,11 ShowListKind
			,FO.AccCTopicCode2
			,FO.AccCTopicCode3
			,FO.AccCTopicCode
			,FO.AccDetailCode
			,FO.AccTopicCode
			,11 CalCulateKind
			,2 bedbes
			,fd.YearID
			,fd.Mounth
			,fd.Years
			,tax.taxtype SalaryID
			,fd.JobCode JobCode
			,fd.OfficeCode OfficeCode
			,fd.ProjectID ProjectID
			,0 As ProcCode
			,round(
			 Case 
				When max( sd.Sum_Days)  <>0 then sum(fd.FunctionDay) / max( sd.Sum_Days)
				else 1
			 end  * ( max(isnull(Reward_Tax.Current_RewardTax,0)) + max(isnull(tax.Mounth_TXX,0)))
			 ,0)TXX
			,max(tax.reward) reward
			,0 Current_RewardTax --max(tax.Current_RewardTax) Current_RewardTax
	FROM	 pay.Functions FD
			join SumDays sd on fd.PersonelNo = sd.PersonelNo
			left join tax on fd.PersonelNO = tax.PersonelNO 
			left join Reward_Tax on fd.PersonelNO = Reward_Tax.PersonelNO 
			JOIN  Pay.FormsInfo FO ON tax.taxtype = FO.FormInfoID 
	Where fd.Years = @yearid
		AND fd.Mounth = @Mounth 
group by tax.taxtype 
		,tax.SubCompanyCode
		,fd.PersonelNo
		,fd.Mounth 
		,FO.AccCTopicCode2
		,FO.AccCTopicCode3
		,FO.AccCTopicCode
		,FO.AccDetailCode
		,FO.AccTopicCode
		,fd.YearID
		,fd.Mounth
		,fd.Years
		,tax.taxtype 
		,fd.JobCode  
		,fd.OfficeCode  
		,fd.ProjectID
END


  
  
  
  
  
  
  
-------------------------------------------------
  
  
  
  
  
  
