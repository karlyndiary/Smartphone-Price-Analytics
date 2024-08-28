-- Which phones have a price higher than the average price for their brand?

SELECT title, brand, price
FROM [Flipkart].[dbo].[PhonesView] p
WHERE price > ( 
	SELECT avg(price)
	FROM [Flipkart].[dbo].[PhonesView]
	WHERE brand = p.brand )
