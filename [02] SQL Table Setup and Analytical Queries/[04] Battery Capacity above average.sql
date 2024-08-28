-- Which phones have a battery capacity above the average?

SELECT title, battery
FROM [Flipkart].[dbo].[PhonesView]
WHERE battery > (SELECT avg(battery)
		 FROM [Flipkart].[dbo].[PhonesView])
