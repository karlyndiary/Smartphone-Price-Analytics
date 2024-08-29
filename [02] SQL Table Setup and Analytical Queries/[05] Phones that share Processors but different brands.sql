-- Which phones share the same processor but are from different brands?

SELECT p1.title AS phone1, p1.price, p2.title AS phone2, p2.price, p1.processor
FROM [Flipkart].[dbo].[PhonesView] p1
JOIN [Flipkart].[dbo].[PhonesView] P2
ON p1.processor = p2.processor
WHERE p1.brand <> p2.brand
