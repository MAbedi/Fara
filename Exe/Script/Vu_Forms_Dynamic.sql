--- فقط قابل اجرا روی سیستم یکپارچه فرا می باشد
if exists (select * from sysobjects where id = object_id(N'util.Vu_Forms_Dynamic') AND OBJECTPROPERTY(id, N'IsView') = 1)
 drop view util.Vu_Forms_Dynamic
GO
if exists (select * from sysobjects where id = object_id(N'util.Menu_Daynamic_Types') and xtype in (N'FN', N'IF', N'TF'))
drop function util.Menu_Daynamic_Types
GO

if exists (select * from sysobjects where id = object_id(N'util.InsertOperatorsAccess') and xtype =N'P')
drop PROCEDURE util.InsertOperatorsAccess
GO
if exists (select * from sysobjects where id = object_id(N'Util.SelectOperator') and xtype in (N'FN', N'IF', N'TF'))
drop function Util.SelectOperator
GO
---
if exists (select * from sysobjects where id = object_id(N'util.Vu_Dynamic_AND_Statis_Forms') AND OBJECTPROPERTY(id, N'IsView') = 1)
 drop view util.Vu_Dynamic_AND_Statis_Forms
GO


CREATE FUNCTION util.Menu_Daynamic_Types
  (
    @SubSysID int
  )
RETURNS table  AS  
  return (
  
  SELECT  
    2 AS Part, 
    ReciptType ID  ,
    'actReciptType_'+ltrim(ReciptType) AS MenuName,
    ReciptCaption,1 Master_Caption_ID ,
    'انبار و فروش' AS Master_Caption ,
    RowOnMnu ,
    CASE TemplateCode   
      WHEN  0 then  'ReciptsF'
      When  1 then  'StuffToStoreF'
      When  2 then  'ReciptsGridF'
      When  3 then  'ContractF'
      When  4 then  'ContractStufF'
      When  5 then  'ReciptsBuyF'
      When  6 then  'RentRecipts'
      When  7 then  'ReciptsAnalysisF'
      When  8 then  'ReciptsStoreF'
      When  9 then  'MaintenanceF'
      When 10 then  'ReciptsGrid2F'
      When 11 then  'ActionPlansF'
      When 12 then  'Cnt_Contracts2F'
      When 13 then  'GetTozinF'
      When 14 then  'Cnt_ContractsF'
      When 15 then  'SamplesF'
      When 16 then  'SampleItemsF'
    end  AS FormName ,
    'mnuItemOther'+ltrim(@SubSysID-1) AS Parent_Menu_Name
  FROM ReciptTypes 
  where  SUBSTRING(MnuPlaceIDs,@SubSysID,1)='1'
--
UNION ALL
--
SELECT 3 AS Part,
       ReciptType,
       'actReciptTypeL_' + ltrim(ReciptType) AS MenuName,
       'لیست ' + ReciptCaption,
       1 Master_Caption_ID,
       'انبار و فروش' Master_Caption,
       RowOnMnu,
       CASE TemplateCode
         WHEN 1 then
          'rptBuySpecialF'
         WHEN 5 then
          'ReciptsBuyList'
         WHEN 13 then
          'GetTozinListF'
         ELSE
          'Rpt001F'
       END AS FormName,
       'mnuItemOther' + ltrim(@SubSysID-1) AS Parent_Menu_Name
  FROM ReciptTypes
 where SUBSTRING(MnuPlaceIDs, @SubSysID, 1) = '1'

)

GO
---


CREATE VIEW util.Vu_Forms_Dynamic AS
  SELECT * from util.Menu_Daynamic_Types(1)
  UNION ALL
  SELECT * from util.Menu_Daynamic_Types(2)
  UNION ALL
  SELECT * from util.Menu_Daynamic_Types(3)
  UNION ALL
  SELECT * from util.Menu_Daynamic_Types(4)

union all
SELECT 4 AS Part,
       FormType,
       'actFormTypes' + ltrim(FormType) AS MenuName,
       FormCaption,
       0 Master_Caption_ID,
       'خزانه داری' Master_Caption,
       RowOnMnu,
       CASE DisplayFormType
         WHEN 0 then
          'GetOtherMoneyF'
         When 1 then
          'GetCheckF'
         When 2 then
          'براي فراخواني فرمي وجود ندارد.'
         When 3 then
          'PaymentCashF'
         When 4 then
          'PaymentExpenceF'
         When 5 then
          'Loan'
         When 6 then
          'براي فراخواني فرمي وجود ندارد.'
         When 7 then
          'GetOtherMoney2F'
       end AS FromName,
       'MItemCoffer' + ltrim(MnuPlaceID) AS Parent_Menu_Name
FROM FormTypes
WHERE MnuPlaceID IS NOT NULL
   and MnuPlaceID > 0


UNION ALL

