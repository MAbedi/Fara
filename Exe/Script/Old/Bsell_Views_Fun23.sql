--23  تاريخ 1402/07/13    
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Web_GetReciptItems') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Web_GetReciptItems
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Cnt.GetFamilyNames') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Cnt.GetFamilyNames
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Web_GetStuffImages') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Web_GetStuffImages
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Web_ReportCustItem') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Web_ReportCustItem
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'StuffGroups_whithChild') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION StuffGroups_whithChild
GO
IF EXISTS (SELECT * FROM  sysobjects WHERE ID = object_id(N'Cnt.GetContractOperations') AND xtype IN (N'FN', N'IF', N'TF'))
DROP FUNCTION Cnt.GetContractOperations
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N'Cnt.Vu_GetContractOperations') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop view Cnt.Vu_GetContractOperations
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N'Cnt.Vu_ContractOperationItems_Concat') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop view Cnt.Vu_ContractOperationItems_Concat
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N'Cnt.Vu_ContractOperationItems_Concat_Aid') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop view Cnt.Vu_ContractOperationItems_Concat_Aid
GO
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N'TozinRecalRecipt') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop view TozinRecalRecipt
GO

IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id( N'TozinList') AND OBJECTPROPERTY(id, N'IsView') = 1)
drop view TozinList
GO
if exists (select * from sysobjects where id = object_id(N'Sp_TozinList') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure Sp_TozinList
GO

if exists (select * from sysobjects WHERE id = object_id(N'dbo.Fn_TozinList') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION dbo.Fn_TozinList

GO

if exists (select * from sysobjects WHERE id = object_id(N'Fn_TozinRecalRecipt') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Fn_TozinRecalRecipt
GO

if exists (select * from sysobjects WHERE id = object_id(N'[dbo].[Fn_CalcVijeh]') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION Fn_CalcVijeh
GO
if exists (select * from sysobjects WHERE id = object_id(N'GetMaxCheckNumber') and xtype in (N'FN', N'IF', N'TF'))
DROP FUNCTION GetMaxCheckNumber
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION  Cnt.GetFamilyNames (@CaseNo int ,@FStuffCode int  )
RETURNS  nvarchar(max) 
begin
declare @c_StuffName nvarchar(max)=''

SELECT      @c_StuffName=@c_StuffName +' @ '+ StuffCoding.c_StuffName
FROM            Cnt.ContractOperationFamilies INNER JOIN
                         StuffCoding ON Cnt.ContractOperationFamilies.FStuffCode = StuffCoding.c_StuffCode
WHERE        (Cnt.ContractOperationFamilies.ContractOperationId IN
                             (SELECT        GetContractOperations_1.ContractOperationId
                                FROM            Cnt.GetContractOperations(0) AS GetContractOperations_1 INNER JOIN
                                                         StuffCoding AS StuffCoding_1 ON GetContractOperations_1.FStuffCode = StuffCoding_1.c_StuffCode
                                WHERE        (GetContractOperations_1.FStuffCode = @FStuffCode) AND (GetContractOperations_1.CaseNo = @CaseNo)))
 RETURN(@c_StuffName)

end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
------------------------------------------------------
------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW Cnt.Vu_ContractOperationItems_Concat_Aid
AS

SELECT	cnt.CaseNo , Cnt.FStuffCode , 1 as name2 ,
		CASE C.ItemKind 
			WHEN 1 THEN 'اشانتیون : به ازای خرید هر ' 
			WHEN 2 THEN 'تخفیف ریالی گروهی : به ازای خرید مجموعاً ' 
			WHEN 3 THEN 'تبلیغات : به ازای خرید ' 
			WHEN 4 THEN 'تخفیف عددی : به ازای خرید هر ' 
			WHEN 5 THEN 'تخفیف درصدی : به ازای خرید هر '
			WHEN 6 THEN 
				case	when C.IStuffCount =999 
						then 'اشانتیون پلکانی : بالاتر از  '  
						else 'اشانتیون پلکانی : تا خرید '  
				end 
			WHEN 7 THEN 
				case	when C.IStuffCount =999 
						then 'تخفیف عددی پلکانی : بالاتر از  '  
						else 'تخفیف عددی پلکانی : تا خرید  ' 
				end 
			WHEN 8 THEN 
				case	when C.IStuffCount =999 
						then 'تخفیف درصدی پلکانی : بالاتر از  '  
						else 'تخفیف درصدی پلکانی : تا خرید ' 
				end 
		ELSE 'سایر موارد ' 
		END + 
		case	when  C.ItemKind in (6 ,7,  8  ) and C.IStuffCount =999 
				then   REPLACE( CONVERT(VARCHAR, CAST(Clast.Last_IStuffCount AS money), 1),'.00','') 
		else  REPLACE( CONVERT(VARCHAR, CAST(C.IStuffCount AS money), 1),'.00','') 
		end  + 
		case when C.ItemKind =2 then ' ریال '  else isnull(Units.UnitName, '') end  +
		case	when  C.ItemKind in (6,7,  8  ) and C.IStuffCount =999 
				then '  ' 
				else ' '  
		end +
		case when isnull(ltrim(C.INote2),'')=''  then SB.c_StuffName else C.INote2  end +
		case when C.ItemKind in (1,2,5,  8  ) then '‏-' 
				when C.ItemKind in (4) then ' معادل '
				else ' به ازای هر' + isnull(Units.UnitName, ' ') +
				case when C.ItemKind in (2,6) then '' else ' معادل ' end   
		end 
		+  
		cast(cast (C.IAmount  as float ) AS varchar(20)) + 
		case  C.ItemKind
			when 2 then 'درصد تخفیف ریالی ' 				
			when 4 then isnull(UE.UnitName, '') + ' ' +' تخفیف ریالی  '
			when 5 then ' درصد تخفیف ریالی '
			WHEN 7 THEN isnull(UE.UnitName, '') + ' ' + ' تخفیف ریالی ' 
			WHEN 8 THEN 'درصد تخفیف ریالی ' 
			else 
			isnull(UE.UnitName, '') + ' ' +					
				case when len(c.INote) > 10 then c.INote 
				else  s.c_StuffName 
				end 
		end 
		AS name, ItemKind
FROM	Cnt.ContractOperationItems AS C INNER JOIN
		dbo.StuffCoding AS S ON C.IStuffCode = S.c_StuffCode INNER JOIN
	--	dbo.LookUps AS St ON S.st1 = St.Code INNER JOIN
		Cnt.ContractOperationFamilies AS Cnt ON c.ContractOperationId = Cnt.ContractOperationId INNER JOIN
		dbo.StuffCoding AS SB ON Cnt.FStuffCode = Sb.c_StuffCode INNER JOIN
		dbo.Units ON SB.UnitCode2 = dbo.Units.UnitCode left outer JOIN
		dbo.Units AS UE ON c.IUnitCode = UE.UnitCode left outer join 
		(
			select N.ContractOperationItemId , N.IStuffCount  , max(l.IStuffCount) as Last_IStuffCount
			from Cnt.ContractOperationItems as N inner join 
				Cnt.ContractOperationItems as L on N.ContractOperationId= l.ContractOperationId and 
				N.ItemKind = L.ItemKind and N.IStuffCount >l.IStuffCount
		
			where N.ItemKind in (6,7,  8  )
			group by   N.ContractOperationItemId ,N.IStuffCount   
		) AS CLast on c.ContractOperationItemId = CLast.ContractOperationItemId  

WHERE	(C.ISellEffect = 1)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------


--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  VIEW [Cnt].[Vu_ContractOperationItems_Concat]
AS
	SELECT base.ItemKind , CASE WHEN (base.ItemKind in (1,2,6))AND(FamilyCount.FamilyCount>1) 
								THEN 	REPLACE(REPLACE(REPLACE(  base.Names ,'اشانتیون :','اشانتیون گروهی :'),'هر','مجموعاً'),'اشانتیون پلکانی :','اشانتیون پلکانی گروهی :') ELSE base.Names END AS Names  , 
									 base.FStuffCode , base.CaseNo, CountStar.CountStar  , FamilyCount.FamilyCount 
									,cnt.GetFamilyNames(base.CaseNo , base.FStuffCode) AS FamilyNames 

	from 
	(
		SELECT   max (Itemkind) as ItemKind ,FStuffCode,CaseNo,STUFF((SELECT ',@,' + rtrim(convert(char(8000),Name))
			FROM 
		(
			SELECT	* 
			from   Cnt.Vu_ContractOperationItems_Concat_Aid 
		) b

        WHERE  a.CaseNo = b.CaseNo and a.FStuffCode = b.FStuffCode 
        FOR XML PATH('')),1,1,'') Names
FROM   

(
	SELECT	* 
	from   Cnt.Vu_ContractOperationItems_Concat_Aid 
) a

GROUP BY  CaseNo, FStuffCode   ) Base inner join 
(
	select CaseNo ,FStuffCode , count(ItemKind) as CountStar
	from 
		(select distinct CF.CaseNo, cf.FStuffCode ,1 as ItemKind -- , ItemKind 
			from Cnt.ContractOperationItems CI inner join 
			cnt.ContractOperationFamilies CF on ci.ContractOperationId = cf.ContractOperationId 
		
		) HasStar
	group by FStuffCode  , CaseNo
) CountStar  on Base.FStuffCode = CountStar.FStuffCode and base.CaseNo = CountStar.caseno 
inner Join 
(
		
		select f.caseno , f.ContractOperationId , f.FStuffCode as IStuffCode  , cnt.cnt  as FamilyCount
		FROM Cnt.ContractOperationFamilies as F inner join 
				(
					SELECT	ContractOperationId ,count (FStuffCode) as cnt
					FROM Cnt.ContractOperationFamilies
					group by ContractOperationId 
				)cnt  on f.ContractOperationId = cnt.ContractOperationId
		

) FamilyCount on  FamilyCount.CaseNo = Base.CaseNo and FamilyCount.IStuffCode = base.FStuffCode
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------

--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 


GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Cnt.GetContractOperations(@EmployerId int)
RETURNS TABLE  AS  
RETURN (
--SELECT Cnt.ContractOperations.OperationId AS c_stuffcode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo,
--           Units.UnitName,
--           CASE WHEN ValuationType = 0 THEN cnt.contractoperations.baseprice WHEN ValuationType = 1 THEN
--           cnt.contractoperations.OverheadPrice WHEN ValuationType = 2 THEN cnt.contractoperations.TotalPrice ELSE
--           0 END AS UnitSellPrice, Cnt.ContractOperations.ContractOperationNote,
--           Cnt.Contracts.CaseNo, Cnt.Contracts.ContractNo, Cnt.Contracts.ContractDate, Cnt.ContractOperations.ContractOperationId
--		   ,Cnt.Contracts.ContractsStatus,cnt.contractoperations.baseprice AS SellPrice1,cnt.contractoperations.OverheadPrice AS SellPrice2
--		   ,cnt.contractoperations.TotalPrice AS SellPrice3 , StuffCoding.n_UnitCode , StuffCoding.UnitCode2, StuffCoding.Carton		  
--           FROM Cnt.ContractOperations INNER JOIN
--           Cnt.Contracts ON Cnt.ContractOperations.CaseNo = Cnt.Contracts.CaseNo INNER JOIN
--           StuffCoding ON Cnt.ContractOperations.OperationId = StuffCoding.c_StuffCode LEFT OUTER JOIN
--           Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
--           (SELECT Contracts_1.EmployerId, ContractOperations_1.OperationId, MAX(Contracts_1.ContractDate)
--           AS ContractDate, Customers.ValuationType
--           FROM Cnt.ContractOperations AS ContractOperations_1 INNER JOIN
--           Cnt.Contracts AS Contracts_1 ON ContractOperations_1.CaseNo = Contracts_1.CaseNo
--           INNER JOIN
--           Customers ON Contracts_1.EmployerId = Customers.CustID
--           GROUP BY Contracts_1.EmployerId, ContractOperations_1.OperationId, Customers.ValuationType) AS
--           LastPrice ON LastPrice.EmployerId = Cnt.Contracts.EmployerId AND
--           LastPrice.ContractDate = Cnt.Contracts.ContractDate AND LastPrice.OperationId =
--           Cnt.ContractOperations.OperationId
--           WHERE ((Cnt.Contracts.EmployerId = @EmployerId)OR(@EmployerId=0)) AND (StuffCoding.State = 0)AND (StuffCoding.c_stuffcode <> 0)
SELECT        Cnt.ContractOperationFamilies.FStuffCode, Cnt.ContractOperations.OperationId AS c_stuffcode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, 
                         CASE WHEN ValuationType = 0 THEN cnt.contractoperations.baseprice WHEN ValuationType = 1 THEN cnt.contractoperations.OverheadPrice WHEN ValuationType = 2 THEN cnt.contractoperations.TotalPrice ELSE
                          0 END AS UnitSellPrice, Cnt.ContractOperations.ContractOperationNote, Cnt.Contracts.CaseNo, Cnt.Contracts.ContractNo, Cnt.Contracts.ContractDate, Cnt.ContractOperations.ContractOperationId, 
                         Cnt.Contracts.ContractsStatus, Cnt.ContractOperations.BasePrice AS SellPrice1, Cnt.ContractOperations.OverheadPrice AS SellPrice2, Cnt.ContractOperations.TotalPrice AS SellPrice3
						 , StuffCoding.n_UnitCode, StuffCoding.UnitCode2, StuffCoding.Carton,Cnt.ContractOperations.UnitCode
						 
FROM            Cnt.ContractOperations INNER JOIN
                         Cnt.Contracts ON Cnt.ContractOperations.CaseNo = Cnt.Contracts.CaseNo INNER JOIN
                         StuffCoding ON Cnt.ContractOperations.OperationId = StuffCoding.c_StuffCode LEFT OUTER JOIN
                         Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN
                             (SELECT        Contracts_1.EmployerId, ContractOperations_1.OperationId, MAX(Contracts_1.ContractDate) AS ContractDate, Customers.ValuationType
                                FROM            Cnt.ContractOperations AS ContractOperations_1 INNER JOIN
                                                         Cnt.Contracts AS Contracts_1 ON ContractOperations_1.CaseNo = Contracts_1.CaseNo INNER JOIN
                                                         Customers ON Contracts_1.EmployerId = Customers.CustID
                                GROUP BY Contracts_1.EmployerId, ContractOperations_1.OperationId, Customers.ValuationType) AS LastPrice ON LastPrice.EmployerId = Cnt.Contracts.EmployerId AND 
                         LastPrice.ContractDate = Cnt.Contracts.ContractDate AND LastPrice.OperationId = Cnt.ContractOperations.OperationId LEFT OUTER JOIN
                         Cnt.ContractOperationFamilies ON Cnt.ContractOperations.ContractOperationId = Cnt.ContractOperationFamilies.ContractOperationId AND Cnt.Contracts.CaseNo = Cnt.ContractOperationFamilies.CaseNo
WHERE        (Cnt.Contracts.EmployerId = @EmployerId) AND (StuffCoding.State = 0) AND (StuffCoding.c_StuffCode <> 0) OR
                         (StuffCoding.State = 0) AND (StuffCoding.c_StuffCode <> 0) AND (@EmployerId = 0)
)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO

 
CREATE VIEW [Cnt].[Vu_GetContractOperations]
AS
--SELECT        Cnt.Contracts.EmployerId, Cnt.ContractOperations.OperationId AS c_stuffcode, dbo.StuffCoding.c_StuffName, dbo.StuffCoding.c_StuffTecInfo, Units_3.UnitName, 
--					CASE WHEN ValuationType = 0 THEN cnt.contractoperations.baseprice WHEN ValuationType = 1 
--					THEN cnt.contractoperations.OverheadPrice WHEN ValuationType = 2 THEN cnt.contractoperations.TotalPrice ELSE
--                          StuffCoding.SellPrice1 END AS UnitSellPrice, Cnt.ContractOperations.ContractOperationNote, Cnt.Contracts.CaseNo,
--						   Cnt.ContractOperations.BasePrice AS ConsumerPrice, Cnt.ContractOperations.TotalPrice AS PurchasePrice, Cnt.ContractOperations.DiscountPercent, 
--						   dbo.LookUps.Code AS St1Code, dbo.LookUps.Name AS St1Name	 , dbo.StuffCoding.GroupID AS GroupID_3, 
--                         dbo.StuffGroups.GroupName, dbo.StuffGroups.UperGroupId AS GroupIID_2, StuffGroups_1.GroupName AS GroupNameSecond, StuffGroups_1.UperGroupId AS GroupID_1,
--						  Cnt.ContractOperations.OverheadPrice, dbo.StuffCoding.st1, dbo.StuffCoding.Carton, Units_1.UnitName AS UnitName2, dbo.StuffCoding.UnitCode2, 
--						  CC.Names AS OfferDescription, ISNULL(CC.CountStar, 0) AS CountStar , 
--						  StuffCoding.VatExempt , cc.FamilyCount, cc.FamilyNames, ISNULL(StuffCount.Count_StuffCode,0) CountStuffCode
--FROM            dbo.StuffGroups INNER JOIN
--                         dbo.StuffCoding ON dbo.StuffGroups.GroupID = dbo.StuffCoding.GroupID INNER JOIN
--                         Cnt.ContractOperations ON dbo.StuffCoding.c_StuffCode = Cnt.ContractOperations.OperationId RIGHT OUTER JOIN
--                             (SELECT        Contracts_1.EmployerId, ContractOperations_1.OperationId, MAX(Contracts_1.ContractDate) AS ContractDate, dbo.Customers.ValuationType
--                                FROM            Cnt.ContractOperations AS ContractOperations_1 INNER JOIN
--                                                         Cnt.Contracts AS Contracts_1 ON ContractOperations_1.CaseNo = Contracts_1.CaseNo INNER JOIN
--                                                         dbo.Customers ON Contracts_1.EmployerId = dbo.Customers.CustID
--                                GROUP BY Contracts_1.EmployerId, ContractOperations_1.OperationId, dbo.Customers.ValuationType) AS LastPrice RIGHT OUTER JOIN
--                         Cnt.Contracts ON LastPrice.EmployerId = Cnt.Contracts.EmployerId AND LastPrice.ContractDate = Cnt.Contracts.ContractDate ON Cnt.ContractOperations.OperationId = LastPrice.OperationId AND 
--                         Cnt.ContractOperations.CaseNo = Cnt.Contracts.CaseNo LEFT OUTER JOIN
--                         dbo.StuffGroups AS StuffGroups_1 ON dbo.StuffGroups.UperGroupId = StuffGroups_1.GroupID LEFT OUTER JOIN
--                         dbo.Units AS Units_3 ON dbo.StuffCoding.n_UnitCode = Units_3.UnitCode LEFT OUTER JOIN
--                         dbo.Units AS Units_1 ON dbo.StuffCoding.UnitCode2 = Units_1.UnitCode LEFT OUTER JOIN
--                         dbo.LookUps ON dbo.StuffCoding.st1 = dbo.LookUps.Code LEFT OUTER JOIN
--                         Cnt.Vu_ContractOperationItems_Concat AS CC ON  Cnt.ContractOperations.OperationId = CC.FStuffCode and 
--																		cnt.Contracts.CaseNo = cc.CaseNo
--						LEFT OUTER JOIN
--						(SELECT         ReciptItems.StuffCode, COUNT(ReciptItems.StuffCode) AS Count_StuffCode
--						FROM            ReciptItems INNER JOIN
--										Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND
--										ReciptItems.ServerID = Recipts.ServerID AND 
--										ReciptItems.YearID = Recipts.YearID
--						WHERE        (Recipts.ReciptType = 12) AND (ReciptItems.StuffCode <> 0)
--						GROUP BY ReciptItems.StuffCode) AS StuffCount  ON StuffCount.StuffCode = Cnt.ContractOperations.OperationId
--WHERE        (dbo.StuffCoding.State = 0) AND (dbo.StuffCoding.c_StuffCode <> 0) AND (dbo.LookUps.Kind = 301) AND (Cnt.Contracts.ContractsStatus = 1)
SELECT        Cnt.Contracts.EmployerId, Cnt.ContractOperations.OperationId AS c_stuffcode, dbo.StuffCoding.c_StuffName, dbo.StuffCoding.c_StuffTecInfo, Units_3.UnitName, 
					CASE WHEN ValuationType = 0 THEN cnt.contractoperations.baseprice WHEN ValuationType = 1 
					THEN cnt.contractoperations.OverheadPrice WHEN ValuationType = 2 THEN cnt.contractoperations.TotalPrice ELSE
                          StuffCoding.SellPrice1 END AS UnitSellPrice, Cnt.ContractOperations.ContractOperationNote, Cnt.Contracts.CaseNo,
						   Cnt.ContractOperations.BasePrice AS ConsumerPrice, Cnt.ContractOperations.TotalPrice AS PurchasePrice, Cnt.ContractOperations.DiscountPercent, 
						   dbo.LookUps.Code AS St1Code, dbo.LookUps.Name AS St1Name	 , dbo.StuffCoding.GroupID AS GroupID_3, 
                         dbo.StuffGroups.GroupName, dbo.StuffGroups.UperGroupId AS GroupIID_2, StuffGroups_1.GroupName AS GroupNameSecond, StuffGroups_1.UperGroupId AS GroupID_1,
						  Cnt.ContractOperations.OverheadPrice, dbo.StuffCoding.st1, dbo.StuffCoding.Carton, Units_1.UnitName AS UnitName2, dbo.StuffCoding.UnitCode2, 
						  CC.Names AS OfferDescription, ISNULL(CC.CountStar, 0) AS CountStar , 
						  StuffCoding.VatExempt , cc.FamilyCount, cc.FamilyNames, ISNULL(StuffCount.Count_StuffCode,0) CountStuffCode--, Ranks.Grade, Ranks.Rate
FROM            dbo.StuffGroups INNER JOIN
                         dbo.StuffCoding ON dbo.StuffGroups.GroupID = dbo.StuffCoding.GroupID INNER JOIN
                         Cnt.ContractOperations ON dbo.StuffCoding.c_StuffCode = Cnt.ContractOperations.OperationId RIGHT OUTER JOIN
                             (SELECT        Contracts_1.EmployerId, ContractOperations_1.OperationId, MAX(Contracts_1.ContractDate) AS ContractDate, dbo.Customers.ValuationType
                                FROM            Cnt.ContractOperations AS ContractOperations_1 INNER JOIN
                                                         Cnt.Contracts AS Contracts_1 ON ContractOperations_1.CaseNo = Contracts_1.CaseNo INNER JOIN
                                                         dbo.Customers ON Contracts_1.EmployerId = dbo.Customers.CustID
                                GROUP BY Contracts_1.EmployerId, ContractOperations_1.OperationId, dbo.Customers.ValuationType) AS LastPrice RIGHT OUTER JOIN
                         Cnt.Contracts ON LastPrice.EmployerId = Cnt.Contracts.EmployerId AND LastPrice.ContractDate = Cnt.Contracts.ContractDate ON Cnt.ContractOperations.OperationId = LastPrice.OperationId AND 
                         Cnt.ContractOperations.CaseNo = Cnt.Contracts.CaseNo LEFT OUTER JOIN
                         dbo.StuffGroups AS StuffGroups_1 ON dbo.StuffGroups.UperGroupId = StuffGroups_1.GroupID LEFT OUTER JOIN
                         dbo.Units AS Units_3 ON dbo.StuffCoding.n_UnitCode = Units_3.UnitCode LEFT OUTER JOIN
                         dbo.Units AS Units_1 ON dbo.StuffCoding.UnitCode2 = Units_1.UnitCode LEFT OUTER JOIN
                         dbo.LookUps ON dbo.StuffCoding.st1 = dbo.LookUps.Code LEFT OUTER JOIN
                         Cnt.Vu_ContractOperationItems_Concat AS CC ON  Cnt.ContractOperations.OperationId = CC.FStuffCode and 
																		cnt.Contracts.CaseNo = cc.CaseNo
						LEFT OUTER JOIN
						(SELECT         ReciptItems.StuffCode, COUNT(ReciptItems.StuffCode) AS Count_StuffCode
						FROM            ReciptItems INNER JOIN
										Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND
										ReciptItems.ServerID = Recipts.ServerID AND 
										ReciptItems.YearID = Recipts.YearID
						WHERE        (Recipts.ReciptType = 12) AND (ReciptItems.StuffCode <> 0)
						GROUP BY ReciptItems.StuffCode) AS StuffCount  ON StuffCount.StuffCode = Cnt.ContractOperations.OperationId --LEFT OUTER JOIN
						--(SELECT        Rankings.StuffCode, Rankings.Rate, Rankings.Grade
						-- FROM            Rankings INNER JOIN
      --                       (SELECT        StuffCode, MAX(RankDate) AS RankDate
      --                          FROM            Rankings AS Rankings_1
      --                          WHERE        (RankType = 0)
      --                          GROUP BY StuffCode
      --                          HAVING        (StuffCode <> 0)) AS t1 ON t1.RankDate = Rankings.RankDate AND t1.StuffCode = Rankings.StuffCode
						-- WHERE        (Rankings.RankType = 0)) AS Ranks ON Ranks.StuffCode = Cnt.ContractOperations.OperationId
WHERE        (dbo.StuffCoding.State = 0) AND (dbo.StuffCoding.c_StuffCode <> 0) AND (dbo.LookUps.Kind = 301) AND (Cnt.Contracts.ContractsStatus = 1)
 

 

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION StuffGroups_whithChild (@GroupId bigint) 
RETURNS table AS  
return
(With   cteReports (GroupID, GroupName, UperGroupId  )
  AS 
(
    SELECT GroupID, GroupName, UperGroupId
    FROM dbo.StuffGroups
    WHERE GroupID = @GroupId
UNION ALL
	--SELECT e.GroupID
    SELECT e.GroupID, e.GroupName, e.UperGroupId 
    FROM dbo.StuffGroups e inner join cteReports  c on e.UperGroupId = c.GroupID
)
Select * from cteReports
) 
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION [dbo].[Web_GetReciptItems]
(	
@ReciptID bigint,@PersonalID int
)
RETURNS TABLE 
AS
RETURN 
(
SELECT        dbo.Recipts.ReciptID, dbo.ReciptItems.StuffCode, dbo.Recipts.PersonID1,dbo.Recipts.ReciptState, dbo.ReciptItems.ControlCode, 
                         Cnt.Vu_GetContractOperations.c_StuffName, dbo.ReciptItems.TotallSellPrice, Cnt.Vu_GetContractOperations.UnitSellPrice, 
                         dbo.ReciptItems.OutputEntity, dbo.ReciptItems.TotalOutputPrice, dbo.ReciptItems.ReciptItemID, Cnt.Vu_GetContractOperations.OverheadPrice, 
                         Cnt.Vu_GetContractOperations.ConsumerPrice,Cnt.Vu_GetContractOperations.UnitName,dbo.ReciptItems.OutputWeight, dbo.ReciptItems.WaterCo, dbo.ReciptItems.PestEntity,
						 Carton,DeficitValue,ProductCode,OrderState,UnitName2,St1Name,
                         Cnt.Vu_GetContractOperations.UnitCode2
FROM            dbo.Recipts INNER JOIN
                         dbo.ReciptItems ON dbo.Recipts.ReciptID = dbo.ReciptItems.ReciptID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID INNER JOIN
                         Cnt.Vu_GetContractOperations ON dbo.ReciptItems.StuffCode = Cnt.Vu_GetContractOperations.c_stuffcode AND 
                         dbo.ReciptItems.ControlCode = Cnt.Vu_GetContractOperations.CaseNo
WHERE        (dbo.Recipts.ReciptID = @ReciptID) AND (dbo.Recipts.PersonID1 = @PersonalID)
)


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Web_GetStuffImages 
(	
@StuffCode bigint
)
RETURNS TABLE 
AS
RETURN 
(
SELECT        StuffImage
FROM            dbo.StuffCodingImage
WHERE        (StuffCode = @StuffCode)
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION Web_ReportCustItem
(	
@PersonIDFrom bigint,@PersonIDTo Bigint,@DateFrom char(10),@DateTo char(10),
@DateFromRemain char(10),@YearIDFrom Bigint,@YearIDTo Bigint,@SellsMethodFrom Bigint,
@SellsMethodTo Bigint,@SellsEmporiumFrom Bigint,@SellsEmporiumTo Bigint
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT   * FROM (

SELECT    AllAcc.*,  Customers.CustName, Customers_1.CustName AS CustName2 , bed - bes AS balance, Fitful.FitfulID  AS CalcuBalance

          , Customers_3.CustName AS CustName3
FROM         dbo.AllAccountItem(
10 ,-1 ,-1 ,-1 , @PersonIDFrom  ,@PersonIDTo   ,@DateFrom , @DateTo ,
@DateFromRemain   , @YearIDFrom   , @YearIDTo    , @SellsMethodFrom , @SellsMethodTo , @SellsEmporiumFrom ,  @SellsEmporiumTo , DEFAULT ) AS AllAcc  INNER JOIN
Customers  ON Customers.CustID = AllAcc.PersonID1  LEFT OUTER JOIN

                      Customers AS Customers_1 ON AllAcc.PersonID2 = Customers_1.CustID

LEFT OUTER JOIN

                      Customers AS Customers_3 ON AllAcc.PersonID3 = Customers_3.CustID

CROSS JOIN
                         Fitful

)abc

)
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION [dbo].[Fn_CalcVijeh]  
(	
	@StoreID int = 99999999 ,
	@StuffCodeFrom bigint =0 ,@StuffCodeTo bigint =999999999999,
	@DateFrom varchar(10)='96/01/01' , @DateTo  varchar(10)='96/12/29' 
)
RETURNS TABLE 
AS
RETURN 
(
 WITH ReciptBaseParentID(ReciptitemID,YearID , ServerID ,  BaseReciptitemID, baseYearID ,entity , Weight ,price, LevelID
           ,StuffCode,  ReciptCaption, StuffSize, StuffDiameter, StuffAlloy, OutputEntity, OutputWeight,
            TotalOutputPrice, UnitSellPrice, preReciptItemID, ReciptNumber, ReciptDate,ReciptID,ControlCode,AutoPrice) AS 
(

    SELECT ReciptitemID,YearID , ServerID ,ReciptitemID,YearID ,
			InputEntity + OutputEntity as Entity  ,InputWeight + OutputWeight as Weight  ,  TotalInputPrice + TotalOutputPrice as price , 
			0 AS EmployeeLevel
			,StuffCode,  ReciptCaption, StuffSize, StuffDiameter, StuffAlloy, OutputEntity, OutputWeight,
            TotalOutputPrice, UnitSellPrice, preReciptItemID, ReciptNumber, ReciptDate,ReciptID,ControlCode,AutoPrice

	FROM	ReciptItems_Stock_Calc 
	
    WHERE (  ( EffectType =2 and AutoPrice <>1)-- or preReciptitemID IS NULL 
	      )	 
   --   AND (StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo)
      AND (ReciptDate BETWEEN  @DateFrom AND @DateTo )-- or  ReciptitemID in (1001,268)
      --AND (StoreID = @StoreID)
	  --and ControlCode= 8388

    UNION all

    SELECT  e.ReciptitemID, e.YearID,e.ServerID, d.BaseReciptitemID,d.baseYearID , 
			e.inputentity + e.outputentity as entity  ,e.InputWeight + e.OutputWeight as Weight ,  e.totalinputprice + e.totaloutputprice as price , 
			LevelID + 1
			,e.StuffCode,  e.ReciptCaption, e.StuffSize, e.StuffDiameter, e.StuffAlloy, e.OutputEntity, e.OutputWeight,
            e.TotalOutputPrice, e.UnitSellPrice, e.preReciptItemID, e.ReciptNumber, e.ReciptDate,e.ReciptID,e.ControlCode,e.AutoPrice
    FROM ReciptItems_Stock_Calc e
        INNER JOIN ReciptBaseParentID d
        ON e.preReciptitemID = d.ReciptitemID  and ISNULL( e.PrvYearID,e.YearID) = d.YearID 
    WHERE --(e.StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo)  AND 
	 (e.ReciptDate BETWEEN  @DateFrom AND @DateTo )
      --AND (e.StoreID = @StoreID)
	  --and e.ControlCode= 8388
)
SELECT ReciptitemID,YearID, ServerID , baseYearID , BaseReciptitemID ,Entity , Weight ,price,  LevelID 
,StuffCode,  ReciptCaption, StuffSize, StuffDiameter, StuffAlloy, OutputEntity, OutputWeight,
            TotalOutputPrice, UnitSellPrice, preReciptItemID, ReciptNumber, ReciptDate,ReciptID,ControlCode,AutoPrice
FROM ReciptBaseParentID 
)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE FUNCTION GetMaxCheckNumber ( @CustomerID1  int,@CustomerID2  int, @Customer1DocType int, @MaxCheckNumber Bigint,@YearID int )
RETURNS Bigint
BEGIN
declare @ChkNumber bigint

if @Customer1DocType in (2, 5, 6, 13)  --if @CustomerName = 'CustomerID1'
begin
SELECT @ChkNumber=MAX(CheckNumber) + 1  FROM (
SELECT MAX(CAST(rtrim(FormItems.CheckNumber) AS bigint)) AS CheckNumber
FROM Forms INNER JOIN
FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID INNER JOIN
(SELECT TOP 1 BankID, SerialFrom, SerialTo
FROM CheckBook
WHERE (BankID = @CustomerID1 ) AND (ChkBookActive = 0)
ORDER BY CheckBookNo DESC) AS derivedtbl_1 ON Forms.CustomerID1  = derivedtbl_1.BankID
INNER JOIN FormTypes on FormTypes.FormType = Forms.FormType
WHERE (Forms.FormType in (50,70) or FormTypes.DefaultTopic_Bes in (6, 7,  8)) 
AND (Forms.CustomerID1 = @CustomerID1 ) 
AND (rtrim(ltrim(FormItems.CheckNumber)) BETWEEN derivedtbl_1.SerialFrom AND derivedtbl_1.SerialTo)
AND (FormItems.YearID =@YearID)
Union All
SELECT @MaxCheckNumber  AS CheckNumber)AllCheckNumber

end
else
begin
SELECT  @ChkNumber=MAX(CheckNumber) + 1  FROM (
SELECT MAX(CAST(rtrim(FormItems.CheckNumber) AS bigint)) AS CheckNumber
FROM Forms INNER JOIN
FormItems ON Forms.FormID = FormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Forms.YearID = FormItems.YearID INNER JOIN
(SELECT TOP 1 BankID, SerialFrom, SerialTo
FROM CheckBook
WHERE (BankID = @CustomerID2 ) AND (ChkBookActive = 0)
ORDER BY CheckBookNo DESC) AS derivedtbl_1 ON Forms.CustomerID2  = derivedtbl_1.BankID
INNER JOIN FormTypes on FormTypes.FormType = Forms.FormType
WHERE (Forms.FormType in (50,70) or FormTypes.DefaultTopic_Bes in (6, 7,  8)) 
AND (Forms.CustomerID2 = @CustomerID2 ) 
AND (FormItems.CheckNumber BETWEEN derivedtbl_1.SerialFrom AND derivedtbl_1.SerialTo)
AND (Forms.YearID = @YearID)
Union All
SELECT @MaxCheckNumber  AS CheckNumber)AllCheckNumber
end

  RETURN(@ChkNumber)
END


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  VIEW TozinRecalRecipt
AS
SELECT		case when R.TozinID is null then RI.TozinID else R.TozinID end TozinID , R.ReciptID, R.ServerID, R.YearID, R.ReciptType, RT.ReciptCaption, 
			SUM(RI.InputEntity + RI.OutputEntity) AS Entity, SUM(RI.InputWeight + RI.OutputWeight) AS Weight, 
			R.ReciptNumber, R.AidNumber, R.AidDate,
			'مجوز @ '     + LTRIM(STR(CASE WHEN R.ReciptType = 11 THEN ReciptNumber ELSE R.AidNumber END)) + 
			' -- وزن  @ ' + LTRIM(STR(SUM(RI.InputWeight + RI.OutputWeight))) + 
			' -- كيسه @ ' + LTRIM(STR(SUM(RI.InputEntity + RI.OutputEntity))) AS Tozin_Note

FROM		Recipts AS R INNER JOIN
			ReciptItems AS RI ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID INNER JOIN
			ReciptTypes1 AS RT ON R.ReciptType = RT.ReciptType

WHERE		((NOT (R.TozinID IS NULL)) OR (NOT (RI.TozinID IS NULL)))

GROUP BY	case when R.TozinID is null then RI.TozinID else R.TozinID end, R.ReciptID, R.ServerID, R.YearID, R.ReciptType, 
			RT.ReciptCaption, R.ReciptNumber, R.AidNumber, R.AidDate
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE VIEW TozinList
AS
SELECT		case	when	(T.MachineFullWeight = 0)  and  (T.MachineWeight > 0)	THEN  3
					when	(T.MachineFullWeight > 0)  and  (T.MachineWeight = 0)	THEN  1  ELSE 0 END EffectType,
     		T.ServerID,T.YearID,T.TozinID,T.ReciptType, T.TozinNumber, T.TozinDate, T.StoreID, S.c_StoreName,T.StuffCode, SC.c_StuffName,
			T.PersonID1, isnull(CT1.CustFirstName,'') +' '+ CT1.CustName AS CustName1, CT1.NationalID AS NationalID1 ,
			T.PersonID2, isnull(CT2.CustFirstName,'') +' '+ CT2.CustName AS CustName2, CT2.CarType CarType2,CT2.NationalID AS NationalID2 ,
			T.PersonID3, isnull(CT3.CustFirstName,'') +' '+ CT3.CustName AS CustName3, 
			T.PersonID4,T.PersonID5,
			T.MachineName,T.MachineNo, T.MachineWeight, T.MachineFullWeight, 
			T.NumberOfBags ,T.TozinNote, 
----     	dbo.MiladiToShamsiTime(T.EnterDate,1) as EnterDate,	dbo.MiladiToShamsiTime(T.ExitDate,1)  as ExitDate, 
----     	M1.ShamsiSlash +'-'+ CONVERT(varchar, T.EnterDate, 108) as EnterDate  ,M2.ShamsiSlash  +'-'+ CONVERT(varchar, T.ExitDate, 108)  as ExitDate  ,
            T.EnterDateShamsi +'-'+T.EnterTimeShamsi as EnterDate  ,T.ExitDateShamsi +'-'+T.ExitTimeShamsi as ExitDate ,
			T.FirstUser, T.LastUser,T.MoistureContent, T.RisingUseful, T.RisingNonUseFul,  T.IsSystem,
			T.TozinState,T.prvYearID ,T.StoreID2 ,T.ParentReciptItemID ,T.ReciptID,
			T.AidNumber,T.AidDate ,T.SellsMethod,L.Code Lookupcode,  L.Name  as SecondTypeName,
			T.TruckNumber,TR.Tozin_Note ,TR.ReciptType AS ConversionCoSerial ,TR.ReciptNumber,TR.ReciptCaption,
			(T.MachineFullWeight-T.MachineWeight) -
			case  when MoistureContent+RisingUseful+RisingNonUseFul <> 0 then ( 100 - (MoistureContent+RisingUseful+RisingNonUseFul)) else 0 end Mandeh,
			D.DeficitAdd_Dec,t.RelatedRecipts,Fn.RelatedName,t.po

FROM			Tozin		AS T 
		JOIN	Customers	AS CT1	ON T.PersonID1 = CT1.CustID 
		JOIN    Customers	AS CT2	ON T.PersonID2 = CT2.CustID 
		JOIN	Customers	AS CT3	ON T.PersonID3 = CT3.CustID 
		JOIN    Stores		AS S	ON T.StoreID = S.n_StoreID 
		JOIN    StuffCoding AS SC	ON T.StuffCode = SC.c_StuffCode 
		LEFT OUTER JOIN		TozinRecalRecipt      AS TR	ON T.TozinID = TR.TozinID 
		LEFT OUTER JOIN     LookUps			      AS L	ON T.SecondType = L.LookUpID  
		Left Outer JOIN     AllDeficits_ForTozins AS D  ON T.TozinID = D.TozinID  AND D.ServerID = T.ServerID AND D.YearID = T.YearID
		Left JOIN (	select LTRIM(R.ServerID) + '-' + LTRIM(R.YearID) + '-' + LTRIM(RI.ReciptItemID)  RelatedNo,
		                   'شماره حواله' + LTRIM(R.ReciptNumber) +'-'+ R.ReciptDate +'-'+ isnull(CT1.CustFirstName,'') +' '+ CT1.CustName as RelatedName
			        FROM   Recipts R 
			         INNER JOIN	ReciptItems  RI  ON RI.ReciptID  = R.ReciptID and RI.YearID = R.YearID  AND RI.ServerID = R.ServerID  
					 INNER JOIN 	Customers    CT1 ON R.PersonID1  = CT1.CustID
				   ) Fn ON fn.RelatedNo = t.RelatedRecipts


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
--------------------------------------------------
-------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Fn_TozinRecalRecipt  (	  @YearIDFrom int , @YearIDTo int )
RETURNS TABLE 
AS
RETURN 
(
SELECT		case when R.TozinID is null then RI.TozinID else R.TozinID end TozinID , R.ReciptID, R.ServerID, R.YearID, R.ReciptType, RT.ReciptCaption, 
			SUM(RI.InputEntity + RI.OutputEntity) AS Entity, SUM(RI.InputWeight + RI.OutputWeight) AS Weight, 
			R.ReciptNumber, R.AidNumber, R.AidDate,
			'مجوز @ '     + LTRIM(STR(CASE WHEN R.ReciptType = 11 THEN ReciptNumber ELSE R.AidNumber END)) + 
			' -- وزن  @ ' + LTRIM(STR(SUM(RI.InputWeight + RI.OutputWeight))) + 
			' -- وزن مبدا @ ' + LTRIM(STR(SUM(RI.InputEntity + RI.OutputEntity))) AS Tozin_Note

FROM		Recipts AS R INNER JOIN
			ReciptItems AS RI ON R.ReciptID = RI.ReciptID AND R.ServerID = RI.ServerID AND R.YearID = RI.YearID INNER JOIN
			ReciptTypes1 AS RT ON R.ReciptType = RT.ReciptType

WHERE		((NOT (R.TozinID IS NULL)) OR (NOT (RI.TozinID IS NULL)))
AND (R.YearID BETWEEN @YearIDFrom  AND @YearIDTo)

GROUP BY	case when R.TozinID is null then RI.TozinID else R.TozinID end, R.ReciptID, R.ServerID, R.YearID, R.ReciptType, 
			RT.ReciptCaption, R.ReciptNumber, R.AidNumber, R.AidDate


)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------
---------------------------------------------------
--------------------------------------------------
-------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Sp_TozinList
 @States varchar(4000)
, @ReciptType int
, @EffectType int
, @allData int
, @PersonID1From int
, @PersonID1TO int
, @TozinNumberFrom int
, @TozinNumberTo int
, @TozinDateFrom char(10)
, @TozinDateTO char(10)
, @PersonID2From int
, @PersonID2TO int
, @StoreIDFrom int
, @StoreIDTO int
, @YearIDFrom int
, @YearIDTo int
, @StuffCodeFrom Bigint
, @StuffCodeTo Bigint
, @LookUpsCodeFrom int
, @LookUpsCodeTo int
, @NotSecondType varchar(4000)
,@UserIDStore int 
,@User_Admin int

AS
BEGIN

SELECT		case	when	(T.MachineFullWeight = 0)  and  (T.MachineWeight > 0)	THEN  3
					when	(T.MachineFullWeight > 0)  and  (T.MachineWeight = 0)	THEN  1  ELSE 0 END EffectType,
     		T.ServerID,T.YearID,T.TozinID,T.ReciptType, T.TozinNumber, T.TozinDate, T.StoreID, S.c_StoreName,T.StuffCode, SC.c_StuffName,
			T.PersonID1, isnull(CT1.CustFirstName,'') +' '+ CT1.CustName AS CustName1, CT1.NationalID AS NationalID1 ,
			T.PersonID2, isnull(CT2.CustFirstName,'') +' '+ CT2.CustName AS CustName2, CT2.CarType CarType2,CT2.NationalID AS NationalID2 ,
			T.PersonID3, isnull(CT3.CustFirstName,'') +' '+ CT3.CustName AS CustName3, 
			T.PersonID4,T.PersonID5,
			T.MachineName,T.MachineNo, T.MachineWeight, T.MachineFullWeight, 
			T.NumberOfBags ,T.TozinNote, 
----     	dbo.MiladiToShamsiTime(T.EnterDate,1) as EnterDate,	dbo.MiladiToShamsiTime(T.ExitDate,1)  as ExitDate, 
----     	M1.ShamsiSlash +'-'+ CONVERT(varchar, T.EnterDate, 108) as EnterDate  ,M2.ShamsiSlash  +'-'+ CONVERT(varchar, T.ExitDate, 108)  as ExitDate  ,
            T.EnterDateShamsi +'-'+T.EnterTimeShamsi as EnterDate  ,T.ExitDateShamsi +'-'+T.ExitTimeShamsi as ExitDate ,
			T.FirstUser, T.LastUser,T.MoistureContent, T.RisingUseful, T.RisingNonUseFul,  T.IsSystem,
			T.TozinState,T.prvYearID ,T.StoreID2 ,T.ParentReciptItemID ,T.ReciptID,
			T.AidNumber,T.AidDate ,T.SellsMethod,L.Code Lookupcode,  L.Name  as SecondTypeName,
			T.TruckNumber,TR.Tozin_Note ,TR.ReciptType AS ConversionCoSerial ,TR.ReciptNumber,TR.ReciptCaption,
			(T.MachineFullWeight-T.MachineWeight) -
			case  when MoistureContent+RisingUseful+RisingNonUseFul <> 0 then ( 100 - (MoistureContent+RisingUseful+RisingNonUseFul)) else 0 end Mandeh,
			D.DeficitAdd_Dec,t.RelatedRecipts,Fn.RelatedName,t.po

FROM			Tozin		AS T 
		JOIN	Customers	AS CT1	ON T.PersonID1 = CT1.CustID 
		JOIN    Customers	AS CT2	ON T.PersonID2 = CT2.CustID 
		JOIN	Customers	AS CT3	ON T.PersonID3 = CT3.CustID 
		JOIN    Stores		AS S	ON T.StoreID = S.n_StoreID 
		JOIN    StuffCoding AS SC	ON T.StuffCode = SC.c_StuffCode 
		LEFT OUTER JOIN		Fn_TozinRecalRecipt(@YearIDFrom , @YearIDTo )  AS TR	ON T.TozinID = TR.TozinID 
		LEFT OUTER JOIN     LookUps			      AS L	ON T.SecondType = L.LookUpID  
		Left Outer JOIN     AllDeficits_ForTozins AS D  ON T.TozinID = D.TozinID  AND D.ServerID = T.ServerID AND D.YearID = T.YearID
		Left JOIN (	select LTRIM(R.ServerID) + '-' + LTRIM(R.YearID) + '-' + LTRIM(RI.ReciptItemID)  RelatedNo,
		                   'شماره حواله' + LTRIM(R.ReciptNumber) +'-'+ R.ReciptDate +'-'+ isnull(CT1.CustFirstName,'') +' '+ CT1.CustName as RelatedName
			        FROM   Recipts R 
			         INNER JOIN	ReciptItems  RI  ON RI.ReciptID  = R.ReciptID and RI.YearID = R.YearID  AND RI.ServerID = R.ServerID  
					 INNER JOIN 	Customers    CT1 ON R.PersonID1  = CT1.CustID
					 where (R.YearID BETWEEN @YearIDFrom  AND @YearIDTo)
				   ) Fn ON fn.RelatedNo = t.RelatedRecipts

join  dbo.SplitString( @States ,',') on cast(part as int) = TozinState

where    (T.ReciptType = @ReciptType )
AND  ((case	when	(T.MachineFullWeight = 0)  and  (T.MachineWeight > 0)	THEN  3
					when	(T.MachineFullWeight > 0)  and  (T.MachineWeight = 0)	THEN  1  ELSE 0 END = @EffectType) or ( @allData = 1))
and (T.PersonID1 between  @PersonID1From And @PersonID1TO)
and (TozinNumber between  @TozinNumberFrom And  @TozinNumberTo)
and (TozinDate between   @TozinDateFrom and @TozinDateTO)
and ( PersonID2 between  @PersonID2From And @PersonID2TO)
and ( StoreID between @StoreIDFrom and @StoreIDTO)
AND (T.YearID BETWEEN @YearIDFrom  AND @YearIDTo)

AND (StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo)
AND (L.Code BETWEEN @LookUpsCodeFrom AND @LookUpsCodeTo)
And L.Code not in (Select part From dbo.SplitString(@NotSecondType,','))

--WHERE (NOT (dbo.ChkUsersStore(@UserIDStore , StoreID, @User_Admin) IS NULL))
AND (NOT (dbo.ChkUsersStore(@UserIDStore , StoreID, @User_Admin) IS NULL))

end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE  FUNCTION Fn_TozinList
(	
 @States varchar(4000)
, @ReciptType int
, @EffectType int
, @allData int
, @PersonID1From int
, @PersonID1TO int
, @TozinNumberFrom int
, @TozinNumberTo int
, @TozinDateFrom char(10)
, @TozinDateTO char(10)
, @PersonID2From int
, @PersonID2TO int
, @StoreIDFrom int
, @StoreIDTO int
, @YearIDFrom int
, @YearIDTo int
, @StuffCodeFrom Bigint
, @StuffCodeTo Bigint
, @LookUpsCodeFrom int
, @LookUpsCodeTo int
, @NotSecondType varchar(4000)
)
RETURNS TABLE 
AS
RETURN 
(

SELECT		case	when	(T.MachineFullWeight = 0)  and  (T.MachineWeight > 0)	THEN  3
					when	(T.MachineFullWeight > 0)  and  (T.MachineWeight = 0)	THEN  1  ELSE 0 END EffectType,
     		T.ServerID,T.YearID,T.TozinID,T.ReciptType, T.TozinNumber, T.TozinDate, T.StoreID, S.c_StoreName,T.StuffCode, SC.c_StuffName,
			T.PersonID1, isnull(CT1.CustFirstName,'') +' '+ CT1.CustName AS CustName1, CT1.NationalID AS NationalID1 ,
			T.PersonID2, isnull(CT2.CustFirstName,'') +' '+ CT2.CustName AS CustName2, CT2.CarType CarType2,CT2.NationalID AS NationalID2 ,
			T.PersonID3, isnull(CT3.CustFirstName,'') +' '+ CT3.CustName AS CustName3, 
			T.PersonID4,T.PersonID5,
			T.MachineName,T.MachineNo, T.MachineWeight, T.MachineFullWeight, 
			T.NumberOfBags ,T.TozinNote, 
----     	dbo.MiladiToShamsiTime(T.EnterDate,1) as EnterDate,	dbo.MiladiToShamsiTime(T.ExitDate,1)  as ExitDate, 
----     	M1.ShamsiSlash +'-'+ CONVERT(varchar, T.EnterDate, 108) as EnterDate  ,M2.ShamsiSlash  +'-'+ CONVERT(varchar, T.ExitDate, 108)  as ExitDate  ,
            T.EnterDateShamsi +'-'+T.EnterTimeShamsi as EnterDate  ,T.ExitDateShamsi +'-'+T.ExitTimeShamsi as ExitDate ,
			T.FirstUser, T.LastUser,T.MoistureContent, T.RisingUseful, T.RisingNonUseFul,  T.IsSystem,
			T.TozinState,T.prvYearID ,T.StoreID2 ,T.ParentReciptItemID ,T.ReciptID,
			T.AidNumber,T.AidDate ,T.SellsMethod,L.Code Lookupcode,  L.Name  as SecondTypeName,
			T.TruckNumber,TR.Tozin_Note ,TR.ReciptType AS ConversionCoSerial ,TR.ReciptNumber,TR.ReciptCaption,
			(T.MachineFullWeight-T.MachineWeight) -
			case  when MoistureContent+RisingUseful+RisingNonUseFul <> 0 then ( 100 - (MoistureContent+RisingUseful+RisingNonUseFul)) else 0 end Mandeh,
			D.DeficitAdd_Dec,t.RelatedRecipts,Fn.RelatedName,t.po

FROM			Tozin		AS T 
		JOIN	Customers	AS CT1	ON T.PersonID1 = CT1.CustID 
		JOIN    Customers	AS CT2	ON T.PersonID2 = CT2.CustID 
		JOIN	Customers	AS CT3	ON T.PersonID3 = CT3.CustID 
		JOIN    Stores		AS S	ON T.StoreID = S.n_StoreID 
		JOIN    StuffCoding AS SC	ON T.StuffCode = SC.c_StuffCode 
		LEFT OUTER JOIN		Fn_TozinRecalRecipt(@YearIDFrom , @YearIDTo )  AS TR	ON T.TozinID = TR.TozinID 
		LEFT OUTER JOIN     LookUps			      AS L	ON T.SecondType = L.LookUpID  
		Left Outer JOIN     AllDeficits_ForTozins AS D  ON T.TozinID = D.TozinID  AND D.ServerID = T.ServerID AND D.YearID = T.YearID
		Left JOIN (	select LTRIM(R.ServerID) + '-' + LTRIM(R.YearID) + '-' + LTRIM(RI.ReciptItemID)  RelatedNo,
		                   'شماره حواله' + LTRIM(R.ReciptNumber) +'-'+ R.ReciptDate +'-'+ isnull(CT1.CustFirstName,'') +' '+ CT1.CustName as RelatedName
			        FROM   Recipts R 
			         INNER JOIN	ReciptItems  RI  ON RI.ReciptID  = R.ReciptID and RI.YearID = R.YearID  AND RI.ServerID = R.ServerID  
					 INNER JOIN 	Customers    CT1 ON R.PersonID1  = CT1.CustID
					 where (R.YearID BETWEEN @YearIDFrom  AND @YearIDTo)
				   ) Fn ON fn.RelatedNo = t.RelatedRecipts

join  dbo.SplitString( @States ,',') on cast(part as int) = TozinState

where    (T.ReciptType = @ReciptType )
AND  ((case	when	(T.MachineFullWeight = 0)  and  (T.MachineWeight > 0)	THEN  3
					when	(T.MachineFullWeight > 0)  and  (T.MachineWeight = 0)	THEN  1  ELSE 0 END = @EffectType) or ( @allData = 1))
and (T.PersonID1 between  @PersonID1From And @PersonID1TO)
and (TozinNumber between  @TozinNumberFrom And  @TozinNumberTo)
and (TozinDate between   @TozinDateFrom and @TozinDateTO)
and ( PersonID2 between  @PersonID2From And @PersonID2TO)
and ( StoreID between @StoreIDFrom and @StoreIDTO)
AND (T.YearID BETWEEN @YearIDFrom  AND @YearIDTo)

AND (StuffCode BETWEEN @StuffCodeFrom AND @StuffCodeTo)
AND (L.Code BETWEEN @LookUpsCodeFrom AND @LookUpsCodeTo)
And L.Code not in (Select part From dbo.SplitString(@NotSecondType,','))


)

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------





