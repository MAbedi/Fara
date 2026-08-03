---3  تاريخ  1402/08/28  Pay Active

SET NOCOUNT ON 
if exists (select * from sysobjects where id = object_id(N'Pay.FixCalculateTypeOffice') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.FixCalculateTypeOffice
GO
if exists (select * from sysobjects where id = object_id(N'Pay.FixCalculateTypeProject') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.FixCalculateTypeProject
GO
if exists (select * from sysobjects where id = object_id(N'Pay.FixCalculateTypeProject_formule') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.FixCalculateTypeProject_formule
GO
if exists (select * from sysobjects where id = object_id(N'Pay.FixCalculateTypeOffice_formule') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.FixCalculateTypeOffice_formule
GO
if exists (select * from sysobjects where id = object_id(N'Pay.FixCalculateTypePersonel') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.FixCalculateTypePersonel
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Sp_WageFormula') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE Pay.Sp_WageFormula
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Vu_WageFormula') and OBJECTPROPERTY(id,N'IsView') = 1)
DROP VIEW Pay.Vu_WageFormula
GO
if exists (select * from sysobjects where id = object_id(N'Pay.Fn_Tide') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Pay.Fn_Tide
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.GetPersonelDecExtPrice') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.GetPersonelDecExtPrice
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'pay.GetPayroll') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure pay.GetPayroll
GO

CREATE VIEW Pay.Vu_WageFormula
AS 
SELECT 0 AS Kind , 'MAX(F.FunctionDay)' AS ID, '[روزهای کارکرد]' AS Name
UNION ALL 
    SELECT 0 AS Kind ,'MAX(F.FunctionTime)', '[ساعات کارکرد]'
UNION ALL 
    SELECT 0 AS Kind ,'MAX(FI.FHours)', '[ساعت کارکرد]'
UNION ALL 
    SELECT 0 AS Kind ,'MAX(FI.FDaily)', '[تعداد کارکرد]'
UNION ALL 
--SELECT  0 AS Kind ,'SUM(F._Amount'+LTRIM(  ROW_NUMBER() OVER( ORDER BY SalaryID ASC))+')' ,     '[مقدار'+ FormsInfo.InfoName_L1+']'
SELECT  0 AS Kind ,'SUM(F._Amount'+LTRIM( SalaryID)+')' ,     '[مقدار'+ FormsInfo.InfoName_L1+']'
FROM            Pay.FunctionsItems INNER JOIN
                         Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID
GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1

UNION ALL 
-- SELECT DISTINCT  0 AS Kind ,'SUM(I.InAmount'+LTRIM(  ROW_NUMBER() OVER( ORDER BY SalaryID ASC))+')' ,     '[حکم.'+ FormsInfo.InfoName_L1+']'
 SELECT DISTINCT  0 AS Kind ,'SUM(I.InAmount'+LTRIM(SalaryID)+')' ,     '[حکم.'+ FormsInfo.InfoName_L1+']'
  FROM   Pay.InterdictItems INNER JOIN Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID  
  GROUP BY InterdictItems.SalaryID, FormsInfo.InfoName_L1
UNION ALL 
 SELECT DISTINCT  0 AS Kind ,'MAX(PDE.EA_'+LTRIM(PD.FormInfoID)+')' ,     '[PDE.'+ F.InfoName_L1+']'  
  FROM   Pay.PersonelDecExt PD INNER JOIN Pay.FormsInfo F ON PD.FormInfoID = F.FormInfoID  
  INNER JOIN Pay.FormTypes T ON T.FormType = F.FormType  
    WHERE T.SalaryKind IN(12,13) 
UNION ALL 
SELECT DISTINCT 0 AS Kind ,'MAX(CASE WHEN FI.SalaryID='+LTRIM(FunctionsItems.SalaryID)+' THEN FI.FHours ELSE 0 END)' , 'ساعت '+LTRIM(FormsInfo.InfoName_L1)
FROM            Pay.FunctionsItems INNER JOIN
                         Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID
UNION ALL 
SELECT DISTINCT 0 AS Kind ,'MAX(CASE WHEN FI.SalaryID='+LTRIM(FunctionsItems.SalaryID)+' THEN FI.FDaily ELSE 0 END)' , 'تعداد '+LTRIM(FormsInfo.InfoName_L1)
FROM            Pay.FunctionsItems INNER JOIN
                         Pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID

UNION ALL 
    SELECT 0 AS Kind ,'(SELECT COUNT(*) FROM Pay.Functions WHERE PersonelNo = P.PersonelNo AND Mounth= @Mounth )', '[تعداد ثبت کارکرد]'

UNION ALL 
    SELECT 0 AS Kind ,'ISNULL(ABS(O_T.OffTime),0)', '[تعدادمرخصی]'

	
UNION ALL 
    SELECT 0 AS Kind ,'SUM(FC.Price)', '[محاسبه قبلی]'
UNION ALL 
    SELECT 0 AS Kind ,'SUM(I.Amount)', '[مبالغ حکم]'
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(F_X.PersonPriceShare)/MAX(F_X.PersonPriceShare_proj)*MAX(Sum_P_X.BonusShare)', '[پاداش متعلقه(پروژه)]'	
UNION ALL 
    SELECT 0 AS Kind ,'MAX(F_X.PersonPriceShare)', '[سهم هرنفر از پاداش بر اساس کارکرد(پروژه)]'	
UNION ALL 
    SELECT 0 AS Kind ,'MAX(F_X.PersonPriceShare_proj)', 'سهم پروژه از پاداش بر اساس کارکرد'	
UNION ALL 
    SELECT 0 AS Kind ,'MAX(Sum_P_X.BonusShare)', 'سهم پروژه از پاداش'	
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(F_XO.PersonPriceShare)/MAX(F_XO.PersonPriceShare_Office)*MAX(Sum_O_X.BonusShare)', '[پاداش متعلقه(واحد)]'	
UNION ALL 
    SELECT 0 AS Kind ,'MAX(F_XO.PersonPriceShare)', '[سهم هرنفر از پاداش بر اساس کارکرد(واحد)]'	
UNION ALL 
    SELECT 0 AS Kind ,'MAX(F_XO.PersonPriceShare_Office)', 'سهم واحد از پاداش بر اساس کارکرد'	
UNION ALL 
    SELECT 0 AS Kind ,'MAX(Sum_O_X.BonusShare)', 'سهم واحد از پاداش'	
UNION ALL 
    SELECT 0 AS Kind ,'SUM(CASE ShowlistKind WHEN 1 THEN Price ELSE 0 END)-(SUM(CASE ShowlistKind WHEN 2 THEN Price ELSE 0 END)+SUM(CASE WHEN ShowlistKind=11 AND bedbes = 2 THEN Price ELSE 0 END ))', 'خالص پرداختی'	


	
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(FCO.Price)', '[احکام انتخابی برحسب واحد سازمانی]'
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(FCPJ.Price)', '[احکام انتخابی برحسب پروژه]'
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(FCPJ.FHours)', '[احکام انتخابی برحسب ساعت پروژه]'
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(FCPJ.FDaily)', '[احکام انتخابی برحسب تعداد پروژه]'
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(FCPJ.AmountFHours)', '[احکام انتخابی برحسب مبلغ ساعت پروژه]'
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(FCPJ.AmountFDaily)', '[احکام انتخابی برحسب مبلغ تعداد پروژه]'
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(FCP.Price)', '[احکام انتخابی برحسب پرسنل]'
--UNION ALL 
--    SELECT 0 AS Kind ,'MAX(AllSum.Price)', '[احکام انتخابی کل پرسنل]'
--UNION ALL
--    SELECT 0 AS Kind ,'MAX(AllSumFI.AmountFDaily)', '[احکام انتخابی کل تعداد پرسنل]'
--UNION ALL
--    SELECT 0 AS Kind ,'MAX(AllSumFI.AmountFHours)', '[احکام انتخابی کل ساعت پرسنل]'
--UNION ALL
--    SELECT 0 AS Kind ,'SUM(AllSumP.M30)', '[سهم هرنفر از پاداش بر اساس کارکرد]'
UNION ALL


SELECT DISTINCT 1 AS Kind ,'SUM(CASE WHEN FC.SalaryID = '+LTRIM(LTRIM(FC.SalaryID))+' THEN FC.Price ELSE 0 END )', '['+FormsInfo.InfoName_L1+']'
FROM            Pay.FixedCalculated AS FC INNER JOIN
                         Pay.FormsInfo ON FC.FormInfoID = FormsInfo.FormInfoID INNER JOIN
                         Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType
WHERE        (FC.ShowListKind = 1) AND (FormTypes.SalaryEffectKind > 0) AND (FormTypes.FormType = 29)

UNION ALL 
SELECT DISTINCT 2 AS Kind ,'SUM(CASE WHEN I.SalaryID = '+LTRIM(LTRIM(InterdictItems.SalaryID))+' THEN I.Amount ELSE 0 END )', '['+FormsInfo.InfoName_L1+']'
FROM            Pay.InterdictItems INNER JOIN
                         Pay.FormsInfo ON InterdictItems.SalaryID = FormsInfo.FormInfoID INNER JOIN
                         Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType
UNION ALL 
 SELECT 
    3 AS Kind ,'CASE', 'شروع'
  UNION ALL SELECT 
    3 AS Kind ,'WHEN', 'وقتی'
  UNION ALL SELECT 
    3 AS Kind ,'THEN', 'سپس'
  UNION ALL SELECT 
    3 AS Kind ,'ELSE', 'درغیراینصورت'
  UNION ALL SELECT 
    3 AS Kind ,'<>', 'مخالف'
  UNION ALL SELECT 
    3 AS Kind ,'<=', 'کوچکترومساوی'
  UNION ALL SELECT 
    3 AS Kind ,'>=', 'بزرگترومساوی'
  UNION ALL SELECT 
    3 AS Kind ,'<', 'کوچکتراز'
  UNION ALL SELECT 
    3 AS Kind ,'>', 'بزرگتراز'
  UNION ALL SELECT 
   3 AS Kind , '=', 'مساوی'
  UNION ALL SELECT 
   3 AS Kind , 'MYCALC', 'فرمول'
  UNION ALL SELECT 
    3 AS Kind ,'END', 'پایان'

GO

CREATE PROCEDURE Pay.Sp_WageFormula
@Mounth int =1 ,@Year int=84,@YearMounth varCHAR(7)= '94/01', @PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@SalaryID int 
AS
BEGIN
/*REPLACE(REPLACE( REPLACE( REPLACE( REPLACE(SQLCalc, 
'PersonelInfo.', 'P.'), 
'Functions.', 'F.') , 
'FixedCalculated.', 'FC.') , 
'InterdictForUse.', 'I.') , 
'FunctionsItems.', 'FI.') */

SET NOCOUNT ON;
DECLARE @SQLTxt varCHAR(8000)
DECLARE @SQLCalc VARCHAR(8000)
DECLARE @WhereSQLCalc VARCHAR(8000)  

DECLARE @SQLCalcWhere VARCHAR(8000)
DECLARE @Amount money

SELECT @SQLCalc =  '('+SQLCalc+')' , @WhereSQLCalc = ISNULL(WhereSQLCalc,'') FROM Pay.WageFormula
WHERE (SalaryID = @SalaryID) AND (MounthFrom <= @Mounth ) AND (YearFrom <= @Year) AND (MounthTo >= @Mounth) AND (YearTo >= @Year)

SET @SQLCalc=REPLACE(@SQLCalc,'@Mounth',@Mounth)  

SELECT @Amount =  Amount FROM FormsInfo
WHERE (FormInfoID = @SalaryID) 


IF ISNULL(@SQLCalc,'')=''   SET @SQLCalc='*'
ELSE
BEGIN
SET @SQLCalcWhere='('+@SQLCalc +' > 0 ) '

if ISNULL(@WhereSQLCalc,'')<>'' 
SET @SQLCalc=REPLACE(@WhereSQLCalc,'MYCalc',@SQLCalc)  


SET @SQLCalc=@SQLCalc +'  AS price '
END

SET @SQLTxt='SELECT P.PersonelNO, '

SET @SQLTxt=@SQLTxt+CHAR(13)+@SQLCalc
SET @SQLTxt=@SQLTxt+CHAR(13)+','+LTRIM(@SalaryID)+' AS SalaryID ,  '+LTRIM(@Mounth)
                             +' AS Mounth, FormTypes.SalaryEffectKind AS ShowListKind,FormTypes.SalaryEffectKind AS BedBes, 5 AS CalCulateKind '
IF @SQLCalc like '%FC.%'
SET @SQLTxt=@SQLTxt+CHAR(13)+',FC.FunctionID AS FunctionID, FC.FormInfoID, FC.ProjectID, FC.OfficeCode, FC.JobCede AS JobCode, FC.ProcCode,
        CASE FormTypes.TopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN FormsInfo.AccTopicCode
		ELSE FC.AccTopicCode END AS AccTopicCode,		
		CASE FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN FormsInfo.AccDetailCode
			WHEN 7 THEN P.AccDetailCode
			WHEN 10 THEN (
						CASE WHEN FormsInfo.AccDetailCode >0 
							THEN FormsInfo.AccDetailCode 
							ELSE P.AccDetailCode END )
	ELSE FC.AccDetailCode END AS AccDetailCode,
	CASE FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 2 THEN FormsInfo.AccCTopicCode
		ELSE FC.AccCTopicCode END AS AccCTopicCode,
	CASE FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN FormsInfo.AccCTopicCode2
	ELSE FC.AccCTopicCode2 END AS AccCTopicCode2,
	CASE FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN FormsInfo.AccCTopicCode3
		ELSE 0 END AS AccCTopicCode3'
else
  IF ((@SQLCalc like '%F.%')OR(@SQLCalc like '%FI.%'))and(@SQLCalc like '%I.%')
	SET @SQLTxt=@SQLTxt+CHAR(13)+',F.FunctionID,F.FormInfoID ,F.ProjectID,F.OfficeCode,F.JobCode,F.Mounth,F.ProcCode,
	CASE FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN I.AccTopicCode
		WHEN 2 THEN FormsInfo.AccTopicCode
		WHEN 3 THEN F_Project.AccTopicCode
		WHEN 4 THEN F_Office.AccTopicCode
		WHEN 5 THEN I.MasterAccTopicCode
		WHEN 6 THEN P.AccTopicCode
		WHEN 8 THEN F_Proc.AccTopicCode
		WHEN 9 THEN F_CT3.AccTopicCode
		WHEN 11 THEN LTRIM(LTRIM(F_Office.AccTopicCode)) +''''+ LTRIM(LTRIM(FormsInfo.AccTopicCode))				
		WHEN 12 THEN CASE WHEN FormsInfo.AccTopicCode<>0 THEN FormsInfo.AccTopicCode ELSE  F_Project.AccTopicCode END 					
	ELSE 0 END AS AccTopicCode,
	CASE FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN I.AccDetailCode
		WHEN 2 THEN FormsInfo.AccDetailCode
		WHEN 3 THEN F_Project.AccDetailCode
		WHEN 4 THEN F_Office.AccDetailCode
		WHEN 5 THEN I.MasterAccDetailCode
		WHEN 6 THEN P.AccDetailCode
		WHEN 8 THEN F_Proc.AccDetailCode
		WHEN 9 THEN F_CT3.AccDetailCode
    	WHEN 11  THEN CASE WHEN FormsInfo.AccDetailCode =-1 THEN P.AccDetailCode ELSE FormsInfo.AccDetailCode  END 
	ELSE 0 END AS AccDetailCode,
	CASE FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN I.AccCTopicCode
		WHEN 2 THEN FormsInfo.AccCTopicCode
		WHEN 3 THEN F_Project.AccCTopicCode
		WHEN 4 THEN F_Office.AccCTopicCode
		WHEN 5 THEN I.MasterAccCTopicCode
		WHEN 6 THEN P.AccCTopicCode
		WHEN 8 THEN F_Proc.AccCTopicCode
		WHEN 9 THEN F_CT3.AccCTopicCode
    	WHEN 13  THEN CASE WHEN FormsInfo.AccCTopicCode =-1 THEN F_Project.AccCTopicCode ELSE FormsInfo.AccCTopicCode  END 
ELSE 0 END AS AccCTopicCode,
	CASE FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN I.AccCTopicCode2
		WHEN 2 THEN FormsInfo.AccCTopicCode2
		WHEN 3 THEN F_Project.AccCTopicCode2
		WHEN 4 THEN F_Office.AccCTopicCode2
		WHEN 5 THEN I.MasterAccCTopicCode2
		WHEN 6 THEN P.AccCTopicCode2
		WHEN 8 THEN F_Proc.AccCTopicCode2
		WHEN 9 THEN F_CT3.AccCTopicCode2
	ELSE 0 END AS AccCTopicCode2,
	CASE FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
--		WHEN 1 THEN I.AccCTopicCode2
		WHEN 2 THEN FormsInfo.AccCTopicCode3
		WHEN 3 THEN F_Project.AccCTopicCode3
		WHEN 4 THEN F_Office.AccCTopicCode3
--		WHEN 5 THEN I.MasterAccCTopicCode2
--		WHEN 6 THEN P.AccCTopicCode2
		WHEN 8 THEN F_Proc.AccCTopicCode3
		WHEN 9 THEN F_CT3.AccCTopicCode3
	ELSE 0 END AS AccCTopicCode3'			
	 else 
			SET @SQLTxt=@SQLTxt+CHAR(13)+',0 as FunctionID,0 AS FormInfoID,0 AS ProjectID,0 AS OfficeCode,0 AS JobCode,'+LTRIM(@Mounth)+' Mounth,0 AS ProcCode,
			CASE FormTypes.TopicCodeKind 
				WHEN 0 THEN 0 
				
				WHEN 2 THEN FormsInfo.AccTopicCode
				WHEN 3 THEN F_Project.AccTopicCode
				WHEN 4 THEN F_Office.AccTopicCode
				
				WHEN 6 THEN P.AccTopicCode
				WHEN 8 THEN F_Proc.AccTopicCode
				WHEN 9 THEN F_CT3.AccTopicCode
				WHEN 11 THEN LTRIM(LTRIM(F_Office.AccTopicCode)) +''''+ LTRIM(LTRIM(FormsInfo.AccTopicCode))				
				WHEN 12 THEN CASE WHEN FormsInfo.AccTopicCode<>0 THEN FormsInfo.AccTopicCode ELSE  F_Project.AccTopicCode END 					
			ELSE 0 END AS AccTopicCode,
			CASE FormTypes.DetailCodeKind 
				WHEN 0 THEN 0 
				
				WHEN 2 THEN FormsInfo.AccDetailCode
				WHEN 3 THEN F_Project.AccDetailCode
				WHEN 4 THEN F_Office.AccDetailCode
				
				WHEN 6 THEN P.AccDetailCode
				WHEN 8 THEN F_Proc.AccDetailCode
				WHEN 9 THEN F_CT3.AccDetailCode
    			WHEN 11  THEN CASE WHEN FormsInfo.AccDetailCode =-1 THEN P.AccDetailCode ELSE FormsInfo.AccDetailCode  END 
			ELSE 0 END AS AccDetailCode,
			CASE FormTypes.CTopicCodeKind 
				WHEN 0 THEN 0 
				
				WHEN 2 THEN FormsInfo.AccCTopicCode
				WHEN 3 THEN F_Project.AccCTopicCode
				WHEN 4 THEN F_Office.AccCTopicCode
				
				WHEN 6 THEN P.AccCTopicCode
				WHEN 8 THEN F_Proc.AccCTopicCode
				WHEN 9 THEN F_CT3.AccCTopicCode
    			WHEN 13  THEN CASE WHEN FormsInfo.AccCTopicCode =-1 THEN F_Project.AccCTopicCode ELSE FormsInfo.AccCTopicCode  END 
		ELSE 0 END AS AccCTopicCode,
			CASE FormTypes.CTopicCode2Kind 
				WHEN 0 THEN 0 
				
				WHEN 2 THEN FormsInfo.AccCTopicCode2
				WHEN 3 THEN F_Project.AccCTopicCode2
				WHEN 4 THEN F_Office.AccCTopicCode2
				
				WHEN 6 THEN P.AccCTopicCode2
				WHEN 8 THEN F_Proc.AccCTopicCode2
				WHEN 9 THEN F_CT3.AccCTopicCode2
			ELSE 0 END AS AccCTopicCode2,
			CASE FormTypes.CTopicCode2Kind 
				WHEN 0 THEN 0 
		
				WHEN 2 THEN FormsInfo.AccCTopicCode3
				WHEN 3 THEN F_Project.AccCTopicCode3
				WHEN 4 THEN F_Office.AccCTopicCode3
		
		--		WHEN 6 THEN P.AccCTopicCode2
				WHEN 8 THEN F_Proc.AccCTopicCode3
				WHEN 9 THEN F_CT3.AccCTopicCode3
			ELSE 0 END AS AccCTopicCode3'			

        
SET @SQLTxt=@SQLTxt+CHAR(13)+'FROM Pay.PersonelInfo AS P'

IF @SQLCalc like '%FC.%'
SET @SQLTxt=@SQLTxt+CHAR(13)+'LEFT OUTER JOIN Pay.FinalArchiveWithPersonelNO RIGHT OUTER JOIN Pay.FixedCalculated AS FC ON FinalArchiveWithPersonelNO.PersonelNO = FC.PersonelNO 
    AND FinalArchiveWithPersonelNO.Mounth = FC.Mounth AND FinalArchiveWithPersonelNO.ArchiveID = FC.ArchiveID 
       ON P.PersonelNo = FC.PersonelNO AND FinalArchiveWithPersonelNO.Mounth = '+LTRIM( @Mounth)

   IF  @SQLCalc like '% ShowlistKind %'   --- add In 990328
       SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.FixedCalculated AS I ON P.PersonelNO = I.PersonelNo'  --------new
     else

         IF Not @SQLCalc like '%.InAmount%'   --- add InAmount 990313
          SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.InterdictForUse('''+ @YearMounth
                + ''',1,2,'+LTRIM( @PersonelNoFROM)+ ' ,'+LTRIM( @PersonelNoTo)+ ' ,1) AS I ON P.PersonelNO = I.PersonelNo'
else
          SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.InterdictItems_InAmount('''+ @YearMounth + ''') AS I ON P.PersonelNO = I.PersonelNo'
			

--------------------------------------------------------------------------------------------

IF @SQLCalc like '%F._Amount%'or(@SQLCalc like '%F.Function%')
  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.FunctionItems_AmountSID('+LTRIM( @Mounth)+') AS F ON P.PersonelNo = F.PersonelNo  '
else
begin

IF @SQLCalc like '%FI.%'or(@SQLCalc like '%Sum_P_X.%')OR (@SQLCalc like '%F_X.%')or(@SQLCalc like '%Sum_O_X.%')OR (@SQLCalc like '%F_XO.%')
  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.Functions AS F ON P.PersonelNo = F.PersonelNo AND '+
  LTRIM( @Mounth)+ ' = F.Mounth INNER JOIN Pay.FunctionsItems AS FI ON F.FunctionID = FI.FunctionID'
    ELSE
         IF (@SQLCalc like '%F.%')or(@SQLCalc like '%Sum_P_X.%')OR (@SQLCalc like '%F_X.%')
          SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.Functions AS F ON P.PersonelNo = F.PersonelNo'

end
-----------------------------------------------------------------

----------------------------- ACC ----------------------------------------------------
IF (@SQLCalc LIKE '%F.%')OR( @SQLCalc LIKE '%FI.%')or(@SQLCalc like '%Sum_P_X.%')OR (@SQLCalc like '%F_X.%')or(@SQLCalc like '%Sum_O_X.%')OR (@SQLCalc like '%F_XO.%')
		SET @SQLTxt=@SQLTxt+CHAR(13)+'LEFT OUTER JOIN Pay.FormsInfo F_Office ON F.OfficeCode = F_Office.FormInfoID
		                    LEFT OUTER JOIN Pay.FormsInfo F_Project ON F.ProjectID = F_Project.FormInfoID 
							LEFT OUTER JOIN Pay.FormsInfo F_Proc ON F.ProcCode = F_Proc.FormInfoID 
							LEFT OUTER JOIN Pay.FormsInfo F_CT3 ON F.CTopic3 = F_CT3.FormInfoID'
  ELSE  
    IF (@SQLCalc LIKE '%I.%') or (@SQLCalc like '% ShowlistKind %')
		SET @SQLTxt=@SQLTxt+CHAR(13)+'LEFT OUTER JOIN Pay.FormsInfo F_Office ON I.OfficeCode = F_Office.FormInfoID 
							LEFT OUTER JOIN Pay.FormsInfo F_Project ON I.ProjectID = F_Project.FormInfoID 
							LEFT OUTER JOIN Pay.FormsInfo F_Proc ON I.ProjectID = F_Proc.FormInfoID 
							LEFT OUTER JOIN Pay.FormsInfo F_CT3 ON I.AccCTopicCode3 = F_CT3.FormInfoID'
		ELSE  
		IF (@SQLCalc LIKE '%FC.%')
		SET @SQLTxt=@SQLTxt+CHAR(13)+'LEFT OUTER JOIN Pay.FormsInfo F_Office ON FC.OfficeCode = F_Office.FormInfoID 
							LEFT OUTER JOIN Pay.FormsInfo F_Project ON FC.ProjectID = F_Project.FormInfoID 
							LEFT OUTER JOIN Pay.FormsInfo F_Proc ON FC.ProcCode = F_Proc.FormInfoID 
							LEFT OUTER JOIN Pay.FormsInfo F_CT3 ON FC.AccCTopicCode3 = F_CT3.FormInfoID'


----------------------------- ACC ----------------------------------------------------


IF (@SQLCalc LIKE '%FI.%') or (@SQLCalc like '% ShowlistKind %')
  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.WageFormula ON  '+LTRIM( @SalaryID)+ ' = WageFormula.SalaryID'
  ELSE  
  IF (@SQLCalc like '%F._Amount%'or(@SQLCalc like '%F.Function%')or(@SQLCalc like '%I.InAmount%'))or (not (@SQLCalc LIKE '%FI.%'))   --- add I.InAmount 990225  -- add or (not (@SQLCalc LIKE '%FI.%')) 990313
     SET @SQLTxt=@SQLTxt+CHAR(13)+'CROSS JOIN Pay.WageFormula '
	 else
  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.WageFormula ON  FI.SalaryID = WageFormula.SalaryID'

--SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.FormsInfo ON  WageFormula.SalaryID = FormsInfo.FormInfoID INNER JOIN Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType'

SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.FormsInfo ON  WageFormula.SalaryID = FormsInfo.FormInfoID  and WageFormula.SalaryID= '+LTRIM( @SalaryID)+ '  INNER JOIN Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType'
 
IF (@SQLCalc like '%Sum_P_X.%')OR (@SQLCalc like '%F_X.%')
  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.FixCalculateTypeProject_formule('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+
               ', '+LTRIM( @PersonelNoTo)+ ' , '+LTRIM(CAST( @Amount AS BIGINT))+ ', '+LTRIM(@SalaryID)+ '  ) AS F_X ON f.ProjectID = F_X.ProjectID and f.PersonelNo = F_X.PersonelNo
INNER JOIN (SELECT ProjectID ,SUM(BonusShare) as BonusShare FROM  FixCalculateTypeProject_formule('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+
               ', '+LTRIM( @PersonelNoTo)+ ' , '+LTRIM( CAST( @Amount AS BIGINT))+', '+LTRIM(@SalaryID)+ ' ) 
					GROUP BY ProjectID ) AS Sum_P_X ON f.ProjectID = Sum_P_X.ProjectID '


IF (@SQLCalc like '%Sum_O_X.%')OR (@SQLCalc like '%F_XO.%')
  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN Pay.FixCalculateTypeOffice_formule('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+
               ', '+LTRIM( @PersonelNoTo)+ ' , '+LTRIM( CAST( @Amount AS BIGINT))+', '+LTRIM(@SalaryID)+ '  ) AS F_XO ON f.OfficeCode = F_XO.OfficeCode and f.PersonelNo = F_XO.PersonelNo
INNER JOIN (SELECT OfficeCode ,SUM(BonusShare) as BonusShare FROM  Pay.FixCalculateTypeOffice_formule('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+
               ', '+LTRIM( @PersonelNoTo)+ ' , '+LTRIM( CAST( @Amount AS BIGINT))+', '+LTRIM(@SalaryID)+ '  ) 
					GROUP BY OfficeCode ) AS Sum_O_X ON f.OfficeCode = Sum_O_X.OfficeCode '

IF (@SQLCalc like '%O_T.%')
  SET @SQLTxt=@SQLTxt+CHAR(13)+'LEFT OUTER JOIN (SELECT PersonelNo, SUM(addtype)  AS OffTime FROM '+
    '(SELECT PersonelNo, addtype  from Pay.OffTimeListCurent('+LTRIM( @Mounth)+ ',  '+LTRIM( @Mounth)+ ', 1,1, '+LTRIM( @PersonelNoFROM)+ ','+LTRIM( @PersonelNoTo)+ ') )a_F '+
	' GROUP BY PersonelNo ) AS O_T ON  P.PersonelNo = O_T.PersonelNo '

IF (@SQLCalc like '%PDE.%')
  SET @SQLTxt=@SQLTxt+CHAR(13)+'LEFT OUTER JOIN Pay.PersonelDecExtMounth('+LTRIM( @Mounth)+ ') AS PDE ON  P.PersonelNo = PDE.PersonelNo '


--IF (@SQLCalc like '%FCP.%')
--  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN FixCalculateTypePersonel('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+ ', '+LTRIM( @PersonelNoTo)+ ') AS FCP ON P.PersonelNo = FCP.PersonelNo '

--IF (@SQLCalc like '%FCO.%')
--  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN FixCalculateTypeOffice('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+ ', '+LTRIM( @PersonelNoTo)+ ') AS FCO ON I.OfficeCode = FCO.OfficeCode '

--IF (@SQLCalc like '%FCPJ.%')
--  SET @SQLTxt=@SQLTxt+CHAR(13)+'INNER JOIN FixCalculateTypeProject('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+ ', '+LTRIM( @PersonelNoTo)+ ') AS FCPJ ON I.ProjectID = FCPJ.ProjectID '

  

--IF (@SQLCalc like '%AllSum.%')
--  SET @SQLTxt=@SQLTxt+CHAR(13)+'CROSS JOIN  (SELECT SUM(Price) AS Price FROM FixCalculateTypeOffice('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+ ', '+LTRIM( @PersonelNoTo)+ ')) AS AllSum '

--IF (@SQLCalc like '%AllSumFI.%')
--  SET @SQLTxt=@SQLTxt+CHAR(13)+'CROSS JOIN  (SELECT SUM(AmountFDaily) AS AmountFDaily,SUM(AmountFHours) AS AmountFHours FROM FixCalculateTypeOffice('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+ ', '+LTRIM( @PersonelNoTo)+ ')) AS AllSumFI '

--IF (@SQLCalc like '%AllSumP.%')
--  SET @SQLTxt=@SQLTxt+CHAR(13)+'CROSS JOIN  (SELECT SUM(M30) AS M30 FROM FixCalculateTypeProject('+LTRIM( @Mounth)+ ', '+LTRIM( @year)+ ', '''+ @YearMounth+ ''', '+LTRIM( @PersonelNoFROM)+ ', '+LTRIM( @PersonelNoTo)+ ')) AS AllSumP '


SET @SQLTxt=@SQLTxt+CHAR(13)+'WHERE ('+LTRIM( @Mounth)+ ' BETWEEN MounthFrom AND MounthTo) AND ('+LTRIM( @Year)+ ' BETWEEN YearFrom AND YearTo)
	 AND (P.PersonelNO BETWEEN '+LTRIM( @PersonelNoFROM)+ ' AND '+LTRIM( @PersonelNoTo)+ '  ) AND (WageFormula.SalaryID ='+LTRIM( @SalaryID)+ ') '

	 --- AND (WageFormula.SalaryID ='+LTRIM( @SalaryID)+ ')
IF (@SQLCalc like '%F.%')or( @SQLCalc like '%FI.%')
begin

   SET @SQLTxt=@SQLTxt+CHAR(13)+'AND(F.Mounth = '+LTRIM( @Mounth)+ ') '

   IF ( @SQLCalc like '%F.%') and not( @SQLCalc like '%F._Amount%'or(@SQLCalc like '%F.Function%'))
      SET @SQLTxt=@SQLTxt+CHAR(13)+'AND(FI.SalaryID = '+LTRIM( @SalaryID)+ ')'

end

IF (@SQLCalc like '%FC.%')
SET @SQLTxt=@SQLTxt+CHAR(13)+'AND(FC.Mounth = '+LTRIM( @Mounth)+ ') '

IF  (@SQLCalc like '% ShowlistKind %')

SET @SQLTxt=@SQLTxt+CHAR(13)+' AND ((((ShowListKind = 2) OR(ShowListKind = 11))and (bedbes=2)) OR  (ShowListKind = 1))
AND  (I.Mounth ='+LTRIM( @Mounth)+ ' ) AND  (I.ArchiveID = 0)'








if (@SQLCalc<>'*')
begin
SET @SQLTxt=@SQLTxt+CHAR(13)+CHAR(13)+'GROUP BY P.PersonelNO ,FormTypes.SalaryEffectKind ,  FormsInfo.WageCalcKind'

IF (@SQLCalc like '%O_T.%')
  SET @SQLTxt=@SQLTxt+ ',ISNULL(ABS(O_T.OffTime),0)'


IF @SQLCalc like '%FC.%'
SET @SQLTxt=@SQLTxt+CHAR(13)+',FC.FunctionID , FC.FormInfoID , FC.ProjectID, FC.OfficeCode, FC.JobCede,	FC.BedBes, FC.ShowListKind , FC.ProcCode,
		      
        CASE FormTypes.TopicCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN FormsInfo.AccTopicCode
		ELSE FC.AccTopicCode END ,		
		CASE FormTypes.DetailCodeKind 
			WHEN 0 THEN 0 
			WHEN 2 THEN FormsInfo.AccDetailCode
			WHEN 7 THEN P.AccDetailCode
			WHEN 10 THEN (
						CASE WHEN FormsInfo.AccDetailCode >0 
							THEN FormsInfo.AccDetailCode 
							ELSE P.AccDetailCode END )
	ELSE FC.AccDetailCode END ,
	CASE FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 2 THEN FormsInfo.AccCTopicCode
		ELSE FC.AccCTopicCode END ,
	CASE FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN FormsInfo.AccCTopicCode2
	ELSE FC.AccCTopicCode2 END ,
	CASE FormTypes.CTopicCode3Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN FormsInfo.AccCTopicCode3
		ELSE 0 END  '
		
else
  IF ((@SQLCalc like '%F.%')OR((@SQLCalc like '%FI.%')))and(@SQLCalc like '%I.%')
	SET @SQLTxt=@SQLTxt+CHAR(13)+',F.FunctionID,F.FormInfoID ,F.ProjectID, F.OfficeCode,F.JobCode,F.Mounth,F.ProcCode,
	CASE FormTypes.TopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN I.AccTopicCode
		WHEN 2 THEN FormsInfo.AccTopicCode
		WHEN 3 THEN F_Project.AccTopicCode
		WHEN 4 THEN F_Office.AccTopicCode
		WHEN 5 THEN I.MasterAccTopicCode
		WHEN 6 THEN P.AccTopicCode
		WHEN 8 THEN F_Proc.AccTopicCode
		WHEN 9 THEN F_CT3.AccTopicCode
		WHEN 11 THEN LTRIM(LTRIM(F_Office.AccTopicCode)) +''''+ LTRIM(LTRIM(FormsInfo.AccTopicCode))				
		WHEN 12 THEN CASE WHEN FormsInfo.AccTopicCode<>0 THEN FormsInfo.AccTopicCode ELSE  F_Project.AccTopicCode END 					
	ELSE 0 END ,
	CASE FormTypes.DetailCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN I.AccDetailCode
		WHEN 2 THEN FormsInfo.AccDetailCode
		WHEN 3 THEN F_Project.AccDetailCode
		WHEN 4 THEN F_Office.AccDetailCode
		WHEN 5 THEN I.MasterAccDetailCode
		WHEN 6 THEN P.AccDetailCode
		WHEN 8 THEN F_Proc.AccDetailCode
		WHEN 9 THEN F_CT3.AccDetailCode
    	WHEN 11  THEN CASE WHEN FormsInfo.AccDetailCode =-1 THEN P.AccDetailCode ELSE FormsInfo.AccDetailCode  END 
	ELSE 0 END ,
	CASE FormTypes.CTopicCodeKind 
		WHEN 0 THEN 0 
		WHEN 1 THEN I.AccCTopicCode
		WHEN 2 THEN FormsInfo.AccCTopicCode
		WHEN 3 THEN F_Project.AccCTopicCode
		WHEN 4 THEN F_Office.AccCTopicCode
		WHEN 5 THEN I.MasterAccCTopicCode
		WHEN 6 THEN P.AccCTopicCode
		WHEN 8 THEN F_Proc.AccCTopicCode
		WHEN 9 THEN F_CT3.AccCTopicCode
    	WHEN 13  THEN CASE WHEN FormsInfo.AccCTopicCode =-1 THEN F_Project.AccCTopicCode ELSE FormsInfo.AccCTopicCode  END 
ELSE 0 END ,
	CASE FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 1 THEN I.AccCTopicCode2
		WHEN 2 THEN FormsInfo.AccCTopicCode2
		WHEN 3 THEN F_Project.AccCTopicCode2
		WHEN 4 THEN F_Office.AccCTopicCode2
		WHEN 5 THEN I.MasterAccCTopicCode2
		WHEN 6 THEN P.AccCTopicCode2
		WHEN 8 THEN F_Proc.AccCTopicCode2
		WHEN 9 THEN F_CT3.AccCTopicCode2
	ELSE 0 END ,
	CASE FormTypes.CTopicCode2Kind 
		WHEN 0 THEN 0 
		WHEN 2 THEN FormsInfo.AccCTopicCode3
		WHEN 3 THEN F_Project.AccCTopicCode3
		WHEN 4 THEN F_Office.AccCTopicCode3
		WHEN 8 THEN F_Proc.AccCTopicCode3
		WHEN 9 THEN F_CT3.AccCTopicCode3
	ELSE 0 END 
	 '			
	 else 
			SET @SQLTxt=@SQLTxt+CHAR(13)+',CASE FormTypes.TopicCodeKind 
				WHEN 0 THEN 0 				
				WHEN 2 THEN FormsInfo.AccTopicCode
				WHEN 3 THEN F_Project.AccTopicCode
				WHEN 4 THEN F_Office.AccTopicCode				
				WHEN 6 THEN P.AccTopicCode
				WHEN 8 THEN F_Proc.AccTopicCode
				WHEN 9 THEN F_CT3.AccTopicCode
				WHEN 11 THEN LTRIM(LTRIM(F_Office.AccTopicCode)) +''''+ LTRIM(LTRIM(FormsInfo.AccTopicCode))				
				WHEN 12 THEN CASE WHEN FormsInfo.AccTopicCode<>0 THEN FormsInfo.AccTopicCode ELSE  F_Project.AccTopicCode END 					
			ELSE 0 END,
			CASE FormTypes.DetailCodeKind 
				WHEN 0 THEN 0 				
				WHEN 2 THEN FormsInfo.AccDetailCode
				WHEN 3 THEN F_Project.AccDetailCode
				WHEN 4 THEN F_Office.AccDetailCode				
				WHEN 6 THEN P.AccDetailCode
				WHEN 8 THEN F_Proc.AccDetailCode
				WHEN 9 THEN F_CT3.AccDetailCode
    			WHEN 11  THEN CASE WHEN FormsInfo.AccDetailCode =-1 THEN P.AccDetailCode ELSE FormsInfo.AccDetailCode  END 
			ELSE 0 END,
			CASE FormTypes.CTopicCodeKind 
				WHEN 0 THEN 0 
				
				WHEN 2 THEN FormsInfo.AccCTopicCode
				WHEN 3 THEN F_Project.AccCTopicCode
				WHEN 4 THEN F_Office.AccCTopicCode
				
				WHEN 6 THEN P.AccCTopicCode
				WHEN 8 THEN F_Proc.AccCTopicCode
				WHEN 9 THEN F_CT3.AccCTopicCode
    			WHEN 13  THEN CASE WHEN FormsInfo.AccCTopicCode =-1 THEN F_Project.AccCTopicCode ELSE FormsInfo.AccCTopicCode  END 
		ELSE 0 END ,
			CASE FormTypes.CTopicCode2Kind 
				WHEN 0 THEN 0 
				
				WHEN 2 THEN FormsInfo.AccCTopicCode2
				WHEN 3 THEN F_Project.AccCTopicCode2
				WHEN 4 THEN F_Office.AccCTopicCode2
				
				WHEN 6 THEN P.AccCTopicCode2
				WHEN 8 THEN F_Proc.AccCTopicCode2
				WHEN 9 THEN F_CT3.AccCTopicCode2
			ELSE 0 END ,
			CASE FormTypes.CTopicCode2Kind 
				WHEN 0 THEN 0 
		
				WHEN 2 THEN FormsInfo.AccCTopicCode3
				WHEN 3 THEN F_Project.AccCTopicCode3
				WHEN 4 THEN F_Office.AccCTopicCode3
		
		--		WHEN 6 THEN P.AccCTopicCode2
				WHEN 8 THEN F_Proc.AccCTopicCode3
				WHEN 9 THEN F_CT3.AccCTopicCode3
			ELSE 0 END
			 '			
SET @SQLTxt=@SQLTxt+CHAR(13)+'HAVING '+@SQLCalcWhere
end
else
SET @SQLTxt=@SQLTxt+CHAR(13)+'AND '+@SQLCalcWhere

IF  @SQLCalc like '% ShowlistKind %'   --- add In 990328
SET @SQLTxt=REPLACE(  @SQLTxt,'MasterAcc','Acc')


		


SET @SQLTxt=@SQLTxt+CHAR(13)+'ORDER BY P.PersonelNo '

--print len( @SQLTxt)
print @SQLTxt
Exec(@SQLTxt)
END
  
  

  
GO

--CREATE FUNCTION FixCalculateTypePersonel  (@Mounth int =2 ,@year int=95,@YearMounth varCHAR(7)= '94/02',
-- @PersonelNoFROM int=0,@PersonelNoTo int=9999999 )  
--RETURNS  table  AS 

--return  (

--SELECT	Functions.PersonelNo, Functions.OfficeCode, 
--SUM(InterdictForUse.Amount) as price , 
--SUM(InterdictForUse.Amount)*  MAX(FunctionsItems.FDaily)  as FDailyAmount , 
--SUM(InterdictForUse.Amount)*  MAX(FunctionsItems.FHours) AS FHoursAmount ,
-- MAX(FunctionsItems.FDaily)  *SUM(InterdictForUse.Amount)*  MAX(FunctionsItems.FHours)/30  AS FDailyHoursAmount

--FROM         FunctionsItems INNER JOIN
--            Functions ON FunctionsItems.FunctionID = Functions.FunctionID INNER JOIN
--            InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo ,1 ) InterdictForUse ON Functions.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
--                (SELECT     *
--                    FROM         SalaryRange
--                    WHERE     kind = 0) salaryRange4Use ON InterdictForUse.SalaryID = salaryRange4Use.SalaryID AND 
--            FunctionsItems.SalaryID = salaryRange4Use.FormInfoID INNER JOIN
--            FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID INNER JOIN
--            FormTypes ON FormsInfo.FormType = FormTypes.FormType INNER JOIN
--            PersonelInfo ON Functions.PersonelNo = PersonelInfo.PersonelNo  

--WHERE     (FormTypes.SalaryKind = 4) 
----------------------------------------------------abedi
--AND (ISNULL( FormsInfo.WageCalcKind,0) = 0 )
----------------------------------------------------abedi
--AND      (Functions.Mounth = @Mounth and Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )
--GROUP BY  Functions.PersonelNo, Functions.OfficeCode 

--)
--GO
--------------------------------------------------------------------------------------------------------------------------------------------------------
--CREATE FUNCTION FixCalculateTypeOffice  (@Mounth int =2 ,@year int=95,@YearMounth varCHAR(7)= '94/02',
-- @PersonelNoFROM int=0,@PersonelNoTo int=9999999 )  
--RETURNS  table  AS 

--return  (

--SELECT	Functions.PersonelNo , Functions.OfficeCode,    SUM(InterdictForUse.Amount  ) AS Price
--          , SUM(InterdictForUse.Amount)* MAX( FunctionsItems.FHours) AS AmountFHours
--          , SUM(InterdictForUse.Amount)* MAX( FunctionsItems.FDaily) AS AmountFDaily 
--		  , MAX(FunctionsItems.FDaily)  *SUM(InterdictForUse.Amount)*  MAX(FunctionsItems.FHours)/30  AS FDailyHoursAmount 
--FROM         FunctionsItems INNER JOIN
--            Functions ON FunctionsItems.FunctionID = Functions.FunctionID INNER JOIN
--            InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo ,1 ) InterdictForUse ON Functions.PersonelNo = InterdictForUse.PersonelNo INNER JOIN
--                (SELECT     *
--                    FROM         SalaryRange
--                    WHERE     kind = 0) salaryRange4Use ON InterdictForUse.SalaryID = salaryRange4Use.SalaryID AND 
--            FunctionsItems.SalaryID = salaryRange4Use.FormInfoID INNER JOIN
--            FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID INNER JOIN
--            FormTypes ON FormsInfo.FormType = FormTypes.FormType INNER JOIN
--            PersonelInfo ON Functions.PersonelNo = PersonelInfo.PersonelNo  

--WHERE     (FormTypes.SalaryKind = 4) 
----------------------------------------------------abedi
--AND (ISNULL( FormsInfo.WageCalcKind,0) = 0 )
----------------------------------------------------abedi
--AND      (Functions.Mounth = @Mounth and Functions.PersonelNo between @PersonelNoFROM and @PersonelNoTo )
--GROUP BY  Functions.PersonelNo , Functions.OfficeCode 

--)
--------------------------------------------------------------------------------------------------------------------------------------------------------
GO

CREATE FUNCTION Pay.FixCalculateTypePersonel  (@Mounth int =2 ,@year int=95,@YearMounth varCHAR(7)= '94/02',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 )  
RETURNS  table  AS 

return  (

SELECT	InterdictForUse.PersonelNo, InterdictForUse.OfficeCode, InterdictForUse.ProjectID ,FormsInfo.FormInfoID ,
		SUM(InterdictForUse.Amount) as price 
FROM  Pay.InterdictForUse(@YearMounth,1,2,@PersonelNoFROM ,@PersonelNoTo ,1 )  INNER JOIN
                (SELECT     *
                    FROM         Pay.SalaryRange
                    WHERE     kind = 0) salaryRange4Use ON InterdictForUse.SalaryID = salaryRange4Use.SalaryID inner join  
            Pay.FormsInfo ON salaryRange4Use.FormInfoID = FormsInfo.FormInfoID INNER JOIN
            Pay.FormTypes ON FormsInfo.FormType = FormTypes.FormType  

WHERE     (FormTypes.SalaryKind = 4) AND (ISNULL( FormsInfo.WageCalcKind,0) = 0 )
GROUP BY InterdictForUse.PersonelNo, InterdictForUse.OfficeCode, InterdictForUse.ProjectID  ,FormsInfo.FormInfoID

)
GO

CREATE FUNCTION Pay.FixCalculateTypeOffice  (@Mounth int =2 ,@year int=95,@YearMounth varCHAR(7)= '94/02',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999  ,@SalaryID int =0)  
RETURNS  table  AS 

return  (

SELECT	Functions.PersonelNo , Functions.OfficeCode,    
		max(FCP.price)  AS PersonPrice  , 
		max(FCP.price)*max(FunctionsItems.FDaily) PersonPriceFdailyCo , 
		max(FunctionsItems.FDaily) as maxFDaily , 
		sum(FunctionsItems.FHours) sum_Fhours  ,
		max(FCP.price)*max(FunctionsItems.FDaily)*sum(FunctionsItems.FHours)/30  AS PersonPriceShare 
FROM		Pay.FunctionsItems INNER JOIN
            Pay.Functions ON FunctionsItems.FunctionID = Functions.FunctionID INNER JOIN
			Pay.FixCalculateTypePersonel(@Mounth  ,@year ,@YearMounth, @PersonelNoFROM ,@PersonelNoTo) AS FCP on FunctionsItems.SalaryID =FCP.FormInfoID and  Functions.PersonelNo = fcp.PersonelNo
WHERE (FunctionsItems.SalaryID = @SalaryID) AND (Functions.Mounth = @Mounth) AND (Functions.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo)
GROUP BY  Functions.PersonelNo , Functions.OfficeCode

)
--------------------------------------------------------------------------------------------------------------------------------------------------------
GO
CREATE    FUNCTION Pay.FixCalculateTypeOffice_formule  (@Mounth int =2 ,@year int=95,@YearMounth varCHAR(7)= '94/02',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 , @value money = 4427084028  ,@SalaryID int =0)  
RETURNS  table  AS 

return  (

SELECT FCPO.PersonelNO, FCPO.OfficeCode , 
max(FCPO.PersonPrice) as PersonPrice ,
max(AllOffice.PersonPrice) as PersonPrice_Office ,
max(FCPO.PersonPriceFdailyCo) as PersonPriceFdailyCo ,
MAX(AllOffice.PersonPriceFdailyCo) as  PersonPriceFdailyCo_Office   ,
max(FCPO.PersonPriceFdailyCo) /MAX(AllSum.PersonPriceFdailyCo) * @value as  BonusShare    ,
max(FCPO.PersonPriceShare) as PersonPriceShare ,
MAX(AllOffice.PersonPriceShare) as PersonPriceShare_Office
FROM Pay.FixCalculateTypeOffice(@Mounth ,@year ,@YearMounth, @PersonelNoFROM ,@PersonelNoTo,@SalaryID) AS FCPO  
inner join (select OfficeCode ,sum(PersonPriceFdailyCo) as PersonPriceFdailyCo , sum(PersonPriceShare) as PersonPriceShare   ,sum( PersonPrice) as PersonPrice
					from  Pay.FixCalculateTypeOffice(@Mounth ,@year ,@YearMounth, @PersonelNoFROM ,@PersonelNoTo,@SalaryID) 
					group by OfficeCode ) AS AllOffice  ON FCPO.OfficeCode = AllOffice.OfficeCode
Cross join  (select  sum(PersonPriceFdailyCo) as PersonPriceFdailyCo , sum(PersonPriceShare) as PersonPriceShare   ,sum( PersonPrice) as PersonPrice
					from  Pay.FixCalculateTypeOffice(@Mounth ,@year ,@YearMounth, @PersonelNoFROM ,@PersonelNoTo,@SalaryID) 
					) AS AllSum
group by FCPO.PersonelNO, FCPO.OfficeCode 


)



--------------------------------------------------------------------------------------------------------------------------------------------------------
GO
CREATE FUNCTION Pay.FixCalculateTypeProject  (@Mounth int =2 ,@year int=95,@YearMounth varCHAR(7)= '94/02',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 ,@SalaryID int =0)  
RETURNS  table  AS 

return  (

SELECT	Functions.PersonelNo , Functions.ProjectID,    
		max(FCP.price)  AS PersonPrice  , 
		max(FCP.price)*max(FunctionsItems.FDaily) PersonPriceFdailyCo , 
		max(FunctionsItems.FDaily) as maxFDaily , 
		sum(FunctionsItems.FHours) sum_Fhours  ,
		max(FCP.price)*max(FunctionsItems.FDaily)*sum(FunctionsItems.FHours)  /30  AS PersonPriceShare 
FROM		Pay.FunctionsItems INNER JOIN
            Pay.Functions ON FunctionsItems.FunctionID = Functions.FunctionID INNER JOIN
			Pay.FixCalculateTypePersonel(@Mounth ,@year ,@YearMounth, @PersonelNoFROM ,@PersonelNoTo) AS FCP on FunctionsItems.SalaryID =FCP.FormInfoID and  Functions.PersonelNo = fcp.PersonelNo
WHERE (FunctionsItems.SalaryID = @SalaryID) AND (Functions.Mounth = @Mounth) AND (Functions.PersonelNo BETWEEN @PersonelNoFROM AND @PersonelNoTo)
GROUP BY  Functions.PersonelNo , Functions.ProjectID 

)

--------------------------------------------------------------------------------------------------------------------------------------------------------




GO

GO
CREATE FUNCTION Pay.FixCalculateTypeProject_formule  (@Mounth int =2 ,@year int=95,@YearMounth varCHAR(7)= '94/02',
 @PersonelNoFROM int=0,@PersonelNoTo int=9999999 , @value money = 4427084028 ,@SalaryID int =0 )  
RETURNS  table  AS 

RETURN  (

SELECT FCPJ.PersonelNO, FCPJ.ProjectID , 
max(FCPJ.PersonPrice) as PersonPrice ,
max(AllProj.PersonPrice) as PersonPrice_proj ,
max(FCPJ.PersonPriceFdailyCo) as PersonPriceFdailyCo ,
MAX(AllProj.PersonPriceFdailyCo) as  PersonPriceFdailyCo_proj   ,
max(FCPJ.PersonPriceFdailyCo) /MAX(AllSum.PersonPriceFdailyCo) * @value as  BonusShare    ,
max(FCPJ.PersonPriceShare) as PersonPriceShare ,
MAX(AllProj.PersonPriceShare) as PersonPriceShare_proj
FROM FixCalculateTypeProject(@Mounth ,@year ,@YearMounth, @PersonelNoFROM ,@PersonelNoTo,@SalaryID) AS FCPJ  
inner join (select ProjectID ,sum(PersonPriceFdailyCo) as PersonPriceFdailyCo , sum(PersonPriceShare) as PersonPriceShare   ,sum( PersonPrice) as PersonPrice
					from  Pay.FixCalculateTypeProject(@Mounth ,@year ,@YearMounth, @PersonelNoFROM ,@PersonelNoTo,@SalaryID) 
					group by ProjectID ) AS AllProj ON FCPJ.ProjectID = AllProj.ProjectID
Cross join  (select  sum(PersonPriceFdailyCo) as PersonPriceFdailyCo , sum(PersonPriceShare) as PersonPriceShare   ,sum( PersonPrice) as PersonPrice
					from  Pay.FixCalculateTypeProject(@Mounth ,@year ,@YearMounth, @PersonelNoFROM ,@PersonelNoTo,@SalaryID) 
					) AS AllSum
group by FCPJ.PersonelNO, FCPJ.ProjectID )



GO
CREATE FUNCTION Pay.Fn_Tide( @FormInfoID int=0 )  
RETURNS table AS 
return
(
select PersonelNo,
	 sum(   case when FI.FormInfoID = @FormInfoID  then PD.DayQuntity					else 0	end ) as DayQuntity, 
	 sum(	case when FI.FormInfoID = @FormInfoID  then EmployeeAmount				else 0	end ) as BonusPrise,
	 sum(	case when FI.FormInfoID = @FormInfoID  then PaymentLoan					else 0	end ) as TaxPrice,
	 sum(	case when FI.FormInfoID = @FormInfoID  then EmployeeAmount - PaymentLoan	else 0	end ) as BonusPayAble,
	 sum(	case when FI.formtype=58     then EmployeeAmount				else 0	end	) as PaymentBonus,
	 sum(	case when FI.FormInfoID = @FormInfoID  then EmployeeAmount - PaymentLoan	else 0	end  -
	        case when FI.formtype=58	 then EmployeeAmount				else 0	end ) as DifBonusPayAble,
	 sum(   case when FI.FormType=32     then PD.DayQuntity					else 0	end ) as FirstAnnuity ,
	 sum(   case when FI.FormInfoID = @FormInfoID  then PD.DayQuntity					else 0	end ) as NowDayQuntity,
	 sum(   case when FI.FormType=32     then PD.DayQuntity					else 0	end  +
	        case when FI.FormInfoID = @FormInfoID  then PD.DayQuntity					else 0	end ) as SumDayQuntity,
	 sum(   case when FI.FormInfoID = @FormInfoID  then PD.EmployerAmount				else 0	end ) as NowAnnuityPrice,
	 sum(   case when FI.FormType=32     then PD.EmployeeAmount			    else 0	end ) as LastAnnuityPrice ,
	 sum(   case when FI.FormInfoID = @FormInfoID  then PD.EmployerAmount				else 0	end +
            case when FI.FormType=32     then PD.EmployeeAmount			    else 0	end ) as SumAnnuityPrice
 from Pay.PersonelDecExt PD
inner join Pay.FormsInfo FI on PD.FormInfoID=FI.FormInfoID
where  (FI.FormInfoID = @FormInfoID or formtype=58   or FormType=32 )
group by PersonelNo


)
----------------------------------------------------------------------
----------------------------------------------------------------------
GO
CREATE PROCEDURE Pay.[GetPersonelDecExtPrice] AS
begin
DECLARE abc CURSOR FOR   SELECT DISTINCT  PD.FormInfoID ,'[PDE.'+ F.InfoName_L1+']' 
  FROM   Pay.PersonelDecExt PD INNER JOIN FormsInfo F ON PD.FormInfoID = F.FormInfoID  
  INNER JOIN Pay.FormTypes T ON T.FormType = F.FormType  
    WHERE T.SalaryKind IN(12,13)
	ORDER BY PD.FormInfoID;

declare @Query varchar(max)
declare @CASEQuery varchar(max)
set     @CASEQuery=''

DECLARE @SalayId int 
DECLARE @InfoName  varchar(50)
OPEN abc;
FETCH NEXT FROM abc into @SalayId,@InfoName
WHILE (@@FETCH_STATUS = 0)
BEGIN              
set @CASEQuery=@CASEQuery+CHAR(13)+',SUM(CASE PDE.FormInfoID WHEN '+ltrim(@SalayId)+
               ' THEN ISNULL(PDE.EmployeeAmount,0) ELSE 0 END) AS EA_'+ltrim(str(@SalayId))
	FETCH NEXT FROM abc into @SalayId,@InfoName
 --   print @CASEQuery
end
CLOSE abc;
DEALLOCATE abc;

set @Query='if exists (SELECT * FROM sysobjects where id = object_id(N''Pay.[PersonelDecExtMounth]'') and xtype in (N''FN'',N''IF'',N''TF''))
			 drop function Pay.[PersonelDecExtMounth]'

Exec (@Query)


set @Query='create FUNCTION Pay.PersonelDecExtMounth( @Mounth int=12) RETURNS TABLE AS  RETURN 
(  SELECT PDE.PersonelNo'+@CASEQuery+CHAR(13)+
'   FROM Pay.PersonelDecExt PDE
    WHERE  (PDE.FirstMounth <= @Mounth )AND(PDE.EndMounth >= @Mounth) AND(PDE.State <> 1)
    GROUP BY PDE.PersonelNo) '
--print @Query
Exec (@Query)
END
----------------------------------------------------------------------
----------------------------------------------------------------------
GO

CREATE PROCEDURE pay.GetPayroll @NationalID varchar(12),@YearID int = 1401 ,@Month int=5,
                             @JsonOutput int = 1  OUTPUT
as

BEGIN
SET NOCOUNT ON
DECLARE @TempTable TABLE(
	Kind nvarchar(255) NULL ,
	SalaryID int NULL,
	InfoName nvarchar(255) NULL,
	Price money  NULL,
	calculatekind int  NULL,
	FHours nvarchar(255) NULL,
	FDaily decimal(18,4) NULL,
	RemainDayDec nvarchar(255)  NULL
	)

DECLARE @ErrorTable TABLE(
	NationalID varchar(12) NULL ,
	ErrorMsg nvarchar(255) NULL
	)

DECLARE @PersonelNo int

SELECT @PersonelNo=PersonelNo from pay.PersonelInfo where  NationalID = @NationalID
if ISNULL(@PersonelNo,0) = 0
INSERT INTO @ErrorTable
 select @NationalID AS NationalID , 'کد ملی وجود ندارد' AS ErrorMsg

DECLARE @OffTimeInFish tinyint
SELECT @OffTimeInFish=OffTimeInFish from pay.config 
DECLARE @ArchiveID Bigint
SELECT @ArchiveID=ArchiveID from pay.[FinalArchive] where Mounth = @Month --and Years = @YearID

if ISNULL(@ArchiveID,0) = 0
INSERT INTO @ErrorTable
 select @NationalID AS NationalID , 'اطلاعات بایگانی برای این پرسنل وجود ندارد' AS ErrorMsg





INSERT INTO @TempTable
SELECT 'WageDay' Kind ,Max(FormInfoID)  SalaryID ,'حقوق روزانه' InfoName_L1 ,
                          (SELECT     CAST(ROUND((CASE WHEN SUM(FunctionDay) <> 0 THEN SUM(price) / SUM(FunctionDay) ELSE 0 END), 0) AS money) AS WageDay
                             FROM Pay.FixedCalculated LEFT OUTER JOIN
                                                   Pay.FormsInfo ON FixedCalculated.SalaryID = FormsInfo.FormInfoID
                             WHERE     (FixedCalculated.ArchiveID = @ArchiveID ) AND (FixedCalculated.Mounth = Functions.Mounth) AND (FixedCalculated.PersonelNO = Functions.PersonelNo) AND 
                                                   (FormsInfo.FormType = 22) AND (FormsInfo.InfoID BETWEEN 1 AND 4)) AS Price,0 as calculatekind ,'0.0' FHours 
												    , 0 AS FDaily--, SUM(FunctionTime) AS FunctionTime,SUM(SickDay) AS SickDay
													,'' AS RemainDayDec
FROM Pay.Functions
WHERE     (Mounth =  @Month ) AND (PersonelNo = @PersonelNo ) AND (YearID = @YearID)
GROUP BY Mounth, PersonelNo

INSERT INTO @TempTable
SELECT 'Function' Kind ,Max(FormInfoID)  SalaryID ,'تعداد روزهای کارکرد' InfoName_L1 ,0 AS Price,0 as calculatekind ,'0.0' FHours 
												    , SUM(FunctionDay) AS FDaily--, SUM(FunctionTime) AS FunctionTime,SUM(SickDay) AS SickDay
													,'' AS RemainDayDec
FROM Pay.Functions
WHERE     (Mounth =  @Month ) AND (PersonelNo = @PersonelNo ) AND (YearID = @YearID)
GROUP BY Mounth, PersonelNo


INSERT INTO @TempTable
SELECT 'OverTime' Kind , FunctionsItems.SalaryID, FormsInfo.InfoName_L1 ,0.0 as Price,0 as calculatekind
,CASE WHEN SUM(FunctionsItems.FHours)=0 THEN '' ELSE LTRIM(STR(FLOOR(SUM(FunctionsItems.FHours)))) + ':' + LTRIM(STR(ROUND(ROUND(SUM(FunctionsItems.FHours) 
                         - FLOOR(SUM(FunctionsItems.FHours)), 2) / 100 * 60, 2) * 100)) END AS FHours
                         ,SUM(FunctionsItems.FDaily) AS FDaily
						 ,'' AS RemainDayDec

FROM         pay.Functions F INNER JOIN
                       pay.FunctionsItems ON F.FunctionID = FunctionsItems.FunctionID INNER JOIN
                       pay.FormsInfo ON FunctionsItems.SalaryID = FormsInfo.FormInfoID
WHERE     (F.Mounth = @Month) AND (F.PersonelNo = @PersonelNo) AND (F.YearID = @YearID)
GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1
HAVING      (ROUND(SUM(FunctionsItems.FDaily),0) > 0) OR
                      (SUM(FunctionsItems.FHours) > 0)

INSERT INTO @TempTable
SELECT 'RemainDayDec' Kind ,  SalaryID, InfoName_L1,0.0 as Price,0 as calculatekind,   '0:0' AS FHours,0  AS FDaily,  pay.RemainDayDec(RemainDay) AS RemainDayDec


  FROM  pay.GETOffTimeInFish (  @Month, 0, 999999, @PersonelNo  , @OffTimeInFish )
 WHERE(SELECT OffTimeInFish FROM  pay.Config)>0   

INSERT INTO @TempTable
SELECT 'Wage' Kind , * ,'' AS FHours ,0 AS FDaily ,'' AS RemainDayDec 
FROM (

SELECT  (SELECT top 1 FormInfoID from pay.formsinfo where formtype = 47 and infoid = 1 ) as SalaryID ,
		(SELECT top 1 InfoName_L1 from pay.formsinfo where formtype = 47 and infoid = 1 )  as InfoName_L1,
		EmployeeAmount as Price ,
		0 as calculatekind	
FROM          pay.PersonelDecExt 
WHERE	(FormInfoID = (SELECT top 1 FormInfoID from pay.formsinfo where formtype = 59) ) 
  And	(PersonelNo = @PersonelNo )  And abs(Substring (enddate,6,2)) = @Month  
   AND (YearID = @YearID)


UNION ALL
SELECT  (SELECT top 1 FormInfoID from pay.formsinfo where formtype = 47 and infoid = 2 ) as SalaryID ,
		(SELECT top 1 InfoName_L1 from pay.formsinfo where formtype = 47 and infoid = 2 )  as InfoName_L1,
		EmployerAmount as Price ,
		0 as calculatekind	
FROM          pay.PersonelDecExt
WHERE	(FormInfoID = (SELECT top 1 FormInfoID from pay.formsinfo where formtype = 59) ) And
		(PersonelNo = @PersonelNo )  And
		abs(Substring (enddate,6,2)) = @Month
		 AND (YearID = @YearID)
UNION ALL

SELECT        PE.FormInfoID AS SalaryID, FormsInfo.InfoName_L1
, SUM(PE.EmployeeAmount) AS Price, 0 AS calculatekind

FROM             pay.PersonelDecExt PE INNER JOIN
                          pay.FormsInfo ON PE.FormInfoID = FormsInfo.FormInfoID
WHERE        (FormsInfo.FormType = 111)
AND (PE.PersonelNo = @PersonelNo)
AND (PE.FirstMounth = @Month)
 AND (PE.YearID = @YearID)
GROUP BY PE.FormInfoID, FormsInfo.InfoName_L1


UNION ALL


SELECT Fc.SalaryID, F.InfoName_L1 + CASE WHEN Fc.Mounth <> isnull(Fc.MounthRetard,0)
THEN  isnull('(' + 'معوقه ماه ' + LTRIM(STR(Fc.MounthRetard))+ ')'  ,'')   ELSE

  '' END AS InfoName_L1 ,
     SUM(Fc.Price) AS Price,0 as calculatekind

FROM   pay.FixedCalculated Fc LEFT OUTER JOIN
                       pay.FormsInfo F ON Fc.SalaryID = F.FormInfoID
WHERE     (Fc.Mounth = @Month)
 --AND (Fc.YearID = @YearID)
AND (Fc.ShowListKind = 1)
AND (Fc.PersonelNO = @PersonelNo)
AND (Fc.ArchiveID = @ArchiveID)
AND (Fc.Price<>0)

GROUP BY Fc.SalaryID, F.InfoName_L1 , Fc.MounthRetard,Fc.Mounth 


 )aaaa

INSERT INTO @TempTable
SELECT 'Dec' Kind , SalaryID,max(InfoName_L1) as  InfoName_L1,sum(Price) as Price,calculatekind 
,'' AS FHours ,0 AS FDaily ,'' AS RemainDayDec 

 FROM (

SELECT  Fc.SalaryID,
        CASE  WHEN FC.ShowlistKind=11  THEN 'ماليات' ELSE F.InfoName_L1 END AS InfoName_L1,
        SUM(Fc.Price) AS Price,SUM(Fc.Price) AS LoanRemain
        ,  calculatekind  
FROM   pay.FixedCalculated  Fc LEFT OUTER JOIN
         pay.FormsInfo F ON Fc.SalaryID = F.FormInfoID
WHERE   (Fc.Mounth = @Month)  AND (Fc.YearID = @YearID)
 AND ((Fc.ShowListKind = 2) OR(Fc.ShowListKind = 11))
AND (Fc.PersonelNO =  @PersonelNo)
and (Fc.bedbes=2)
AND (Fc.ArchiveID = @ArchiveID)

GROUP BY Fc.FunctionID,Fc.SalaryID,
        F.InfoName_L1, FC.ShowlistKind
         , Fc.MounthRetard ,  FC.calculatekind


UNION ALL
SELECT  (SELECT top 1 FormInfoID from pay.formsinfo where formtype = 47 and infoid = 1 ) as SalaryID ,
		'مالیات '+(SELECT top 1 InfoName_L1 from pay.formsinfo where formtype = 47 and infoid = 1 )  as InfoName_L1,
		PaymentLoan  as Price ,0 as LoanRemain ,
		
		0 as calculatekind	
FROM          pay.PersonelDecExt
WHERE	(FormInfoID = (SELECT top 1 FormInfoID from pay.formsinfo where formtype = 59) ) And
		(PersonelNo = @PersonelNo )  And
		ABS(SUBSTRING (enddate,6,2)) = @Month
		 AND (YearID = @YearID)

UNION ALL

SELECT       91 AS SalaryID, 'ماليات'  as InfoName_L1
, SUM(PE.PaymentLoan) AS Price,0 as LoanRemain ,
	     11 AS calculatekind
FROM             pay.PersonelDecExt PE INNER JOIN
                          pay.FormsInfo ON PE.FormInfoID = FormsInfo.FormInfoID
WHERE        (FormsInfo.FormType = 111)
AND (PE.PersonelNo = @PersonelNo )
AND (PE.FirstMounth = @Month)
 AND (PE.YearID = @YearID)
GROUP BY PE.FormInfoID, FormsInfo.InfoName_L1

)abdc
GROUP BY SalaryID,calculatekind

INSERT INTO @TempTable
SELECT  Kind ,  0 AS SalaryID,InfoName_L1 , Price  ,0 as calculatekind,'' AS FHours ,0 AS FDaily ,'' AS RemainDayDec  
FROM(

SELECT 'Tax' Kind , 'مشمول ماليات' as InfoName_L1 ,SUM(Price) AS Price FROM(

SELECT SUM(Price) AS Price FROM  pay.FixedCalculated
    Where (Mounth = @Month)  AND (YearID = @YearID) AND (PersonelNO = @PersonelNO )
     AND (ShowListKind = 11)
    AND (bedbes = 0)  AND (CalCulateKind = 12)
    AND (ArchiveID = @ArchiveID )
    GROUP BY Mounth, PersonelNO, ShowListKind
UNION ALL
 
 SELECT SUM(PersonelDecExt.EmployeeAmount) AS Price
    FROM  pay.PersonelDecExt INNER JOIN
     pay.FormsInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID
    WHERE (FormsInfo.FormType = 111) and (FormsInfo.InfoID <= 10)
    AND (PersonelDecExt.PersonelNo = @PersonelNo )
    AND (PersonelDecExt.FirstMounth = @Month ))aaaaa

UNION ALL
SELECT  'Insurance' Kind ,'مشمول بيمه'  as InfoName  ,SUM(Price) AS SumTax FROM  pay.FixedCalculated
    Where (Mounth = @Month)  AND (YearID = @YearID) AND (PersonelNO = @PersonelNO)
     AND (ShowListKind = 3) AND (BedBes=0)
    AND (ArchiveID = @ArchiveID )     
    GROUP BY Mounth, PersonelNO, ShowListKind


	)TaxIns


DECLARE @SumWage money=0
DECLARE @SumDec money=0
SELECT @SumWage =@SumWage +case when Kind = 'Wage' then price else 0 end ,
       @SumDec =@SumDec +case when Kind = 'Dec' then price else 0 end 
from  @TempTable


INSERT INTO @TempTable
SELECT  'SumWage' Kind ,  NULL AS SalaryID,'جمع مزایا' InfoName_L1 ,@SumWage Price  ,0 AS calculatekind,'' AS FHours ,0 AS FDaily ,'' AS RemainDayDec  

INSERT INTO @TempTable
SELECT  'SumDec' Kind ,  NULL AS SalaryID,'جمع کسورات' InfoName_L1 ,@SumDec Price  ,0 AS calculatekind,'' AS FHours ,0 AS FDaily ,'' AS RemainDayDec  

INSERT INTO @TempTable
SELECT  'SumWage-SumDec' Kind ,  NULL AS SalaryID,'خالص پرداختی' InfoName_L1 ,@SumWage-@SumDec Price  ,0 AS calculatekind,'' AS FHours ,0 AS FDaily ,'' AS RemainDayDec  

if @JsonOutput = 1 
begin
if  (SELECT SERVERPROPERTY('ProductVersion'))>'12.0.1000.6'
exec('
  if (SELECT count(*) from @ErrorTable ) = 0
     SELECT cast((SELECT Kind,InfoName,Price,FHours,FDaily,RemainDayDec FROM @TempTable FOR JSON auto
     )AS nvarchar(max)) AS PayJson
  else
   
   SELECT cast((SELECT * FROM @ErrorTable FOR JSON auto--path 
     )AS nvarchar(max)) AS PayJson

')   

end
else
begin
  if (SELECT count(*) from @ErrorTable ) = 0
      SELECT Kind,InfoName,Price,FHours,FDaily,RemainDayDec FROM @TempTable
  else
    select @NationalID AS NationalID , 'اطلاعات بایگانی برای این پرسنل وجود ندارد' AS ErrorMsg

end


RETURN(@PersonelNo)
END

GO
