-- روش اول فارسی استاندارد  لطفا تا پایان عملیات صبر کنید اصلاح جستجوی ی و ک
DECLARE @Qry NVARCHAR(MAX)
DECLARE @Table NVARCHAR(MAX),
        @schemas NVARCHAR(MAX),
@Col NVARCHAR(MAX) DECLARE Table_Cursor CURSOR
FOR  
--پيدا كردن تمام فيلدهاي متني تمام جداول ديتابيس جاري   
SELECT s.name , a.name, --table          
       b.name --col   
FROM   sysobjects a INNER JOIN syscolumns b ON a.id = b.id INNER JOIN sys.schemas s ON a.uid = s.schema_id 
WHERE  a.id = b.id   
AND (a.name<>'Analyze') AND (a.name<>'Assets.AssetsGroupsOld')AND (a.name<>'Assets.UnitsOld')AND (a.name<>'Assets.UnitsOld')
AND (b.iscomputed <>1)
 AND a.xtype = 'u' --User table         
 AND (
		b.xtype = 99 --ntext                  
		OR b.xtype = 35 -- text                  
		OR b.xtype = 231 --nvarchar                  
		OR b.xtype = 167 --varchar                  
		OR b.xtype = 175 --char                  
		OR b.xtype = 239 --nchar 
		) 
		OPEN Table_Cursor FETCH NEXT FROM  Table_Cursor INTO @schemas,@Table,@Col
		WHILE (@@FETCH_STATUS = 0)
		BEGIN  
		set @Qry =      'update ' +@schemas+'.'+ @Table + ' set [' + @Col + 
		            ']= REPLACE(REPLACE(CAST([' + @Col +
		            '] as nvarchar(max)) , NCHAR(1610), NCHAR(1740)),NCHAR(1603),NCHAR(1705)) '
        --print @Qry
		EXEC (@Qry) 
		
		FETCH NEXT FROM Table_Cursor INTO @schemas,@Table,@Col
		     END CLOSE Table_Cursor DEALLOCATE Table_Cursor