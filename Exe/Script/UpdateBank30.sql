----   UpdateBank 30   1403/10/01   
SET NOCOUNT ON

IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Assets.AssetsGroups') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )

begin 
	EXEC sp_rename 'Assets.AssetsGroups', 'Assets.AssetsGroupsOld';

	INSERT INTO StuffGroups
                         (GroupID, GroupName, StartCode, FinishCode, acc_IncomeTopicCode, acc_BidTopicCode, acc_CTopicCode, acc_DetailCode, acc_CTopicCode2, acc_AFootInComingTopicCode, LevelID, UperGroupId, GroupType, 
                         acc_CTopicCode3)
	SELECT        AsstetsGrpCode, GrpName, AsstetsGrpCode AS Expr1, AsstetsGrpCode AS Expr2, AccTopicCode, AccTopicCode AS Expr3, AccCTopicCode, AccDetailCode, AccCTopicCode2, AccCTopicCode3, LevelID, PrvGrpCode, 
                         9 AS GroupType, AccCTopicCode3 AS Expr4
	FROM            Assets.[Assets.AssetsGroupsOld]
	WHERE        (AsstetsGrpCode NOT IN
                             (SELECT        GroupID
                                FROM            StuffGroups))

end 


if ( COLUMNPROPERTY( OBJECT_ID('StuffGroups'),'PrefixPelak','IsRowGuidCol')is null )
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AssetsGroups' AND type = 'F')
  ALTER TABLE Assets.Amval drop CONSTRAINT FK_Amval_AssetsGroups
ALTER TABLE StuffGroups ADD PrefixPelak varchar(15)
end

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'ReciptItemsID','IsRowGuidCol')is null )
ALTER TABLE Assets.Amval ADD ReciptItemsID bigint

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'SellsEmporium','IsRowGuidCol')is null )
ALTER TABLE Assets.Amval ADD SellsEmporium int NOT NULL CONSTRAINT DF_Amval_SellsEmporium  DEFAULT (1)

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_SellsEmporium' AND type = 'F')
  ALTER TABLE Assets.Amval ADD CONSTRAINT FK_Amval_SellsEmporium FOREIGN KEY (SellsEmporium)REFERENCES
       SellsEmporiums (SellsEmporium) ON UPDATE CASCADE 

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'TopicCode','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD TopicCode bigint NOT NULL CONSTRAINT DF_Config_TopicCode  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'DetailCode','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD DetailCode int NOT NULL CONSTRAINT DF_Config_DetailCode  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'CTopicCode','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD CTopicCode int NOT NULL CONSTRAINT DF_Config_CTopicCode  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'CTopicCode2','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD CTopicCode2 int NOT NULL CONSTRAINT DF_Config_CTopicCode2  DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Config'),'CTopicCode3','IsRowGuidCol')is null )
ALTER TABLE Assets.Config ADD CTopicCode3 int NOT NULL CONSTRAINT DF_Config_CTopicCode3  DEFAULT (0)


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_AssetsGroups' AND type = 'F')
ALTER TABLE Assets.Amval WITH CHECK ADD CONSTRAINT FK_Amval_AssetsGroups FOREIGN KEY (AsstetsGrpCode) REFERENCES StuffGroups(GroupID) ON UPDATE CASCADE 


if exists (select * from sysobjects where id = object_id(N'Assets.AssetsGroups') and OBJECTPROPERTY(id, N'IsView') = 1)
drop view Assets.AssetsGroups

exec('create VIEW Assets.AssetsGroups
AS
SELECT        StuffGroups.GroupID AsstetsGrpCode, StuffGroups.GroupName GrpName,acc_IncomeTopicCode  AccTopicCode,acc_DetailCode AccDetailCode,acc_CTopicCode AccCTopicCode
   ,acc_CTopicCode2 AccCTopicCode2,acc_CTopicCode3 AccCTopicCode3, PrefixPelak,0 LevelID,StuffGroups.UperGroupId PrvGrpCode


FROM            StuffGroups LEFT OUTER JOIN
                             (SELECT DISTINCT UperGroupId
                                FROM            StuffGroups AS StuffGroups_1) AS ChildGroup ON StuffGroups.GroupID = ChildGroup.UperGroupId LEFT OUTER JOIN
                             (SELECT        GroupID, COUNT(GroupID) AS cntGroupID
                                FROM            StuffCoding AS StuffCoding_1
                                GROUP BY GroupID) AS stuffcoding ON stuffcoding.GroupID = StuffGroups.GroupID
WHERE        (ChildGroup.UperGroupId IS NULL) AND (StuffGroups.LevelID >=
                             (SELECT        LevelIdStuffGroup
                                FROM            dbo.Config))
								AND GroupType = 9 ')


IF  EXISTS(SELECT * FROM SYSOBJECTS where id = object_id(N'Assets.Units') and OBJECTPROPERTY(id, N'IsUserTable') = 1 )
begin
	IF  EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Units' AND type = 'F')
		ALTER TABLE Assets.Amval drop CONSTRAINT FK_Amval_Units

	EXEC sp_rename 'Assets.Units', 'Assets.UnitsOld';

	INSERT INTO Units
                         (UnitCode, UnitName)
	SELECT        unitCode, unitName
	FROM            Assets.[Assets.UnitsOld]
	WHERE        (unitCode NOT IN
                             (SELECT        UnitCode
                                FROM            Units))

end 

IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Units' AND type = 'F')
begin
ALTER TABLE Assets.Amval alter column UnitCode tinyint not null
ALTER TABLE Assets.Amval WITH CHECK ADD CONSTRAINT FK_Amval_Units FOREIGN KEY (UnitCode) REFERENCES Units(UnitCode) ON UPDATE CASCADE 
end

if ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'ColorID','IsRowGuidCol')is null )
 ALTER TABLE Assets.Amval ADD ColorID int  




