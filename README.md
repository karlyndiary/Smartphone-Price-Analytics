# Smartphone Price Analytics: Key Factors and Market Trends

## Table of Contents
* [Business Problem](#business-problem)
* [Tools Used](#tools-used)
* [Data Description](#data-description)
* [Dashboard](#dashboard)
* [Summary of Insights](#summary-of-insights)
* [Recommendations](#recommendations)

## Business Problem: 
**Comprehensive Mobile Phone Market Analysis: Insights from Flipkart Data**

This analysis delves into the mobile phone market using Flipkart data to uncover key trends, factors influencing smartphone prices, and consumer preferences. By examining various features and pricing patterns, this study aims to provide valuable insights for product development, pricing strategies, and marketing campaigns. The goal is to help manufacturers and retailers make data-driven decisions to optimize their offerings and better meet market demands.

## Tools Used
- Python: For API Data Extraction, Data Cleaning and ETL.
  - [RapidAPI - Phones](https://rapidapi.com/opendatapoint-opendatapoint-default/api/real-time-flipkart-api)
- SQL: For querying the required data.
- Microsoft Excel: Dashboard Data Visualizations.

## Data Description
- pid: Primary Key of the phone
- title: Name of the phone listing
- brand: Brand name
- stock: Availability of the phone
- mrp: Original price of the phone
- price: Current price of the phone
- image: image url of the product
- model: Model name of the phone
- screen_size_inch: Size of the phone screen
- display: Full HD+, HD or other types
- ram: Amount of RAM in the phone
- storage: Size of storage
- color: Color of the phone
- processor: Brand of the processor
- battery: Battery Capacity
- rating: Number of stars the product has received
- front_camera: Camera quality
- rear_camera: Camera quality

## Dashboard
![Flipkart Insights Dashboard](https://github.com/user-attachments/assets/27b23e7a-f6c6-4a66-b23d-3f31199b9bf0)

## Summary of Insights
### Price Distribution by Processor
- Exynos has the highest price, indicating it may be positioned as a premium processor.
- Tensor also has a significantly high price, suggesting it is a competitive option in the high-end market.
- MediaTek and Unisoc have lower prices than Exynos and Tensor, indicating they may target a more budget-conscious segment.
- The low price points across all processors are relatively close, suggesting a competitive entry-level market.

### Market Share by Top 10 Brands
- Samsung leads the smartphone market with 17%, followed by Realme at 16% and Vivo at 13%. 
- Redmi holds 12%, while Infinix and Motorola each have 10%. 
- Poco captures 9%, Oppo has 6%, Tecno 4%, and Google trails at 3%. 
- The top players are Samsung, Realme, and Vivo, with Google having the smallest share.

### Premium vs Budget
- Samsung has the widest price range, with several outliers above ₹1,00,000, indicating it offers both premium and budget options.
- Google typically falls into the premium category, with a median price that is higher than many other brands, reflecting its focus on high-end devices.
- Vivo: Also shows a wide spread of prices, but no extreme outliers like Samsung. The mean price appears higher than many other brands.
- Tecno, Realme, Poco, Redmi, and Infinix: These brands are mostly positioned in the lower price segments, though they have a decent range.
- Nothing: While this brand has fewer price points, it also has a premium offering, as suggested by the position of the box plot and outliers.
- Micromax, Lava, Honor, Itel: These brands have consistently lower prices, with no significant outliers or high-price models.

### Feature Contribution

### Analysing Linear and Non-Linear Trends

### Top 5 Phones by Brand and Rating
- Highest Rated: Both the Samsung Galaxy S23 Ultra and Vivo V40 Pro have the highest rating of 4.6.
- Most Expensive: The Samsung Galaxy S23 Ultra is the most expensive at ₹89,999.
- Lowest Priced: The Motorola Edge 50 Fusion is the most affordable option at ₹22,999.
- Price Range: The prices range from ₹22,999 to ₹89,999, indicating a significant variation in pricing among the top-rated phones.
- Rating Consistency: The ratings for the last three phones (Motorola, Oppo, Realme) are consistent at 4.5, suggesting similar levels of customer satisfaction.
### Stock Analysis

### Brand Loyalty
- Vivo, Nothing, and Realme exhibit strong customer retention and satisfaction, driven by innovative technology, sleek designs, and customer-focused features that appeal to both premium and budget markets.
- Nothing has quickly built brand loyalty through its unique design philosophy and minimalist product line, resonating with tech enthusiasts and building trust in a short span.
- Nokia, with the lowest loyalty score, may be struggling with customer dissatisfaction due to outdated products or a diminished market presence, leading to weaker retention and brand perception.
## Recommendations
