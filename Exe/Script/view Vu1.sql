if exists (select * from sysobjects where id = object_id(N'Vu1') AND OBJECTPROPERTY(id, N'IsView') = 1)
		drop view Vu1
GO
CREATE VIEW Vu1 AS
SELECT      /*TOP (2)*/  1 AS Part,  ID, MenuName, MenuCaption, Master_Caption_ID, Master_Caption--, ID_D, ID_Menu_M, ID_Menu_DD, ID_Menu_MDD
, IDSort, FormName
FROM         FaraSystems1.dbo.Menu_M
union all
SELECT  /*TOP (2)*/  2 AS Part, ReciptType ID  ,
      CASE TemplateCode   WHEN
             0  then  'MnuReciptsF'+LTRIM(ReciptType)            
      When   1  then  'MnuStuffToStoreF'+LTRIM(ReciptType)
      When   2  then  'MnuReciptsGridF'+LTRIM(ReciptType)
      When   3  then  'MnuContractF'+LTRIM(ReciptType)
      When   4  then  'MnuContractStufF'+LTRIM(ReciptType)
      When   5  then  'MnuReciptsBuyF'+LTRIM(ReciptType)
      When   6  then  'MnuRentRecipts'+LTRIM(ReciptType)
      When   7  then  'MnuReciptsAnalysisF'+LTRIM(ReciptType)
      When   8  then  'MnuReciptsStoreF'+LTRIM(ReciptType)
      When   9  then  'mnuMaintenanceF'+LTRIM(ReciptType)
      When  10  then  'MnuReciptsGrid2F'+LTRIM(ReciptType)
      When  11  then  'MnuActionPlansF'+LTRIM(ReciptType)
      When  12  then  'MnuCnt_Contracts2F'+LTRIM(ReciptType)
      When  13  then  'MnuGetTozinF'+LTRIM(ReciptType)
      When  14  then  'Cnt_ContractsF'+LTRIM(ReciptType)
      When  15  then  'SamplesF'+LTRIM(ReciptType)
      When  16  then  'SampleItemsF'+LTRIM(ReciptType)
      end  AS MenuName,  ReciptCaption,1 Master_Caption_ID ,'انبار و فروش' AS Master_Caption_ID
	  ,RowOnMnu ,
CASE TemplateCode   WHEN
             0  then  'ReciptsF'+LTRIM(ReciptType)            
      When   1  then  'StuffToStoreF'+LTRIM(ReciptType)
      When   2  then  'ReciptsGridF'+LTRIM(ReciptType)
      When   3  then  'ContractF'+LTRIM(ReciptType)
      When   4  then  'ContractStufF'+LTRIM(ReciptType)
      When   5  then  'ReciptsBuyF'+LTRIM(ReciptType)
      When   6  then  'RentRecipts'+LTRIM(ReciptType)
      When   7  then  'ReciptsAnalysisF'+LTRIM(ReciptType)
      When   8  then  'ReciptsStoreF'+LTRIM(ReciptType)
      When   9  then  'MaintenanceF'+LTRIM(ReciptType)
      When  10  then  'ReciptsGrid2F'+LTRIM(ReciptType)
      When  11  then  'ActionPlansF'+LTRIM(ReciptType)
      When  12  then  'Cnt_Contracts2F'+LTRIM(ReciptType)
      When  13  then  'GetTozinF'+LTRIM(ReciptType)
      When  14  then  'Cnt_ContractsF'+LTRIM(ReciptType)
      When  15  then  'SamplesF'+LTRIM(ReciptType)
      When  16  then  'SampleItemsF'+LTRIM(ReciptType)
      end  AS FormName
	  FROM ReciptTypes 
WHERE MnuPlaceIDs  IS NOT NULL and replace (MnuPlaceIDs,'0','')>'0'
    --ORDER BY  RowOnMnu