SELECT 5 AS Part,
       CASE
         WHEN NextFormType > 0 then
          NextFormType
         ELSE
          FormType
       END FormType,
       'actFormTypesL' + ltrim(FormType) AS MenuName,
       'لیست ' + FormCaption,
       0 Master_Caption_ID,
       'خزانه داری' Master_Caption,
       RowOnMnu,
       CASE
         WHEN NextFormType > 0 then
          'PermitIssuanceF'
         ELSE
          'RptCofferF'
       END AS FromName,
       'MItemCoffer' + ltrim(MnuPlaceID) AS Parent_Menu_Name
FROM FormTypes
WHERE MnuPlaceID IS NOT NULL
   AND ShowListOnMnu > 0
   and MnuPlaceID > 0


UNION ALL

SELECT 6 AS Part,
       ReportID,
       'RptReportsF' + ltrim(ReportID) AS MenuName,
       FormCaption,
       CASE
         WHEN MenuName = 'Bsell_Coffer_OtherRpt' THEN
          0
         WHEN MenuName = 'Bsell_Store_OtherReport' THEN
          1
         WHEN MenuName = 'BsellOtherReport' THEN
          2
         WHEN MenuName = '???' THEN
          3
         WHEN MenuName = '??' THEN
          4
         ELSE
          0
       END Master_Caption_ID,
       MenuName Master_Caption,
       r.Row,
       'RptReportsF' AS FromName,
       MenuName AS Parent_Menu_Name
  FROM FaraSystems.dbo.Reports r


UNION ALL

SELECT 7 AS Part,
       FormID,
       'FormDesignF' + ltrim(FormID) AS MenuName,
       FormCaption,
       0 AS Master_Caption_ID,
       MenuName AS Master_Caption,
       Row,
       'FormDesignF' AS FromName,
       MenuName AS Parent_Menu_Name
FROM FaraSystems.dbo.FormDesign

UNION ALL

SELECT 8 AS Part,
       ID,
       'DesignFormsF' + ltrim(ID) AS MenuName,
       FormCaption,
       0 AS Master_Caption_ID,
       MenuName AS Master_Caption,
       FormNo,
       'DesignFormsF' AS FromName,
       MenuName AS Parent_Menu_Name
FROM Dsn.DesignForms

UNION ALL
SELECT 9 AS Part,
       ID,
       'DesignFormsF' + ltrim(ID) MenuName,
       'لیست ' + FormCaption,
       0 AS Master_Caption_ID,
       MenuName AS Master_Caption,
       FormNo,
       'DesignFormsF' AS FromName,
       MenuName AS Parent_Menu_Name
FROM Dsn.DesignForms

  
UNION ALL

SELECT 
    10 AS Part, 
    FormType,
    case 
      when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemInterdictEffectS'      +'ActFormInfo_3F'       +ltrim(FormType)+'_2'
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryCalcS'           +'ActFormInfo_5F'     +ltrim(FormType)+'_2'
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryEffectS'       +'ActFormInfo_2F'     +ltrim(FormType)+'_2'
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemOtherFormTypeS'        +'ActFormInfo_2FDis5'   +ltrim(FormType)+'_2'
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemOtherFormTypeSVijeh'   +'ActFormInfo_2FDis5'   +ltrim(FormType)+'_2'
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryCorrelateS'      +'ActFormInfo_6F'     +ltrim(FormType)+'_2'
      when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemInterdictEffectP'      +'ActFormInfo_3F'     +ltrim(FormType)+'_3'
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryCalcP'           +'ActFormInfo_5F'     +ltrim(FormType)+'_3'
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryEffectP'         +'ActFormInfo_2F'     +ltrim(FormType)+'_3'
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemOtherFormTypeP'        +'ActFormInfo_2FDis5'   +ltrim(FormType)+'_3'
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemOtherFormTypePVijeh'   +'ActFormInfo_2FDis5'   +ltrim(FormType)+'_3'
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryCorrelateP'      +'ActFormInfo_6F'     +ltrim(FormType)+'_3'
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'MnuPay_MItemOtherFormTypeScVijeh'  +'ActFormInfo_2FDis5'   +ltrim(FormType)+'_0'
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'MnuPay_MItemSchedule5'             +'ActFormInfo_2FDis5'   +ltrim(FormType)+'_0'
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOtherFormTypeOVijeh'   +'ActFormInfo_2FDis5'   +ltrim(FormType)+'_1'
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization5'         +'ActFormInfo_2FDis5'   +ltrim(FormType)+'_1'
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization6'         +'ActFormInfo_6F'     +ltrim(FormType)+'_1'
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization4'         +'ActFormInfo_5F'     +ltrim(FormType)+'_1'
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization2'         +'ActFormInfo_2F'     +ltrim(FormType)+'_1'
    end MenuName ,                                                          
    FormCaption_L1, 
    0 AS Master_Caption_ID, 
    'کارگزینی حقوق دستمزد' AS Master_Caption, 
    MnuRow,
    case 
      when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_3F' 
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_5F' 
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_2F' 
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_2FDis5' 
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_2FDis5' 
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_6F' 
      when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_3F' 
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_5F' 
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_2F' 
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_2FDis5' 
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_2FDis5' 
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_6F' 
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'FormInfo_2FDis5'
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'FormInfo_2FDis5' 
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_2FDis5' 
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_2FDis5' 
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_6F' 
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_5F' 
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_2F' 
    end FormName , 
    case 
      when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemInterdictEffectS'      
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryCalcS'           
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryEffectS'       
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemOtherFormTypeS'        
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemOtherFormTypeSVijeh'   
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryCorrelateS'      
      when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemInterdictEffectP'      
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryCalcP'           
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryEffectP'         
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemOtherFormTypeP'        
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemOtherFormTypePVijeh'   
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryCorrelateP'      
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'MnuPay_MItemOtherFormTypeScVijeh'  
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'MnuPay_MItemSchedule5'             
      when  DisplayFormType = 1 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOtherFormTypeOVijeh'   
      when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization5'         
      when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization6'         
      when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization4'         
      when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization2'         
    end AS Parent_Menu_Name 

