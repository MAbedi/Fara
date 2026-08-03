----GO
------------ fill Calendar ----------------------------------------------------
----  ¬Œ—Ì‰ —Ê“ ”«· ò‰ —· ‘Êœ.

INSERT INTO Tsh.Calendar(CalendarDate, YearNO, MonthNO, DayNo, WeekDayID, WeekDayName, CalendarKind , WeekInYear)

SELECT  dbo.MiladiTOShamsi(dte),  SUBSTRING(dbo.MiladiTOShamsi(dte), 1, 4) AS Y , SUBSTRING(dbo.MiladiTOShamsi(dte), 6, 2) AS M,
          SUBSTRING(dbo.MiladiTOShamsi(dte), 9, 2) AS D,
          CASE WHEN  DATEPART(DW ,dte ) = 7 THEN 1
          ELSE DATEPART(DW ,dte ) + 1 END AS DayId,
          CASE WHEN DATEPART(DW ,dte ) = 1 THEN 'Ìﬂ‘‰»Â' 
               WHEN DATEPART(DW ,dte ) = 2 THEN 'œÊ‘‰»Â' 
               WHEN DATEPART(DW ,dte ) = 3 THEN '”Â˛‘‰»Â' 
               WHEN DATEPART(DW ,dte ) = 4 THEN 'çÂ«—‘‰»Â' 
               WHEN DATEPART(DW ,dte ) = 5 THEN 'Å‰Ã‘‰»Â' 
               WHEN DATEPART(DW ,dte ) = 6 THEN 'Ã„⁄Â' 
               WHEN DATEPART(DW ,dte ) = 7 THEN '‘‰»Â' END AS DaysName,
          CASE WHEN DATEPART(DW ,dte ) = 6 THEN 1 ELSE 0 END AS CalendarKind
		  ,DATEPART(ww ,dte ) WeekInYear
          
FROM
(SELECT dte FROM
(SELECT dte = dateadd(dd,i,'20220321') FROM
(SELECT i = i1.i + i2.i + i3.i + i4.i + i5.i+ i6.i+ i7.i+ i8.i+ i9.i
FROM
(SELECT i = 0 UNION SELECT 1) AS i1 ,
(SELECT i = 0 UNION SELECT 2) AS i2 ,
(SELECT i = 0 UNION SELECT 4) AS i3 ,
(SELECT i = 0 UNION SELECT 8) AS i4 ,
(SELECT i = 0 UNION SELECT 16) AS i5,
(SELECT i = 0 UNION SELECT 32) AS i6 ,
(SELECT i = 0 UNION SELECT 64) AS i7 , 
(SELECT i = 0 UNION SELECT 128) AS i8 , 
(SELECT i = 0 UNION SELECT 256) AS i9  

) AS ints
) dtes
WHERE dte < '20230321' 
) AS TEMP
WHERE dbo.MiladiTOShamsi(dte) NOT IN(SELECT CalendarDate FROM Tsh.Calendar)
ORDER BY dte
------------ fill Calendar ----------------------------------------------------
