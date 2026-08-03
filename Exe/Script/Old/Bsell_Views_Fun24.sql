--24  تاريخ 1402/11/12    

if exists (SELECT * from sysobjects where id = object_id(N'Aid_MakeDocuments_Recipt_Payments') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Aid_MakeDocuments_Recipt_Payments
GO
if exists (SELECT * from sysobjects where id = object_id(N'ALL_MakeDocuments') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION ALL_MakeDocuments
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Sp_UpdateChildFromFather') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE Sp_UpdateChildFromFather
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'SP_CalcTopCheck') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE SP_CalcTopCheck
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'createTRIGGER4LinkServer') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE createTRIGGER4LinkServer
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Sp_Run_Synchronization') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE Sp_Run_Synchronization
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'ReciptReturn') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE ReciptReturn
GO

------------


SET QUOTED_IDENTIFIER ON 
GO
CREATE FUNCTION Aid_MakeDocuments_Recipt_Payments  ( @AllDocAble Tinyint=0,@NumberFrom int=-9999999, @NumberTo int=99999999 , 
				@DateFrom varchar(10)='0000/00/00', @DateTo varchar(10)='9999/99/99',
				@AidDateFrom varchar(10)='0000/00/00', @AidDateTo varchar(10)='9999/99/99',
				@StoreIDFrom smallint =-999, @StoreIDTo smallint =999 , 
				@ItemTopicCode bigint =0 ,@SecondTpFrom int=0 , @SecondTpTo int=100,
                @CustomerGrpIDFrom  int=0 ,  @CustomerGrpIDTo  int=999999 ,
                @ReciptStateFrom  int=0 ,  @ReciptStateTo  int=99 ,
                @CustID1Form  int=0 ,  @CustID1To  int=999999999 ,
                @CustID2Form  int=0 ,  @CustID2To  int=999999999 ,
                @CustID3Form  int=0 ,  @CustID3To  int=999999999 ,
                @SellsEmporiumFrom int=0,@SellsEmporiumTo int = 999999999 ,
                @MakeDocKind int =1  ,
                @ReciptsRowFrom int=0,@ReciptsRowTo int = 999999999 
				,@ReciptTypeFrom int=5, @ReciptTypeTo int=5 ,@NotReciptNumber varchar(max),@NotCustID1 varchar(max) ,@addIDFilter varchar(max))

  RETURNS @retFindReports TABLE  (
	IDs varchar(max),
    ID bigint  ,
    ReciptItemID int NULL,
	ReciptID int NULL,
	StoreID smallint NULL,
	StoreName varchar(70)  COLLATE DATABASE_DEFAULT NULL,
	ReciptNumber int NULL,
	ReciptDate char(10)   COLLATE DATABASE_DEFAULT NULL,
	ReciptType tinyint NULL,
	CustID int NULL,
	CustName varchar(160)  COLLATE DATABASE_DEFAULT NULL,
	StuffCode bigint NULL,
	c_StuffName varchar(250)  COLLATE DATABASE_DEFAULT NULL,
	BedType tinyint NULL,
	ReciptCaption varchar(170)  COLLATE DATABASE_DEFAULT NULL,
	Entity float NULL,
	Weight float NULL,
	bed money NULL,
	bes money  NULL,
	BedBes int  NULL,
	TopicCode bigint NULL,
	DetailCode int NULL,
	CTopicCode int NULL,
	CTopicCode2 int NULL,
	CTopicCode3 int NULL,
	kind int  NULL,
	AidNumber decimal(18, 4) NULL,
	AidDate char(10)   COLLATE DATABASE_DEFAULT NULL,
	IAidNumber decimal(18, 4) NULL,
	IAidDate char(10)   COLLATE DATABASE_DEFAULT NULL,
	ControlCode bigint NULL,
	ServerID int NULL,
	YearID int NULL,
	ItemNote varchar(1000)  COLLATE DATABASE_DEFAULT NULL,
	ReciptNote varchar(1000)  COLLATE DATABASE_DEFAULT NULL,
	UnitSellPrice money NULL,
	MachineName varchar(150)  COLLATE DATABASE_DEFAULT NULL,
	MachineNo varchar(25)  COLLATE DATABASE_DEFAULT NULL,
	MachineInfo varchar(150)  COLLATE DATABASE_DEFAULT NULL,
	TruckNumber varchar(150)  COLLATE DATABASE_DEFAULT NULL,
	ArzAmount float  NULL,
	reciptsrow int  NULL,
	CustName2 varchar(160)  COLLATE DATABASE_DEFAULT NULL,
	UnitName  varchar(50)  COLLATE DATABASE_DEFAULT NULL,
	StuffDiameter float ,
	PO  varchar(30)  COLLATE DATABASE_DEFAULT,
	ArzTypeID int NULL,
	UseUnitName  varchar(70)  COLLATE DATABASE_DEFAULT NULL,
	UseUnitNameM  varchar(70)  COLLATE DATABASE_DEFAULT NULL,
	ArzRate  money ,
	ArzName varchar(50),
	RialsEqual money,
    SellsEmporiumName varchar(100),
	CustName3 varchar(160) COLLATE DATABASE_DEFAULT  ,
	EffectType tinyint,
	CurrencyDiscounts   decimal(18, 4),
	Currencydebit   decimal(18, 4),
	Currencycredit   decimal(18, 4),
	CurrencyRate   decimal(18, 4)

  )AS 
BEGIN  
INSERT INTO @retFindReports
                
---------کسورات و اضافات خطی ---------------

 
SELECT	'' AS IDs,Recipts.ID,0 as  ReciptitemID,  
		Recipts.ReciptID , 
		Recipts.StoreID,Stores_1.c_StoreName, 
		Recipts.ReciptNumber  as  ReciptNumber, 
		Recipts.ReciptDate, Recipts.ReciptType, Customers_rp.CustID,Customers_rp.CustName,0 as StuffCode,  
		'' as c_StuffName,RT.BedType, 
		CASE WHEN (PaymentKind = 9) THEN 'نحوه پرداخت'
			 WHEN (PaymentKind = 10) THEN 'واسط فروش'
		ELSE RT.ReciptCaption END ,
		0 AS Entity,
		0 AS Weight,

		case when (ReciptTypesAccCode.BedBes = 0 )
			then 
				case InfoKind 

					when 9 then   --- نحوه پرداخت 
						case 
							when PaymentKind =9 then isnull(RP.SumPayment ,0)

							else 0 
						end --- نحوه پرداخت  

					when 10 then   --- پورسانت فروش - فرم نحوه پرداخت 
						case 
							when PaymentKind =10  then isnull(RP.SumPayment ,0)

							else 0 
						end --- پورسانت فروش - فرم نحوه پرداخت 
					else 0
				end
			else 0	
end  AS bed ,

		case when (ReciptTypesAccCode.BedBes = 1 )
			then 
				case InfoKind 

					when 9 then   --- نحوه پرداخت 
						case 
							when PaymentKind =9 then ISNULL(RP.SumPayment ,0)

							else 0 
						end --- نحوه پرداخت  

					when 10 then   --- پورسانت فروش - فرم نحوه پرداخت 
						case 
							when PaymentKind =10  then ISNULL(RP.SumPayment ,0)

							else 0 
						end --- پورسانت فروش - فرم نحوه پرداخت 
					else 0
				end
			else 0	
