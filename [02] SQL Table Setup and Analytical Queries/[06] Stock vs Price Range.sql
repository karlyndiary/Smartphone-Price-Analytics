-- What is the relationship between stock status and price range of phones?

WITH CTE AS (
    SELECT title, stock, ram, 
           CASE 
               WHEN price < 10000 THEN 'Low'
               WHEN price < 20000 THEN 'Mid'
			   ELSE 'High'
           END AS price_range
    FROM [Flipkart].[dbo].[PhonesView]
)

SELECT title, ram, stock, price_range
FROM CTE 
