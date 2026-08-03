----   UpdateBank 35   1405/05/11
SET NOCOUNT ON
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- صورتحساب الکترونیکی موضوع ماده (9) قانون پایانه‌های فروشگاهی و سامانه مودیان
-- RC_IITP.IS_V7.9 - insr, nti1, nti2, indati2m

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'Insr','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD Insr bit NOT NULL CONSTRAINT DF_Recipts_Insr DEFAULT (0)

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'Indati2m','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD Indati2m datetime NULL

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'Nti1','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD Nti1 varchar(30) NULL

if ( COLUMNPROPERTY( OBJECT_ID('Recipts'),'Nti2','IsRowGuidCol')is null )
  ALTER TABLE Recipts ADD Nti2 varchar(30) NULL
