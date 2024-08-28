-- Adding a new column price_range
ALTER TABLE Flipkart.dbo.Phones
ADD price_range VARCHAR(10);

-- Update price_range column
UPDATE Flipkart.dbo.Phones
SET price_range = 
	CASE 
		WHEN price < 10000 THEN 'LOW'
		WHEN price < 20000 THEN 'MID'
		ELSE 'HIGH'
	END

-- How many phones fall into each price range (Low, Mid, High)?