union all
SELECT  /*TOP (2)*/  3 AS Part, ReciptType,
      CASE TemplateCode   
      WHEN  1  then 'MnurptBuySpecialF'+LTRIM(ReciptType)    
      WHEN  5  then 'MnuReciptsBuyList'+LTRIM(ReciptType)    
      WHEN 13  then 'MnuGetTozinListF'+LTRIM(ReciptType)    
          ELSE      'MnuRpt001F'+LTRIM(ReciptType)    
      END  AS MenuName,
     'لیست '+ReciptCaption,1 Master_Caption_ID,'انبار و فروش' Master_Caption ,RowOnMnu ,
      CASE TemplateCode   
      WHEN  1  then 'rptBuySpecialF'+LTRIM(ReciptType)    
      WHEN  5  then 'ReciptsBuyList'+LTRIM(ReciptType)    
      WHEN 13  then 'GetTozinListF'+LTRIM(ReciptType)    
          ELSE      'Rpt001F'+LTRIM(ReciptType)    
      END  AS FormName
	 
	 FROM ReciptTypes 
WHERE MnuPlaceIDs  IS NOT NULL AND ShowListOnMnu>0 and replace (MnuPlaceIDs,'0','')>'0'
    --ORDER BY  RowOnMnu



union all
SELECT  /*TOP (2)*/  4 AS Part,  FormType,
      CASE DisplayFormType   WHEN
             0  then  'MnuGetOtherMoneyF'+LTRIM( FormType)            
      When   1  then  'MnuGetCheckF'+LTRIM( FormType)
      When   2  then  'براي فراخواني فرمي وجود ندارد.'+LTRIM( FormType)
      When   3  then  'MnuPaymentCashF'+LTRIM( FormType)
      When   4  then  'MnuPaymentExpenceF'+LTRIM( FormType)
      When   5  then  'MnuLoan'+LTRIM( FormType)
      When   6  then  'براي فراخواني فرمي وجود ندارد.'+LTRIM( FormType)
      When   7  then  'MnuGetOtherMoney2F'+LTRIM( FormType)
      end  AS MenuName,
       FormCaption,0  Master_Caption_ID,'خزانه داری' Master_Caption,RowOnMnu
	   ,
      CASE DisplayFormType   WHEN
             0  then  'GetOtherMoneyF'+LTRIM( FormType)            
      When   1  then  'GetCheckF'+LTRIM( FormType)
      When   2  then  'براي فراخواني فرمي وجود ندارد.'+LTRIM( FormType)
      When   3  then  'PaymentCashF'+LTRIM( FormType)
      When   4  then  'PaymentExpenceF'+LTRIM( FormType)
      When   5  then  'Loan'+LTRIM( FormType)
      When   6  then  'براي فراخواني فرمي وجود ندارد.'+LTRIM( FormType)
      When   7  then  'GetOtherMoney2F'+LTRIM( FormType)
      end  AS FromName
	  FROM FormTypes 
WHERE MnuPlaceID  IS NOT NULL and MnuPlaceID>0
    --ORDER BY  RowOnMnu



UNION ALL
SELECT  /*TOP (2)*/  5 AS Part,CASE WHEN  NextFormType> 0   then NextFormType   
          ELSE FormType END FormType,
      CASE WHEN  NextFormType> 0   then 'MnuPermitIssuanceF'+LTRIM( FormType)    
          ELSE      'MnuRptCofferF'+LTRIM( FormType)    
      END  AS MenuName,
     'لیست '+ FormCaption, 0  Master_Caption_ID,'خزانه داری' Master_Caption,RowOnMnu
,
      CASE WHEN  NextFormType> 0   then 'PermitIssuanceF'+LTRIM( FormType)    
          ELSE      'RptCofferF'+LTRIM( FormType)    
      END  AS FromName	 FROM  FormTypes 
WHERE MnuPlaceID  IS NOT NULL AND ShowListOnMnu>0 and MnuPlaceID>0
    --ORDER BY  RowOnMnu

UNION ALL

SELECT  /*TOP (2)*/  6 AS Part,  ReportID,        MenuName  AS MenuName,
       FormCaption, 
	   CASE WHEN MenuName='Bsell_Coffer_OtherRpt' THEN 0
	        WHEN MenuName='Bsell_Store_OtherReport' THEN 1
            WHEN MenuName='BsellOtherReport' THEN 2 
            WHEN MenuName='???' THEN 3 
            WHEN MenuName='??' THEN 4 
	   ELSE 0 END  Master_Caption_ID,MenuName Master_Caption, [Row],
	   'RptReportsF'+LTRIM( ReportID)       AS FromName
	  FROM FaraSystems.dbo.Reports
    --ORDER BY  [Row]

UNION ALL