end  AS  bes,

		BedBes, 

		case when  ReciptTypesAccCode.TopicCode	<0 
			then  
				case (case  ReciptTypesAccCode.TopicCode when -1 then   RT.DefaultTopic_Bed else RT.DefaultTopic_Bes end )
					when 0 then 0 

					when 4 then 
						case RT.CustCodeUse4Bed 
							when 3 then case  when Customers_2.acc_TopicCode >0 then Customers_2.acc_TopicCode else CustomersGroup_2.acc_TopicCode end 
							when 2 then case  when Customers_3.acc_TopicCode >0 then Customers_3.acc_TopicCode else CustomersGroup_3.acc_TopicCode end 
							when 1 then case  when Customers_1.acc_TopicCode >0 then Customers_1.acc_TopicCode else CustomersGroup_1.acc_TopicCode end
							else -1 
						end 
					when 5 then  -2
					when 6 then  LookUps_2.acc_TopicCode
					when 9 then  RT.ConstTopicCode_Bed
					else 0 
				end 
			else ReciptTypesAccCode.TopicCode 
		end as TopicCode , 

		case   ReciptTypesAccCode.DetailCode
			when 0 then  0 
			when -1 then Customers_2.acc_DetailCode 
			when -2 then Customers_3.acc_DetailCode 
			when -3 then Customers_1.acc_DetailCode 
			when -4 then Customers_4.acc_DetailCode 
			when -12 then Stores_1.c_accCTopicCode
			else  
			case    ReciptTypesAccCode.DetailCode    
					when -1 then Customers_2.acc_DetailCode 
					when -2 then Customers_3.acc_DetailCode 
					when -3 then Customers_1.acc_DetailCode
					when -4 then Customers_4.acc_DetailCode  
				else ReciptTypesAccCode.DetailCode 
			end 
		end as DetailCode , 

		case ReciptTypesAccCode.CTopicCode  
			when -1 then Customers_2.acc_CTopicCode 
			when -2 then Customers_3.acc_CTopicCode 
			when -3 then Customers_1.acc_CTopicCode 
			when -4 then Customers_4.acc_CTopicCode
			when -5 then UnitMaster.UseUnitID
			when -12 then Stores_1.c_accCTopicCode ---Abedi Sorouri
			when -13 then UnitMaster.acc_CTopicCode
			when -14 then UseOthersMaster.CTopicCode
			else 
				case 	(
							case  ReciptTypesAccCode.CTopicCode 
								when -100 then   RT.DefaultCTopic_Bed 
								when -101 then  RT.DefaultCTopic_Bes 
								else -999
							end 
						 )
					when 1 then Stores_1.c_accCTopicCode

				else ReciptTypesAccCode.CTopicCode  
			end 
	end as CTopicCode ,



		case ReciptTypesAccCode.CTopicCode2 
			when -1 then Customers_2.acc_CTopicCode2 
			when -2 then Customers_3.acc_CTopicCode2 
			when -3 then Customers_1.acc_CTopicCode2 
			when -4 then Customers_4.acc_CTopicCode2
			when -5 then UnitMaster.UseUnitID
			else ReciptTypesAccCode.CTopicCode2  
		end as CTopicCode2 ,

		case ReciptTypesAccCode.CTopicCode3 
			when -1 then Customers_2.acc_CTopicCode3 
			when -2 then Customers_3.acc_CTopicCode3 
			when -3 then Customers_1.acc_CTopicCode3 
			when -4 then Customers_4.acc_CTopicCode3
			when -5 then UnitMaster.UseUnitID
			else ReciptTypesAccCode.CTopicCode3  
		end as CTopicCode3 ,

		1 as kind ,ISNULL(Recipts.AidNumber,0) AS AidNumber ,Recipts.AidDate,0 as IAidNumber,
		'' as IAidDate,0 as ControlCode,Recipts.ServerID,Recipts.YearID, ISNULL(ReciptTypesAccCode.Note,'') as ItemNote ,Recipts.ReciptNote,
		0 as UnitSellPrice,Recipts.MachineName ,Recipts.MachineNo,Recipts.MachineInfo,Recipts.TruckNumber,
		0 AS ArzAmount , ISNULL(Recipts.reciptsrow,0)  as reciptsrow , 
		Customers_2.CustName AS CustName2 , '' as UnitName, 0.0 as StuffDiameter, '' as PO, Recipts.ArzTypeID, UnitMaster.UseUnitName
		, UnitMaster.UseUnitName, 0 AS ArzRate,Currencies.CurrenciesName AS ArzName
		,Recipts.RialsEqual,SellsEmporiums.SellsEmporiumName,Customers_3.CustName as CustName3,RT.EffectType,0.0 as CurrencyDiscounts
		, 0.0 AS Currencydebit, 0.0 AS Currencycredit, 0.0 CurrencyRate

FROM	Recipts  INNER JOIN 
		(
			SELECT reciptid , serverid , yearid ,PaymentKind ,CustID , sum(Payment) as SumPayment
			FROM  ReciptsPayments  
			WHERE	 (( DocNo < 1)OR(@AllDocAble=1))

			group by reciptid , serverid , yearid  ,PaymentKind ,CustID
		)  RP on  rp.ReciptID = Recipts.ReciptID AND rp.ServerID = Recipts.ServerID AND rp.YearID = Recipts.YearID Inner join 
		Stores AS Stores_1 ON Recipts.StoreID = Stores_1.n_StoreID INNER JOIN
		ReciptTypes RT ON RT.ReciptType = Recipts.ReciptType LEFT outer  join 
		LookUps AS LookUps_2 ON Recipts.SecondType = LookUps_2.LookUpID LEFT outer JOIN
		Stores AS Stores_2 oN Recipts.StoreID2 = Stores_2.n_StoreID INNER JOIN
		Customers AS Customers_1 ON Recipts.PersonID1 = Customers_1.CustID  INNER JOIN
		Customers AS Customers_2 ON Recipts.PersonID2 = Customers_2.CustID INNER JOIN
		Customers AS Customers_3 ON Recipts.PersonID3 = Customers_3.CustID INNER JOIN
		Customers AS Customers_4 ON Recipts.PersonID4 = Customers_4.CustID INNER JOIN
		Customers AS Customers_RP ON Rp.CustID = Customers_RP.CustID INNER JOIN
		CustomersGroup AS CustomersGroup_1 on  CustomersGroup_1.CustomerGrpID = Customers_1.CustomerGrpID INNER JOIN
		CustomersGroup AS CustomersGroup_2 on CustomersGroup_2.CustomerGrpID = Customers_2.CustomerGrpID INNER JOIN
		CustomersGroup AS CustomersGroup_3 on CustomersGroup_3.CustomerGrpID = Customers_3.CustomerGrpID INNER JOIN 
		CustomersGroup AS CustomersGroup_4 on CustomersGroup_4.CustomerGrpID = Customers_4.CustomerGrpID INNER JOIN 
		CustomersGroup AS CustomersGroup_Rp on CustomersGroup_rp.CustomerGrpID = Customers_rp.CustomerGrpID INNER JOIN 
		ReciptTypesAccCode on RT.ReciptType = ReciptTypesAccCode.ReciptType LEFT OUTER JOIN
        UseUnits UnitMaster ON recipts.UseUnitID = UnitMaster.UseUnitID  LEFT OUTER JOIN
        dbo.UseOthers UseOthersMaster ON recipts.UseOtherID = UseOthersMaster.UseOtherID 
		LEFT OUTER JOIN  Currencies  ON Recipts.ArzTypeID = Currencies.CurrenciesID  LEFT OUTER JOIN
		SellsEmporiums ON Recipts.SellsEmporium = SellsEmporiums.SellsEmporium 



