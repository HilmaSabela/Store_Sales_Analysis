---Table of Date---
SELECT [DateKey] 
      ,[FullDateAlternateKey] AS Date
	  ,[EnglishDayNameOfWeek] AS Day
      ,[WeekNumberOfYear] AS WeekNr
      ,[EnglishMonthName] AS Month
	  ,LEFT([EnglishMonthName], 3) AS MonthShort
      ,[MonthNumberOfYear] AS MonthNr
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
FROM [AdventureWorksDW2022].[dbo].[DimDate]
WHERE [CalendarYear] >= 2021