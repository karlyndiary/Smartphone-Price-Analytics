# Querying the required columns for analysis

INSERT INTO [Flipkart].[dbo].[PhoneDetails] (
    title, price, original_price, discount, star, brand, model, camera, display, 
    screen_size_inch, ram, storage, color, processor, battery, review, rating
)
SELECT title, MIN(price) AS price, original_price, MIN(discount) AS discount, star, brand, model, camera, display, 
       screen_size_inch, ram, storage, color, processor, battery, review, rating
FROM [Flipkart].[dbo].[Phones]
WHERE processor IS NOT NULL
GROUP BY title, original_price, star, brand, model, camera, display, screen_size_inch, ram, storage, color, 
processor, battery, review, rating;
