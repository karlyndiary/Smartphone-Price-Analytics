- Count of Unique Brands
```
=COUNTA(UNIQUE(PhonesView!F2:F316))
```
- Count of Products
```
=COUNTA(UNIQUE(PhonesView!B2:B316))
```
- Lowest Price
```
=MIN(PhonesView!C2:C316)
```
- Highest Price
```
=MAX(PhonesView!C2:C316)
```
- Average Price
```
=AVERAGE(PhonesView!C2:C316)
```
- Average Discount %
```
=AVERAGE(PhonesView!D2:D316)
```
- Average Rating
```
=AVERAGE(PhonesView!Q2:Q316)
```
- Average Count of Reviews
```
=AVERAGE(PhonesView!R2:R316)
```
- Correlation Heatmap - screen_size, ram, storage, battery, rear_camera, front_camera, rating, review, price
```
=CORREL(PhonesView[screen_size],PhonesView[screen_size])
```
- Feature Contribution
```
cumulative percentage =(B2/SUM($B$2:$B$9))*100
```
- Price Range
```
=IF(C2<10000,"Low",IF(C2<20000,"Mid","High"))
```
- Processor Type
```
=IF(ISNUMBER(SEARCH("Dimensity",M2)),"MediaTek",
IF(ISNUMBER(SEARCH("Helio",M2)),"MediaTek",
IF(ISNUMBER(SEARCH("G37",M2)),"MediaTek",
IF(ISNUMBER(SEARCH("Tensor",M2)),"Tensor",
IF(ISNUMBER(SEARCH("Snapdragon",M2)),"Snapdragon",
IF(ISNUMBER(SEARCH("Gen",M2)),"Snapdragon",
IF(ISNUMBER(SEARCH("Unisoc",M2)),"Unisoc",
IF(ISNUMBER(SEARCH("T",M2)),"Unisoc",
IF(ISNUMBER(SEARCH("SC",M2)),"Unisoc",
IF(ISNUMBER(SEARCH("Exynos",M2)),"Exynos",
"Other"))))))))))
```
