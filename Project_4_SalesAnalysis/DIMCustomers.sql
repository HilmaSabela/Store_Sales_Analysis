----Table of Customers---
SELECT cus.CustomerKey AS CustomerKey
      ,cus.FirstName AS FirstName
      ,cus.LastName AS LastName
	  ,cus.FirstName + ' '+ cus.[LastName] AS FullName
      ,CASE cus.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      ,cus.AddressLine1 AS Address
      ,cus.DateFirstPurchase AS DateFirstPurchase
	  ,geo.City AS City
	  ,geo.PostalCode AS PostCode
  FROM DimCustomer AS cus
LEFT JOIN DimGeography AS geo
	ON cus.GeographyKey = geo.GeographyKey
ORDER BY cus.CustomerKey ASC