FROM Pay.FormTypes WHERE (DisplayFormType >0 ) 
----ORDER BY MnuRow,FormType
  -- 

UNION ALL

SELECT 
    11 AS Part,
    LookUpID,
    'actNewItem_' + ltrim(LookUpID) MenuName,
    LookUps.Name FormCaption,
    0 AS Master_Caption_ID,
    'انبار و فروش' AS Master_Caption,
    Code,
    'LookUpsF' AS FromName,
    'mnuLookUpsF' AS Parent_Menu_Name
FROM LookUps
WHERE (Code > 300)
   AND (Kind = 0)
--
UNION ALL
--
SELECT 
    11 AS Part,
    LookUpID,
    'actNewItem_' + ltrim(LookUpID) MenuName,
    LookUps.Name FormCaption,
    0 AS Master_Caption_ID,
    'انبار و فروش' AS Master_Caption,
    Code,
    'LookUpsF' AS FromName,
    'mnuLookUps2F' AS Parent_Menu_Name
FROM LookUps
WHERE (Code > 300)
   AND (Kind = 0)
--
UNION ALL
--
SELECT 
    11 AS Part,
    LookUpID,
    'actNewItem_' + ltrim(LookUpID) MenuName,
    LookUps.Name FormCaption,
    0 AS Master_Caption_ID,
    'انبار و فروش' AS Master_Caption,
    Code,
    'LookUpsF' AS FromName,
    'mnuLookUps3F' AS Parent_Menu_Name
FROM LookUps
WHERE (Code > 300)
   AND (Kind = 0)

GO




CREATE VIEW util.Vu_Dynamic_AND_Statis_Forms AS

SELECT  ID,SysMenuName,SysMenuCaption,ParentID,FormName,Null as ReciptType  
FROM FaraSystems.Util.SubSystemsMenus

union all

SELECT  d.part * 10000+d.id id ,
		MenuName , D.ReciptCaption ,S.ID,D.FormName,D.ID
FROM  util.Vu_Forms_Dynamic D 
	INNER JOIN FaraSystems.Util.SubSystemsMenus S ON D.Parent_Menu_Name = S.SysMenuName

GO
----

CREATE PROCEDURE util.InsertOperatorsAccess @ID int,@UserID int  
as
begin
with   cteReports (id)
  AS
  (
   SELECT id
   FROM  util.Vu_Dynamic_AND_Statis_Forms m
   where id = @ID 
    UNION ALL
    SELECT m.ID
    FROM util.Vu_Dynamic_AND_Statis_Forms m 
      INNER JOIN cteReports r
        ON m.ParentID = r.id 
)
insert into FaraSystems.Util.OperatorsAccess (SubSystemsMenus_ID,UserID)
SELECT c.id,@UserID 
FROM cteReports c 
	INNER JOIN util.Vu_Dynamic_AND_Statis_Forms m  on c.id = m.ID
	left join  FaraSystems.Util.OperatorsAccess Ex on c.id = ex.SubSystemsMenus_ID and ex.UserID = @UserID
where ex.id is null 
end 
GO

---
CREATE FUNCTION Util.SelectOperator (@UserID INT)
RETURNS TABLE
AS
RETURN (

SELECT   v.ID,v.ParentID,v.SysMenuCaption,v.FormName,v.ReciptType,o.ActionName 
FROM  util.Vu_Dynamic_AND_Statis_Forms v
 inner join FaraSystems.Util.OperatorsAccess o on v.ID=o.SubSystemsMenus_ID
where o.UserID =@UserID
)
