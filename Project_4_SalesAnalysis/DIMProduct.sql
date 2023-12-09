---Table of Product---
SELECT pro.[ProductKey]
      ,pro.[ProductAlternateKey]
      ,pro.[ProductSubcategoryKey]
      ,pro.[EnglishProductName]
	  ,sub.[EnglishProductSubcategoryName]
	  ,cat.[EnglishProductCategoryName]
      ,pro.[Color]
      ,pro.[Size]
      ,pro.[ProductLine]
      ,pro.[ModelName]
      ,pro.[EnglishDescription]
  --    ,pro.[Status]
	  ,ISNULL (pro.[Status], 'Outdated') AS [ProductStatus]
FROM DimProduct AS pro
LEFT JOIN DimProductSubcategory AS sub
	ON pro.ProductSubcategoryKey = sub.ProductSubcategoryKey
LEFT JOIN DimProductCategory AS cat
	ON sub.ProductCategoryKey = cat.ProductCategoryKey
ORDER BY pro.[ProductKey] asc

