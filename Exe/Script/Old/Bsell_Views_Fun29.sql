---UP8   تاريخ  1402/08/20  Pay Active
SET NOCOUNT ON 
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.SP_TransferFunctionsOfMonth') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
DROP PROCEDURE Pay.SP_TransferFunctionsOfMonth
GO
if exists (SELECT * FROM sysobjects where id = object_id(N'Pay.Sp_JobPromissory') and OBJECTPROPERTY(id,N'IsProcedure') = 1)
drop procedure Pay.Sp_JobPromissory
GO

--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
-- SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.SP_TransferFunctionsOfMonth(@FromMounth int=100 , @ToMounth int=101) AS
BEGIN
SET NOCOUNT ON
set ANSI_NULLS ON 
SET ANSI_WARNINGS ON  

DECLARE @FunctionID INT
DECLARE @NewFunctionID INT 

DECLARE abc CURSOR FOR SELECT FunctionID FROM Pay.Functions WHERE (Mounth = @FromMounth )

OPEN abc;
FETCH NEXT FROM abc into @FunctionID
WHILE (@@FETCH_STATUS = 0)
BEGIN

SELECT @NewFunctionID =MAX(FunctionID)+1 FROM Functions

INSERT INTO Pay.Functions
       (   FunctionID, FormInfoID,    Mounth,  PersonelNo, FunctionDay, FunctionTime, ProjectID, JobCode, OfficeCode, ProjectRow, ProcCode, CTopic3, SickDay, YearID, Years, Situation)
SELECT @NewFunctionID, FormInfoID, @ToMounth,  PersonelNo, FunctionDay, FunctionTime, ProjectID, JobCode, OfficeCode, ProjectRow, ProcCode, CTopic3, SickDay, YearID, Years, Situation
FROM   Pay.Functions
WHERE (FunctionID = @FunctionID )

INSERT INTO Pay.FunctionsItems
       (  FunctionsItemsID, FunctionID, SalaryID, FDaily, FHours, Amount, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2 )
SELECT ROW_NUMBER()OVER (ORDER BY FunctionsItemsID)+(SELECT MAX(FunctionsItemsID) FROM FunctionsItems) AS FunctionsItemsID
                      , @NewFunctionID, SalaryID, FDaily, FHours, Amount, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicCode2
FROM  Pay.FunctionsItems 
WHERE (FunctionID = @FunctionID )


	FETCH NEXT FROM abc into @FunctionID
END
CLOSE abc;
DEALLOCATE abc;

END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS OFF 
GO
CREATE PROCEDURE Pay.Sp_JobPromissory
 @jobCode int,@InterdicStartDate char(10),@PersonelNo int,@AccDetailCode int,
 @Msg Nvarchar(1000)
OUTPUT as
begin

SELECT @Msg=isnull(PromRunDate,N'') FROM Pay.JobPromissory WHERE (jobCode = @jobCode) 


if @Msg<>''
begin
	declare @PromissoryFormType int

	select @PromissoryFormType=PromissoryFormType from Pay.FormTypes where FormType = 45

	 if @PromissoryFormType  is null  set @Msg=N'تایپ خزانه داری در حکم مشخص نشده'
	 else
	 begin
		declare @ItemAmount money
		SELECT      @ItemAmount =ISNULL(  SUM(FormItems.ItemAmount)  ,0)
		FROM            FormItems INNER JOIN
								 Forms ON FormItems.FormID = Forms.FormID AND FormItems.ServerID = Forms.ServerID AND FormItems.YearID = Forms.YearID
		WHERE        (Forms.FormType = @PromissoryFormType) AND ((Forms.DetailCode <> 0 and Forms.DetailCode = @AccDetailCode) OR (FormItems.DetailCode<>0 and FormItems.DetailCode = @AccDetailCode) OR 
																 (Forms.CustomerID2<>0 and Forms.CustomerID2 = @PersonelNo) OR (FormItems.CustomerID2<>0 and FormItems.CustomerID2 = @PersonelNo))
																 

		declare @PromAmount money

		SELECT     @PromAmount=ISNULL(PromAmount,0)
		FROM            Pay.JobPromissory
		WHERE        (jobCode = @jobCode) AND (PromRunDate <= @InterdicStartDate)
		ORDER BY PromRunDate DESC

		if @ItemAmount<@PromAmount
		  set @Msg=N'مقدار سفته مورد نیاز' +format(@PromAmount, 'N0')  +N'می باشد ولی مقدار ثبت شده در سیستم ' +format(@ItemAmount, 'N0') + N'است.!'
		else set @Msg=''
     end
end

return   @Msg
end

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
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