--if ( COLUMNPROPERTY( OBJECT_ID('Assets.AlterAssets'),'YearID','IsRowGuidCol')is null )
--ALTER TABLE Assets.AlterAssets ADD YearID int NOT NULL CONSTRAINT DF_AlterAssets_YearID  DEFAULT (1400)

--if ( COLUMNPROPERTY( OBJECT_ID('Assets.Revalidate'),'YearID','IsRowGuidCol')is null )
--ALTER TABLE Assets.Revalidate ADD YearID int NOT NULL CONSTRAINT DF_Revalidate_YearID  DEFAULT (1400)

if not( COLUMNPROPERTY( OBJECT_ID('Assets.AlterAssets'),'YearID','IsRowGuidCol')is null )
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_AlterAssets_YearID' AND type = 'D')
  ALTER TABLE Assets.AlterAssets drop CONSTRAINT DF_AlterAssets_YearID

ALTER TABLE Assets.AlterAssets drop COLUMN  YearID 
end

if not( COLUMNPROPERTY( OBJECT_ID('Assets.Revalidate'),'YearID','IsRowGuidCol')is null )
begin
IF EXISTS (SELECT name FROM sysobjects WHERE name = 'DF_Revalidate_YearID' AND type = 'D')
 ALTER TABLE Assets.Revalidate drop CONSTRAINT DF_Revalidate_YearID

ALTER TABLE Assets.Revalidate drop COLUMN  YearID 
end

if not exists (select * from dbo.sysobjects where id = object_id(N'Assets.Colors') and OBJECTPROPERTY (id,N'IsUserTable') =1)
  CREATE TABLE Assets.Colors ( ColorID int NOT NULL ,  ColorName varchar(30) Not NULL , 
  CONSTRAINT PK_Colors PRIMARY KEY CLUSTERED ( ColorID ) ON [PRIMARY]  ) ON [PRIMARY]  


IF not EXISTS (SELECT name FROM sysobjects WHERE name = 'FK_Amval_Colors' AND type = 'F')
ALTER TABLE Assets.Amval WITH CHECK ADD CONSTRAINT FK_Amval_Colors FOREIGN KEY (ColorID) REFERENCES Assets.Colors(ColorID) ON UPDATE CASCADE 

IF ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.Amval ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.Amval'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.Amval ADD LastUser varchar(50)
    
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.Movement'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.Movement ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.Movement'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.Movement ADD LastUser varchar(50)


IF ( COLUMNPROPERTY( OBJECT_ID('Assets.AlterAssets'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.AlterAssets ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.AlterAssets'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.AlterAssets ADD LastUser varchar(50)

IF ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.Decrease ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.Decrease'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.Decrease ADD LastUser varchar(50)

IF ( COLUMNPROPERTY( OBJECT_ID('Assets.DepTable'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.DepTable ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.DepTable'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.DepTable ADD LastUser varchar(50)

IF ( COLUMNPROPERTY( OBJECT_ID('Assets.Expenses'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.Expenses ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.Expenses'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.Expenses ADD LastUser varchar(50)

IF ( COLUMNPROPERTY( OBJECT_ID('Assets.ReValidateItems'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.ReValidateItems ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.ReValidateItems'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.ReValidateItems ADD LastUser varchar(50)

IF ( COLUMNPROPERTY( OBJECT_ID('Assets.BerakAmval'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.BerakAmval ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.BerakAmval'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.BerakAmval ADD LastUser varchar(50)

IF ( COLUMNPROPERTY( OBJECT_ID('Assets.AidAssets'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.AidAssets ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.AidAssets'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.AidAssets ADD LastUser varchar(50)


IF ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsInsouranceSpecial'),'FirstUser','ColumnId') IS NULL )
    ALTER TABLE Assets.AssetsInsouranceSpecial ADD FirstUser varchar(50)
IF ( COLUMNPROPERTY( OBJECT_ID('Assets.AssetsInsouranceSpecial'),'LastUser','ColumnId') IS NULL )
    ALTER TABLE Assets.AssetsInsouranceSpecial ADD LastUser varchar(50)