SELECT     /*TOP (2)*/  7 AS Part,    FormID, MenuName, FormCaption, 0 AS Master_Caption_ID, MenuName AS Master_Caption, Row, 'FormDesignF' + LTRIM(FormID) AS FromName
FROM            FaraSystems.dbo.FormDesign
--ORDER BY Row


UNION ALL


SELECT         /*TOP (2)*/  8 AS Part,ID,  MenuName, FormCaption, 0 AS Master_Caption_ID, MenuName AS Master_Caption, FormNo, 'DesignFormsF' + LTRIM(ID) AS FromName
FROM            Dsn.DesignForms
    --ORDER BY  FormNo
UNION ALL
SELECT         /*TOP (2)*/  9 AS Part,ID,  MenuName, 'لیست '+FormCaption, 0 AS Master_Caption_ID, MenuName AS Master_Caption, FormNo, 'DesignFormsF' + LTRIM(ID) AS FromName
FROM            Dsn.DesignForms
    --ORDER BY  FormNo
	
UNION ALL

SELECT /*TOP (2)*/  10 AS Part, FormType
  ,case 
   when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemInterdictEffectS'    +ltrim(MnuRow)
   when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryCalcS'         +ltrim(MnuRow)
   when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryEffectS'       +ltrim(MnuRow)
   when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemOtherFormTypeS'      +ltrim(MnuRow)
   when  DisplayFormType = 0 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemOtherFormTypeSVijeh' +ltrim(MnuRow)
   when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'MnuPay_MItemSalaryCorrelateS'    +ltrim(MnuRow)
   when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemInterdictEffectP'    +ltrim(MnuRow)
   when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryCalcP'         +ltrim(MnuRow)
   when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryEffectP'       +ltrim(MnuRow)
   when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemOtherFormTypeP'      +ltrim(MnuRow)
   when  DisplayFormType = 0 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemOtherFormTypePVijeh' +ltrim(MnuRow)
   when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'MnuPay_MItemSalaryCorrelateP'    +ltrim(MnuRow)
   when  DisplayFormType = 0 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'MnuPay_MItemOtherFormTypeScVijeh'+ltrim(MnuRow)
   when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'MnuPay_MItemSchedule5'           +ltrim(MnuRow)
   when  DisplayFormType = 0 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOtherFormTypeOVijeh' +ltrim(MnuRow)
   when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization5'       +ltrim(MnuRow)
   when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization6'       +ltrim(MnuRow)
   when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization4'       +ltrim(MnuRow)
   when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'MnuPay_MItemOrganization2'       +ltrim(MnuRow)
   end MenuName
   ,FormCaption_L1, 0 AS Master_Caption_ID, 'کارگزینی حقوق دستمزد' AS Master_Caption, MnuRow
  ,case 
   when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_3F' 
   when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_5F' 
   when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_2F' 
   when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_2FDis5' 
   when  DisplayFormType = 0 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_2FDis5' 
   when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,2,%') then 'FormInfo_6F' 
   when  DisplayFormType = 3 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_3F' 
   when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_5F' 
   when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_2F' 
   when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_2FDis5' 
   when  DisplayFormType = 0 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_2FDis5' 
   when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,3,%') then 'FormInfo_6F' 
   when  DisplayFormType = 0 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'FormInfo_2FDis5'
   when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,0,%') then 'FormInfo_2FDis5' 
   when  DisplayFormType = 0 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_2FDis5' 
   when  DisplayFormType = 5 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_2FDis5' 
   when  DisplayFormType = 6 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_6F' 
   when  DisplayFormType = 4 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_5F' 
   when  DisplayFormType = 2 AND (','+ShowMnuPlace+',' LIKE '%,1,%') then 'FormInfo_2F' 
   end FormName

FROM Pay.FormTypes WHERE (DisplayFormType >0 ) 
----ORDER BY MnuRow,FormType


UNION ALL

SELECT        /*TOP (2)*/  11 AS Part,LookUpID,'MnuLookUpsF'+LTRIM(LookUpID) MenuName,[Name] FormCaption  
, 0 AS Master_Caption_ID, 'انبار و فروش' AS Master_Caption, Code, 'LookUpsF' + LTRIM(LookUpID) AS FromName
FROM            LookUps
      WHERE (Code > 300) AND (Kind = 0)

GO
select * from vu1
where Part>1  --داینامیک منو