WHERE	(Recipts.ReciptNumber BETWEEN @NumberFrom  AND @NumberTo  ) AND 
		(Recipts.ReciptState < ReciptStateSmallerThan) AND  
		(Recipts.ReciptState BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) AND 
		(Customers_2.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) AND
		(Recipts.ReciptDate BETWEEN @DateFrom  AND @DateTo ) AND 
		((Recipts.AidDate ='')OR (Recipts.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) AND  		
		(LookUps_2.Code BETWEEN @SecondTpFrom  AND @SecondTpTo ) AND 
		(ISNULL(Recipts.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To )  AND
		(ISNULL(Recipts.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To )  AND
		(ISNULL(Recipts.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To )  AND
		(StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) AND 
 		(Recipts.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) AND 
		(ISNULL( Recipts.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) AND
		InfoKind in (9,10)
     AND ((@NotReciptNumber='-1') or (Recipts.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
     AND ((@NotCustID1='-1') or (Recipts.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
     AND ((@addIDFilter='-1') or (Recipts.ID IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	 AND ((case when RT.FormStateDefault4Doc = 0 then Recipts.ReciptState else RT.FormStateDefault4Doc end) = Recipts.ReciptState)
		
--UNION ALL
INSERT INTO @retFindReports


SELECT	'' AS IDs,Recipts.ID,0 as  ReciptitemID,  
		Recipts.ReciptID , 
		Recipts.StoreID,Stores_1.c_StoreName, 
		Recipts.ReciptNumber  as  ReciptNumber, 
		Recipts.ReciptDate, Recipts.ReciptType, Customers_rp.CustID,Customers_rp.CustName,0 as StuffCode,  
		'' as c_StuffName,RT.BedType, 
		CASE WHEN (PaymentKind = 9) THEN 'نحوه پرداخت'
			 WHEN (PaymentKind = 10) THEN 'واسط فروش'
		ELSE RT.ReciptCaption END, 
		0 AS Entity,
		0 AS Weight,

		case when (ReciptTypesAccCode.BedBes = 1 )
			then 
				case InfoKind 

					when 9 then   --- نحوه پرداخت 
						case 
							when PaymentKind =9 then isnull(RP.SumPayment ,0)

							else 0 
						end --- نحوه پرداخت  

					when 10 then   --- پورسانت فروش - فرم نحوه پرداخت 
						case 
							when PaymentKind =10  then isnull(RP.SumPayment ,0)

							else 0 
						end --- پورسانت فروش - فرم نحوه پرداخت 
					else 0
				end
			else 0	
end  AS bed ,

		case when (ReciptTypesAccCode.BedBes = 0 )
			then 
				case InfoKind 

					when 9 then   --- نحوه پرداخت 
						case 
							when PaymentKind =9 then isnull(RP.SumPayment ,0)

							else 0 
						end --- نحوه پرداخت  

					when 10 then   --- پورسانت فروش - فرم نحوه پرداخت 
						case 
							when PaymentKind =10  then isnull(RP.SumPayment ,0)

							else 0 
						end --- پورسانت فروش - فرم نحوه پرداخت 
					else 0
				end
			else 0	
end  AS  bes,

		BedBes, 

 case  when Customers_RP.acc_TopicCode >0 then Customers_rp.acc_TopicCode else CustomersGroup_rp.acc_TopicCode end

 as TopicCode , 
Customers_rp.acc_DetailCode  as DetailCode , 
Customers_rp.acc_CTopicCode  as CTopicCode ,
Customers_rp.acc_CTopicCode2 as CTopicCode2 ,
Customers_rp.acc_CTopicCode3  as CTopicCode3 ,

		1 as kind ,ISNULL(Recipts.AidNumber,0) AS AidNumber,Recipts.AidDate,0 as IAidNumber,
		'' as IAidDate,0 as ControlCode,Recipts.ServerID,Recipts.YearID, ISNULL(ReciptTypesAccCode.Note,'')  as ItemNote,Recipts.ReciptNote ,
		0 as UnitSellPrice,Recipts.MachineName ,Recipts.MachineNo,Recipts.MachineInfo,Recipts.TruckNumber,
		0 AS ArzAmount , isnull(Recipts.reciptsrow,0)  as reciptsrow , 
		Customers_2.CustName AS CustName2 , '' as UnitName,  0.0 as StuffDiameter, '' as PO, Recipts.ArzTypeID, UnitMaster.UseUnitName, UnitMaster.UseUnitName, 0 AS ArzRate,Currencies.CurrenciesName AS ArzName
		,Recipts.RialsEqual,SellsEmporiums.SellsEmporiumName,Customers_3.CustName as CustName3,RT.EffectType,0.0 as CurrencyDiscounts
		, 0.0 AS Currencydebit, 0.0 AS Currencycredit, 0.0 CurrencyRate

FROM	Recipts  INNER JOIN 
		(
			SELECT reciptid , serverid , yearid ,PaymentKind ,CustID, sum(Payment) as SumPayment
			FROM  ReciptsPayments   
			WHERE (( DocNo < 1)OR(@AllDocAble=1))

			group by reciptid , serverid , yearid  ,PaymentKind ,CustID
		)  RP on  rp.ReciptID = Recipts.ReciptID AND rp.ServerID = Recipts.ServerID AND rp.YearID = Recipts.YearID Inner join 
		Stores AS Stores_1 ON Recipts.StoreID = Stores_1.n_StoreID INNER JOIN
		ReciptTypes RT  ON RT.ReciptType = Recipts.ReciptType LEFT outer  join 
		LookUps AS LookUps_2 ON Recipts.SecondType = LookUps_2.LookUpID LEFT outer JOIN
		Stores AS Stores_2 oN Recipts.StoreID2 = Stores_2.n_StoreID INNER JOIN
		Customers AS Customers_1 ON Recipts.PersonID1 = Customers_1.CustID  INNER JOIN
		Customers AS Customers_2 ON Recipts.PersonID2 = Customers_2.CustID INNER JOIN
		Customers AS Customers_3 ON Recipts.PersonID3 = Customers_3.CustID INNER JOIN
		Customers AS Customers_4 ON Recipts.PersonID4 = Customers_4.CustID INNER JOIN
		Customers AS Customers_RP ON Rp.CustID = Customers_RP.CustID INNER JOIN
		CustomersGroup AS CustomersGroup_1 on  CustomersGroup_1.CustomerGrpID = Customers_1.CustomerGrpID INNER JOIN
		CustomersGroup AS CustomersGroup_2 on CustomersGroup_2.CustomerGrpID = Customers_2.CustomerGrpID INNER JOIN
		CustomersGroup AS CustomersGroup_3 on CustomersGroup_3.CustomerGrpID = Customers_3.CustomerGrpID INNER JOIN 
		CustomersGroup AS CustomersGroup_4 on CustomersGroup_4.CustomerGrpID = Customers_4.CustomerGrpID INNER JOIN 
		CustomersGroup AS CustomersGroup_Rp on CustomersGroup_rp.CustomerGrpID = Customers_rp.CustomerGrpID INNER JOIN 
		ReciptTypesAccCode on RT.ReciptType = ReciptTypesAccCode.ReciptType  LEFT OUTER JOIN
        UseUnits UnitMaster ON recipts.UseUnitID = UnitMaster.UseUnitID 
		LEFT OUTER JOIN  Currencies  ON Recipts.ArzTypeID = Currencies.CurrenciesID  LEFT OUTER JOIN
		SellsEmporiums ON Recipts.SellsEmporium = SellsEmporiums.SellsEmporium 


WHERE	(Recipts.ReciptNumber BETWEEN @NumberFrom  AND @NumberTo  ) AND 
		(Recipts.ReciptState < ReciptStateSmallerThan) AND  
		(Recipts.ReciptState BETWEEN @ReciptStateFrom  AND @ReciptStateTo  ) AND 
		(Customers_2.CustomerGrpID BETWEEN @CustomerGrpIDFrom  AND @CustomerGrpIDTo ) AND
		(Recipts.ReciptDate BETWEEN @DateFrom  AND @DateTo ) AND 
		((Recipts.AidDate ='')OR (Recipts.AidDate BETWEEN @AidDateFrom  AND @AidDateTo )) AND  		
		(LookUps_2.Code BETWEEN @SecondTpFrom  AND @SecondTpTo ) AND 
		(ISNULL(Recipts.PersonID1,0) BETWEEN @CustID1Form  AND @CustID1To )  AND
		(ISNULL(Recipts.PersonID2,0) BETWEEN @CustID2Form  AND @CustID2To )  AND
		(ISNULL(Recipts.PersonID3,0) BETWEEN @CustID3Form  AND @CustID3To )  AND
		(StoreID BETWEEN @StoreIDFrom   AND @StoreIDTo ) AND 
 		(Recipts.SellsEmporium BETWEEN @SellsEmporiumFrom AND @SellsEmporiumTo) AND 
		(ISNULL( Recipts.ReciptsRow,0 ) BETWEEN @ReciptsRowFrom AND @ReciptsRowTo) AND
		InfoKind in (9,10)
     AND ((@NotReciptNumber='-1') or (Recipts.ReciptNumber NOT IN (SELECT part FROM dbo.SplitString(@NotReciptNumber,','))))
     AND ((@NotCustID1='-1') or (Recipts.PersonID1    NOT IN (SELECT part FROM dbo.SplitString(@NotCustID1,','))))
     AND ((@addIDFilter='-1') or (Recipts.ID IN (SELECT part FROM dbo.SplitString(@addIDFilter,','))))
	 AND ((case when RT.FormStateDefault4Doc = 0 then Recipts.ReciptState else RT.FormStateDefault4Doc end) = Recipts.ReciptState)

UPDATE @retFindReports SET bed=ROUND(bed,0), bes=ROUND(bes,0)
     RETURN
END

--GO
--SET QUOTED_IDENTIFIER ON 
--GO
--CREATE FUNCTION ALL_MakeDocuments( @YearIDFrom INT =1300 ,@YearIDTo INT = 1404, @DateFrom char(10)='0000/00/00', @DateTo char(10)='9999/99/99',
--@TopicCodeFrom BIGINT=-9223372036854775806, @TopicCodeTo BIGINT=9223372036854775807,
--@DetailCodeFrom INT=-2147483646, @DetailCodeTo INT=2147483647,
--@CTopicCodeFrom INT=-2147483646, @CTopicCodeTo int=2147483647,
--@CTopicCode2From INT=-2147483646, @CTopicCode2To int=2147483647,
--@CTopicCode3From INT=-2147483646, @CTopicCode3To int=2147483647
--)
--RETURNS table AS  
--return
-- (
--SELECT ABCD.TopicCode, C.MoeenName_L1, ABCD.DetailCode, 
--		    case ABCD.DetailCode when 0 Then C.MoeenName_L1  else DetailName_L1 end as DetailName_L1 , 
--			C.MoeenName_L1 COLLATE Arabic_CI_AS +' - '+DetailName_L1 COLLATE Arabic_CI_AS CombineName ,
--			--ABCD.CTopicCode, ABCD.CTopicCode2, ABCD.CTopicCode3,
--			SUM(Debt) AS Debt ,SUM(Credit) AS Credit,
--		    case when SUM(Debt - Credit)>0 then SUM(Debt - Credit) else 0 end  AS BalanceDebt ,
--		    case when SUM(Credit - Debt)>0 then SUM(Credit - Debt) else 0 end  AS BalanceCredit 
			
--FROM(
--SELECT TopicCode, DetailCode, --CTopicCode, CTopicCode2, CTopicCode3, 
--CASE WHEN SUM(bed) > 0 THEN SUM(bed) ELSE 0 END + CASE WHEN SUM(bes) < 0 THEN - SUM(bes) ELSE 0 END AS Debt, 
--CASE WHEN SUM(bes) > 0 THEN SUM(bes) ELSE 0 END + CASE WHEN SUM(bed) < 0 THEN - SUM(bed) ELSE 0 END AS Credit
--	FROM  dbo.Aid_MakeDocuments_Recipt(1, -2147483646, 2147483647, @DateFrom, @DateTo, '0000/00/00',
--	'9999/99/99', -32766, 32767, 0,-2147483646, 2147483647,-2147483646, 2147483647,
--	-2147483646, 2147483647,-2147483646, 2147483647,-2147483646, 2147483647,-2147483646,
--	2147483647, -2147483646, 2147483647 , 1, -2147483646, 2147483647, -2147483646, 2147483647
--	, -1, -1, -1) AS Aid_MakeDocuments_Recipt
--	WHERE        (bed + bes <> 0)
--	AND (TopicCode   BETWEEN @TopicCodeFrom AND @TopicCodeTo )
--	AND (DetailCode  BETWEEN @DetailCodeFrom AND @DetailCodeTo )
--	AND (CTopicCode  BETWEEN @CTopicCodeFrom AND @CTopicCodeTo )
--	AND (CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )
--	AND (CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To )
--	AND (YearID BETWEEN @YearIDFrom AND @YearIDTo )
	
--	GROUP BY TopicCode, DetailCode--, CTopicCode, CTopicCode2, CTopicCode3
--	UNION ALL
--	SELECT TopicCode, DetailCode--, CtopicCode, CtopicCode2, CtopicCode3
--	, SUM(debt) AS Debt, SUM(credit) AS Credit
--	FROM   dbo.MakeDocuments_Coffer(1, @DateFrom, @DateTo, -2147483646, 2147483647, -2147483646, 2147483647 , -2147483646, 2147483647 , -2147483646, 2147483647 ,  1) 
--							AS MakeDocuments_Coffer
--	WHERE        (debt + credit <> 0)
--	AND (TopicCode BETWEEN @TopicCodeFrom AND @TopicCodeTo )
--	AND (DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )
--	AND (CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo )
--	AND (CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )
--	AND (CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To )
--	AND (YearID BETWEEN @YearIDFrom AND @YearIDTo )
--	GROUP BY TopicCode, DetailCode, CtopicCode, CtopicCode2, CtopicCode3
--	UNION ALL
--	SELECT        TopicCode, DetailCode,-- CtopicCode, CtopicCode2, CtopicCode3, 
--	SUM(CASE WHEN debt - credit > 0 THEN debt - credit ELSE 0 END) AS Debt, 
--	SUM(CASE WHEN credit - debt > 0 THEN credit - debt ELSE 0 END) 
--							AS credit
--	FROM            dbo.MakeDocuments_Check(1, @DateFrom, @DateTo, -2147483646, 2147483647, 0, 255
--	, -2147483646, 2147483647, -32766, 32767, 1) 
--							AS MD_C
--	WHERE        (debt + credit <> 0)
--	AND (TopicCode BETWEEN @TopicCodeFrom AND @TopicCodeTo )
--	AND (DetailCode BETWEEN @DetailCodeFrom AND @DetailCodeTo )
--	AND (CTopicCode BETWEEN @CTopicCodeFrom AND @CTopicCodeTo )
--	AND (CTopicCode2 BETWEEN @CTopicCode2From AND @CTopicCode2To )
--	AND (CTopicCode3 BETWEEN @CTopicCode3From AND @CTopicCode3To )
--	AND (YearID BETWEEN @YearIDFrom AND @YearIDTo )
--	GROUP BY TopicCode, DetailCode--, CtopicCode, CtopicCode2, CtopicCode3
--	)ABCD  LEFT OUTER JOIN
--            acc.Details D ON  ABCD.DetailCode = D.DetailCode
--			 LEFT OUTER JOIN
--            acc.Categories C ON ABCD.TopicCode = C.TopicCode
--	GROUP BY ABCD.TopicCode, ABCD.DetailCode,-- ABCD.CtopicCode, ABCD.CtopicCode2, ABCD.CtopicCode3,
--	 C.MoeenName_L1,D.DetailName_L1
						  
--)

--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Sp_UpdateChildFromFather @ChildRecipt_ID  Bigint AS
BEGIN
--SET NOCOUNT ON;
DELETE FROM ReciptItems
FROM            ReciptItems INNER JOIN
                         Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID
WHERE        (Recipts.ID = @ChildRecipt_ID ) AND (ReciptItems.StuffCode NOT IN
                             (SELECT        Rip.StuffCode AS detpStuffCode
                                FROM            ReciptItems AS Rip INNER JOIN
                                                         Recipts AS masp ON Rip.ReciptID = masp.ReciptID AND Rip.ServerID = masp.ServerID AND Rip.YearID = masp.YearID INNER JOIN
                                                         Recipts AS masc ON masc.ParentReciptID = masp.ReciptID AND Rip.ServerID = masp.ServerID AND Rip.YearID = masp.YearID
                                WHERE        (masc.ID = @ChildRecipt_ID ) AND masc.DocNo = 0 and masc.ReciptState = 0 ))

MERGE ReciptItems AS TARGET     
USING 
(
SELECT   ROW_NUMBER() OVER(ORDER BY Rip.ID ASC) AS RecNo,  masc.ReciptID mascReciptID ,masc.ServerID mascServerID,masc.YearID  mascYearID,Rip.StuffCode detpStuffCode,Rip.*
FROM         ReciptItems AS Rip
  INNER JOIN Recipts masp ON Rip.ReciptID = masp.ReciptID AND Rip.ServerID = masp.ServerID AND Rip.YearID = masp.YearID
  INNER JOIN Recipts masc ON masc.ParentReciptID = masp.ReciptID AND Rip.ServerID = masp.ServerID AND Rip.YearID = masp.YearID
WHERE     (masc.ID in (@ChildRecipt_ID))
)AS SOURCE    
ON (
   (    TARGET.ReciptID  =SOURCE.mascReciptID  
	and TARGET.ServerID  =SOURCE.mascServerID
	and TARGET.YearID    =SOURCE.mascYearID
	and TARGET.StuffCode =SOURCE.detpStuffCode)
) 

WHEN MATCHED THEN                           
    UPDATE SET 	         StuffDiameter = SOURCE.StuffDiameter, StuffSize = SOURCE.StuffSize, StuffAlloy = SOURCE.StuffAlloy, InputEntity = SOURCE.InputEntity, OutputEntity = SOURCE.OutputEntity, InputWeight = SOURCE.InputWeight, 
                         OutputWeight = SOURCE.OutputWeight, RequestedEntity = SOURCE.RequestedEntity, RequestedWeight = SOURCE.RequestedWeight, ControlCode = SOURCE.ControlCode, StuffGrade = SOURCE.StuffGrade, 
                         TotalInputPrice = SOURCE.TotalInputPrice, TotalOutputPrice = SOURCE.TotalOutputPrice, UnitSellPrice = SOURCE.UnitSellPrice, TotallSellPrice = SOURCE.TotallSellPrice, ItemNote = SOURCE.ItemNote, 
                         acc_TopicCode = SOURCE.acc_TopicCode, acc_DetailCode = SOURCE.acc_DetailCode, acc_CTopicCode = SOURCE.acc_CTopicCode, UseUnitID = SOURCE.UseUnitID, AidNumber = SOURCE.AidNumber, 
                         AidDate = SOURCE.AidDate, Discount = SOURCE.Discount, acc_CTopicCode2 = SOURCE.acc_CTopicCode2, PersonID1 = SOURCE.PersonID1, ProductCode = SOURCE.ProductCode, ProductModel = SOURCE.ProductModel, 
                         ItemDate = SOURCE.ItemDate, OrderState = SOURCE.OrderState, ContactRate = SOURCE.ContactRate, WaterCo = SOURCE.WaterCo, FirstUser = SOURCE.FirstUser, LastUser = SOURCE.LastUser, Shift = SOURCE.Shift, 
                         DeficitValue = SOURCE.DeficitValue, UnitSellPrice2 = SOURCE.UnitSellPrice2, MachineWeight = SOURCE.MachineWeight, TotalWeight = SOURCE.TotalWeight, Auxiliary = SOURCE.Auxiliary, MachineNo = SOURCE.MachineNo, 
                         MachineName = SOURCE.MachineName, MachineFullWeight = SOURCE.MachineFullWeight, SugarCo = SOURCE.SugarCo, SugarEntity = SOURCE.SugarEntity, StandardRate = SOURCE.StandardRate, 
                         ArzAmount = SOURCE.ArzAmount, InvEntity = SOURCE.InvEntity, InvWeight = SOURCE.InvWeight, SecondTypeItem = SOURCE.SecondTypeItem, TotalStandardRate = SOURCE.TotalStandardRate, 
                         AcceptEntity = SOURCE.AcceptEntity, RollbackEntity = SOURCE.RollbackEntity, AcceptWeight = SOURCE.AcceptWeight, RollbackWeight = SOURCE.RollbackWeight, TaxCo = SOURCE.TaxCo, TaxValue = SOURCE.TaxValue, 
                         Portage = SOURCE.Portage, Article = SOURCE.Article, Wage = SOURCE.Wage, Scoria = SOURCE.Scoria, Waste1 = SOURCE.Waste1, Waste2 = SOURCE.Waste2, Function1 = SOURCE.Function1, 
                         CustomerRate = SOURCE.CustomerRate, PestEntity = SOURCE.PestEntity, ArzRate = SOURCE.ArzRate, InsertTime = SOURCE.InsertTime, EditTime = SOURCE.EditTime, IRow = SOURCE.IRow, 
                         acc_CTopicCode3 = SOURCE.acc_CTopicCode3, UnitCommission = SOURCE.UnitCommission, TransFormID = SOURCE.TransFormID, Confirming = SOURCE.Confirming, StuffCodingItemID = SOURCE.StuffCodingItemID, 
                         Length_ = SOURCE.Length_, Width = SOURCE.Width, DiagnosisCalcTotalPrice = SOURCE.DiagnosisCalcTotalPrice, StandardConsumptionCo = SOURCE.StandardConsumptionCo, DeficitValue2 = SOURCE.DeficitValue2, 
                         DeficitValue3 = SOURCE.DeficitValue3, Commission = SOURCE.Commission, CurrencyDiscounts = SOURCE.CurrencyDiscounts, RIDateMS = SOURCE.RIDateMS, RIDateME = SOURCE.RIDateME, InBox = SOURCE.InBox, 
                         StuffpublicPercentI = SOURCE.StuffpublicPercentI, ArzPortage = SOURCE.ArzPortage, IneffectiveInput = SOURCE.IneffectiveInput, PO = SOURCE.PO, SpecialCode = SOURCE.SpecialCode, ArzRate2 = SOURCE.ArzRate2, 
                         HowConvert = SOURCE.HowConvert, ArzTypeID2 = SOURCE.ArzTypeID2, ArzAmount2 = SOURCE.ArzAmount2, ExchangePrice = SOURCE.ExchangePrice, TozinID = SOURCE.TozinID, 
                         CommissionPrice = SOURCE.CommissionPrice, FormItems_ID = SOURCE.FormItems_ID, UseOtherID_Item = SOURCE.UseOtherID_Item, CommissionCurrency = SOURCE.CommissionCurrency, UnitCode2 = SOURCE.UnitCode2, 
                         DeficitValue4 = SOURCE.DeficitValue4, StereotypyID = SOURCE.StereotypyID							

WHEN NOT MATCHED THEN  
    INSERT (ReciptItemID,ReciptID,ServerID,YearID,StuffCode,
	StuffDiameter, StuffSize, StuffAlloy, InputEntity, OutputEntity, InputWeight, OutputWeight, RequestedEntity, RequestedWeight, ControlCode, StuffGrade, TotalInputPrice, TotalOutputPrice, UnitSellPrice, TotallSellPrice, ItemNote, 
                         acc_TopicCode, acc_DetailCode, acc_CTopicCode, UseUnitID, AidNumber, AidDate, Discount, acc_CTopicCode2, PersonID1, ProductCode, ProductModel, ItemDate, OrderState, ContactRate, WaterCo, FirstUser, LastUser, Shift, 
                         DeficitValue, UnitSellPrice2, MachineWeight, TotalWeight, Auxiliary, MachineNo, MachineName, MachineFullWeight, SugarCo, SugarEntity, StandardRate, ArzAmount, InvEntity, InvWeight, SecondTypeItem, TotalStandardRate, 
                         AcceptEntity, RollbackEntity, AcceptWeight, RollbackWeight, TaxCo, TaxValue, Portage, Article, Wage, Scoria, Waste1, Waste2, Function1, CustomerRate, PestEntity, ArzRate, InsertTime, EditTime, IRow, acc_CTopicCode3, 
                         UnitCommission, TransFormID, Confirming, StuffCodingItemID, Length_, Width, DiagnosisCalcTotalPrice, StandardConsumptionCo, DeficitValue2, DeficitValue3, Commission, CurrencyDiscounts, RIDateMS, RIDateME, InBox, 
                         StuffpublicPercentI, ArzPortage, IneffectiveInput, PO, SpecialCode, ArzRate2, HowConvert, ArzTypeID2, ArzAmount2, ExchangePrice, TozinID, CommissionPrice, FormItems_ID, UseOtherID_Item, CommissionCurrency, 
                         UnitCode2, DeficitValue4, StereotypyID
	)  
    VALUES ((select max(ReciptItemID)+RecNo From ReciptItems),SOURCE.mascReciptID,SOURCE.mascServerID,SOURCE.mascYearID,detpStuffCode,
	 SOURCE.StuffDiameter, SOURCE.StuffSize, SOURCE.StuffAlloy, SOURCE.InputEntity, SOURCE.OutputEntity, SOURCE.InputWeight, SOURCE.OutputWeight, SOURCE.RequestedEntity, SOURCE.RequestedWeight, 
                         SOURCE.ControlCode, SOURCE.StuffGrade, SOURCE.TotalInputPrice, SOURCE.TotalOutputPrice, SOURCE.UnitSellPrice, SOURCE.TotallSellPrice, SOURCE.ItemNote, SOURCE.acc_TopicCode, SOURCE.acc_DetailCode, 
                         SOURCE.acc_CTopicCode, SOURCE.UseUnitID, SOURCE.AidNumber, SOURCE.AidDate, SOURCE.Discount, SOURCE.acc_CTopicCode2, SOURCE.PersonID1, SOURCE.ProductCode, SOURCE.ProductModel, SOURCE.ItemDate, 
                         SOURCE.OrderState, SOURCE.ContactRate, SOURCE.WaterCo, SOURCE.FirstUser, SOURCE.LastUser, SOURCE.Shift, SOURCE.DeficitValue, SOURCE.UnitSellPrice2, SOURCE.MachineWeight, SOURCE.TotalWeight, 
                         SOURCE.Auxiliary, SOURCE.MachineNo, SOURCE.MachineName, SOURCE.MachineFullWeight, SOURCE.SugarCo, SOURCE.SugarEntity, SOURCE.StandardRate, SOURCE.ArzAmount, SOURCE.InvEntity, SOURCE.InvWeight, 
                         SOURCE.SecondTypeItem, SOURCE.TotalStandardRate, SOURCE.AcceptEntity, SOURCE.RollbackEntity, SOURCE.AcceptWeight, SOURCE.RollbackWeight, SOURCE.TaxCo, SOURCE.TaxValue, SOURCE.Portage, SOURCE.Article, 
                         SOURCE.Wage, SOURCE.Scoria, SOURCE.Waste1, SOURCE.Waste2, SOURCE.Function1, SOURCE.CustomerRate, SOURCE.PestEntity, SOURCE.ArzRate, SOURCE.InsertTime, SOURCE.EditTime, SOURCE.IRow, 
                         SOURCE.acc_CTopicCode3, SOURCE.UnitCommission, SOURCE.TransFormID, SOURCE.Confirming, SOURCE.StuffCodingItemID, SOURCE.Length_, SOURCE.Width, SOURCE.DiagnosisCalcTotalPrice, 
                         SOURCE.StandardConsumptionCo, SOURCE.DeficitValue2, SOURCE.DeficitValue3, SOURCE.Commission, SOURCE.CurrencyDiscounts, SOURCE.RIDateMS, SOURCE.RIDateME, SOURCE.InBox, SOURCE.StuffpublicPercentI, 
                         SOURCE.ArzPortage, SOURCE.IneffectiveInput, SOURCE.PO, SOURCE.SpecialCode, SOURCE.ArzRate2, SOURCE.HowConvert, SOURCE.ArzTypeID2, SOURCE.ArzAmount2, SOURCE.ExchangePrice, SOURCE.TozinID, 
                         SOURCE.CommissionPrice, SOURCE.FormItems_ID, SOURCE.UseOtherID_Item, SOURCE.CommissionCurrency, SOURCE.UnitCode2, SOURCE.DeficitValue4, SOURCE.StereotypyID
);       


END;

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROC SP_CalcTopCheck  @list tinyint=1 , @TopCalc tinyint=1 , @ReciptID int= 420 , @ServerID int= 0 , @YearID int=1402
AS BEGIN
DECLARE @sumCalc money=0
DECLARE @sumAmount money=0;
DECLARE @TopCheck money=0
DECLARE @Days Int=0
DECLARE @Date DateTime

DECLARE @CheckNumber  varchar(20)
DECLARE @FormDate1    char(10)
DECLARE @CheckDate1    char(10)
DECLARE @ItemAmount   money=0

DECLARE @FormDate2    DateTime
DECLARE @CheckDate2    DateTime

if @TopCalc = 1
begin
DECLARE cur_InnerSql CURSOR FOR(
	SELECT      F.FormDate , Fi.CheckNumber, Fi.CheckDate, Fi.ItemAmount
FROM            Forms AS F INNER JOIN
                         FormItems AS Fi ON F.FormID = Fi.FormID AND F.ServerID = Fi.ServerID AND F.YearID = Fi.YearID
WHERE        (F.ReciptID = @ReciptID) AND (F.ServerID = @ServerID) AND (F.YearID = @YearID) ); 

OPEN cur_InnerSql;
FETCH FROM cur_InnerSql into @FormDate1 , @CheckNumber, @CheckDate1, @ItemAmount;
WHILE @@fetch_status = 0 
BEGIN
select  @FormDate2 =dbo.ShamsiToMiladi( @FormDate1 )
select  @CheckDate2 =dbo.ShamsiToMiladi( @CheckDate1 )
  set @Days =DATEDIFF( Day , @FormDate2, @CheckDate2);
  if @FormDate2 >  @CheckDate2     set @Days = 0;
  set @sumCalc = @sumCalc + @Days * @ItemAmount;
  set @sumAmount = @sumAmount + @ItemAmount

FETCH NEXT FROM cur_InnerSql into @FormDate1 , @CheckNumber, @CheckDate1, @ItemAmount;
END
CLOSE cur_InnerSql ;	
DEALLOCATE cur_InnerSql ;

if @sumAmount <= 0 set @sumAmount = 1;
    set @TopCheck = @sumCalc / @sumAmount;
if @TopCheck=0 
   set @sumAmount = 0
else
begin
    set @Date = GETDATE();
    set @Date =  DATEADD (day, ROUND(@TopCheck,0) ,@date);
end
end


SELECT        T.FormCaption, Fi.CheckNumber, Fi.CheckDate, Fi.ItemAmount
FROM            Forms AS F INNER JOIN
                         FormItems AS Fi ON F.FormID = Fi.FormID AND F.ServerID = Fi.ServerID AND F.YearID = Fi.YearID INNER JOIN
                         FormTypes AS T ON F.FormType = T.FormType
WHERE  ( @list = 1) and     (F.ReciptID = @ReciptID) AND (F.ServerID = @ServerID) AND (F.YearID = @YearID) 
union all  
SELECT       'جمع مبلغ چک ها' FormCaption, '' CheckNumber, '' CheckDate,@sumAmount ItemAmount
WHERE  ( @TopCalc = 1) 
union all  
SELECT       ' رأس چكها ' FormCaption, '' CheckNumber, dbo.MiladiToShamsi(@Date) CheckDate,@TopCheck ItemAmount
WHERE  ( @TopCalc = 1) 


END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
-- SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE createTRIGGER4LinkServer
	 @TableName varchar(100)  
AS
BEGIN
set ANSI_NULLS ON 

SET ANSI_WARNINGS ON  
	SET NOCOUNT ON;
	DECLARE  @Qry varchar(max)
	set @Qry='
IF OBJECT_ID (''TR_NotAllowInsertLinkOn'+@TableName+''', ''TR'') IS NOT NULL
DROP TRIGGER TR_NotAllowInsertLinkOn'+@TableName+';'
--print @Qry
exec(@Qry)

set @Qry='
IF OBJECT_ID (''TR_NotAllowUpdateLinkOn'+@TableName+''', ''TR'') IS NOT NULL
DROP TRIGGER TR_NotAllowUpdateLinkOn'+@TableName+';
'
--print @Qry
exec(@Qry)

set @Qry='
create  TRIGGER TR_NotAllowInsertLinkOn'+@TableName+'   ON '+@TableName+' INSTEAD OF INSERT AS
  BEGIN
SET NOCOUNT ON;
DECLARE @LinkServerName varchar(1000)  
SELECT  @LinkServerName=ltrim(LinkServerName) FROM Config
IF @LinkServerName<>''''
BEGIN
  RAISERROR(''با توجه به تنظیمات Link Server اضافه کردن اطلاعات جدید امکان ندارد'',16,1)
  ROLLBACK;
END
ELSE INSERT INTO '+@TableName+' SELECT * FROM inserted     
END;'
--print @Qry
exec(@Qry)


set @Qry='
create TRIGGER TR_NotAllowUpdateLinkOn'+@TableName+' ON '+@TableName+' AFTER UPDATE  
AS
BEGIN
SET NOCOUNT ON;
DECLARE @LinkServerName varchar(1000)
SELECT  @LinkServerName=ltrim(LinkServerName) FROM Config
IF @LinkServerName<>''''
BEGIN
  RAISERROR(''با توجه به تنظیمات Link Server ویرایش اطلاعات امکان ندارد'',16,1)
  ROLLBACK;
END
END'
--print @Qry
exec(@Qry)

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
GO
--exec dbo.createTRIGGER4LinkServer 'StuffCoding'
--exec dbo.createTRIGGER4LinkServer 'StuffGroups'
--exec dbo.createTRIGGER4LinkServer 'Units'
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
-- SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Sp_Run_Synchronization  @Table VARCHAR(100) ,@TableKey  VARCHAR(100) , @schema  VARCHAR(100)  AS
BEGIN
SET NOCOUNT ON;
--set ANSI_NULLS ON 
--SET ANSI_WARNINGS ON  


DECLARE @LinkAndDataBase VARCHAR(100)
DECLARE @qry VARCHAR(MAX)=''
DECLARE @sUPDATE VARCHAR(MAX)=''
DECLARE @sINSERT VARCHAR(MAX)=''
DECLARE @sVALUES VARCHAR(MAX)=''

SELECT   @LinkAndDataBase=LinkServerName FROM    Config

SELECT @sUPDATE=@sUPDATE+case when @sUPDATE='' then '' else ',' end+ NAME+'=SOURCE.'+NAME,
       @sINSERT=@sINSERT+case when @sINSERT='' then '' else ',' end+ +NAME,
       @sVALUES=@sVALUES+case when @sVALUES='' then '' else ',' end+ 'SOURCE.'+NAME
    FROM  SYS.COLUMNS  WHERE   object_id = OBJECT_ID(@schema+'.'+@Table)

set @Qry='IF OBJECT_ID (''TR_NotAllowInsertLinkOn'+@Table+''', ''TR'') IS NOT NULL
DROP TRIGGER TR_NotAllowInsertLinkOn'+@Table+';'
exec(@Qry)
set @Qry='IF OBJECT_ID (''TR_NotAllowUpdateLinkOn'+@Table+''', ''TR'') IS NOT NULL
DROP TRIGGER TR_NotAllowUpdateLinkOn'+@Table+';'
exec(@Qry)

set @qry='if exists (SELECT * FROM sysobjects where id = object_id(N''Sp_Synchronization'+@Table+''') and OBJECTPROPERTY(id,N''IsProcedure'') = 1)
DROP PROCEDURE Sp_Synchronization'+@Table+';'

exec (@qry)

set @qry='
create PROCEDURE Sp_Synchronization'+@Table+'  AS
BEGIN
SET NOCOUNT ON;

IF OBJECT_ID (''TR_CheckDocument'', ''TR'') IS NOT NULL 
ALTER TABLE Customers DISABLE TRIGGER TR_CheckDocument

MERGE '+@Table+ ' AS TARGET     
USING ( SELECT * FROM '+@LinkAndDataBase+'.'+@schema+'.'+@Table+ +CASE WHEN @Table= 'StoreStuffs' THEN ' WHERE (n_StoreID IN (SELECT n_StoreID FROM Stores)) ' ELSE '' END +  ' 	  
)AS SOURCE    
ON (TARGET.'+@TableKey+'  =SOURCE.'+@TableKey+' )
WHEN MATCHED THEN                           
    UPDATE SET 	   '+@sUPDATE+'	
WHEN NOT MATCHED THEN  
    INSERT ('+@sINSERT+')      
	VALUES ('+@sVALUES+');     
	
IF OBJECT_ID (''TR_CheckDocument'', ''TR'') IS NOT NULL 
ALTER TABLE Customers ENABLE TRIGGER TR_CheckDocument

END;'
exec (@qry)


set @Qry='exec dbo.Sp_Synchronization'+@Table
exec(@Qry)

exec createTRIGGER4LinkServer @Table

END;
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
-- SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE ReciptReturn @ID bigint  --  کلید فرم برگشت از فروش ثبت شده
                  ,@NewID bigint = 0  OUTPUT    --  خروجی پراسیجر برای نیاز احتمالی
as
BEGIN
SET NOCOUNT ON
DECLARE @TempTable TABLE(  ---  این جدول برای پردازش احتمالی می تواند ایجاد شود فعلا استفاد نشده
	ID int NULL,
	InfoName nvarchar(255) NULL
	)

DECLARE @IRTAXID varchar(100)  --  شمار منحصر به فرد مالیاتی فاکتور فروش اصلی
DECLARE @OrginID bigint  -- کلید فرم فاکتور فروش


SELECT  @IRTAXID = IRTAXID FROM            Recipts WHERE        (ID = @ID)
SELECT  @OrginID = ID FROM            Recipts WHERE        (TAXID = @IRTAXID)
---  سلکت زیر فرم برگشت از فروش و فرم فاکتور فروش را دارد با هم نمایش می شود که باید از هم کم شوند
SELECT    Row# ,  _NationalStuffCode,  _Tax_mu, sum(TotallSellPrice) AS TotallSellPrice,  _StuffName, 
                         SUM(OutputEntity-InputEntity ) AS InputEntity, SUM(OutputEntity-OutputEntity ) AS OutputEntity, SUM(InputWeight) AS InputWeight, SUM(OutputWeight ) AS OutputWeight, 
                         SUM(ArzAmount) AS ArzAmount, SUM(UnitSellPrice) AS UnitSellPrice, SUM(DeficitValue) AS DeficitValue, MAX(TaxCo) AS TaxCo, SUM(TaxValue) AS TaxValue, 
						 SUM(TotallCommission) AS TotallCommission, SUM(Wage) AS Wage, SUM(TotalOutputPrice-TotalInputPrice) AS TotalInputPrice, 
                       SUM(TotalOutputPrice-TotalOutputPrice) AS TotalOutputPrice
						 FROM
(

SELECT   ROW_NUMBER() OVER(ORDER BY Ri.ReciptItemID ASC) AS Row# , Sc.NationalStuffCode AS _NationalStuffCode, U.Tax_mu AS _Tax_mu, - Ri.TotallSellPrice AS TotallSellPrice, Sc.c_StuffName AS _StuffName, 
                          Ri.InputEntity , Ri.OutputEntity ,  Ri.InputWeight , Ri.OutputWeight, 
                         - Ri.ArzAmount AS ArzAmount, -0* Ri.UnitSellPrice AS UnitSellPrice,  - Ri.DeficitValue AS DeficitValue, Ri.TaxCo, - Ri.TaxValue AS TaxValue,
						 - Ri.TotallCommission AS TotallCommission, - Ri.Wage Wage,   Ri.TotalInputPrice, 
                          Ri.TotalOutputPrice
FROM            Recipts AS R INNER JOIN
                         Vu_ReciptsGrid AS Ri ON R.ReciptID = Ri.ReciptID AND R.ServerID = Ri.ServerID AND R.YearID = Ri.YearID INNER JOIN
                         StuffCoding AS Sc ON Ri.StuffCode = Sc.c_StuffCode INNER JOIN
                         Units AS U ON Sc.n_UnitCode = U.UnitCode INNER JOIN
                         ReciptTypes1 T ON R.ReciptType = t.ReciptType
WHERE        (R.ID IN (@ID)) and T.SellEffect = 2


union all

SELECT ROW_NUMBER() OVER(ORDER BY Ri.ReciptItemID ASC) AS Row# , Sc.NationalStuffCode AS _NationalStuffCode, U.Tax_mu AS _Tax_mu, Ri.TotallSellPrice, Sc.c_StuffName AS _StuffName, 
                          Ri.InputEntity,  OutputEntity, InputWeight,  OutputWeight, 
                          ArzAmount,  UnitSellPrice,  DeficitValue,  TaxCo,  
                          TaxValue,  TotallCommission,  Ri.Wage,  TotalInputPrice, 
                          TotalOutputPrice
FROM            Recipts AS R INNER JOIN
                         Vu_ReciptsGrid AS Ri ON R.ReciptID = Ri.ReciptID AND R.ServerID = Ri.ServerID AND R.YearID = Ri.YearID INNER JOIN
                         StuffCoding AS Sc ON Ri.StuffCode = Sc.c_StuffCode INNER JOIN
                         Units AS U ON Sc.n_UnitCode = U.UnitCode INNER JOIN
                         ReciptTypes1 T ON R.ReciptType = t.ReciptType
WHERE        (R.ID IN ( @OrginID)) and T.SellEffect = 1

)abc
GROUP BY  Row# ,_NationalStuffCode,_Tax_mu,_StuffName



RETURN(@OrginID)
END

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
