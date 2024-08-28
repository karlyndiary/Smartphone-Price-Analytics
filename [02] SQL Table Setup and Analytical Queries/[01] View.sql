# Querying the required columns for analysis
  
CREATE VIEW [dbo].[PhonesView] AS
SELECT [pid], [title], [brand], [stock], [mrp], [price], [first_image_url] as image, [model], [screen_size_inch] as screen_size, [display], 
	   [ram], [storage], [color], [processor], [battery], [average_rating] as rating, [rear_camera], [front_camera]
  FROM [Flipkart].[dbo].[Phones]

CREATE VIEW [dbo].[PhonesViews] AS
SELECT [pid], [title], [brand], [stock], [mrp], [price], [price_range], [model], [screen_size_inch] as screen_size, [display], 
	   [ram], [storage], [color], [processor], [battery], [average_rating] as rating, [rear_camera], [front_camera]
  FROM [Flipkart].[dbo].[Phones]
