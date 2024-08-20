# Querying the required columns for analysis
  
CREATE VIEW [dbo].[PhonesView] AS
SELECT [id] ,[title] ,[price] ,[discount] ,[star] ,[brand] ,[model] ,[screen_size_inch] as screen_size ,[display] ,[ram] ,[storage]
      ,[color] ,[processor] ,[battery] ,[rear_camera] ,[front_camera] ,[rating] ,[review]
  FROM [Flipkart].[dbo].[Phones]
