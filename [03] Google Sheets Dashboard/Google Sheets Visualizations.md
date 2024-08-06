- Count of Unique Brands
```
=COUNTA(UNIQUE(Data!G2:G))
```
- Lowest Price
```
=MIN(Data!C:C)
```
- Highest Price
```
=MAX(Data!C:C)
```
- Average Discount %
```
=AVERAGE(Data!E2:E)
```
- Count of Products
```
=COUNTA(Data!B2:B)
```
- Average Rating
```
=AVERAGE(Data!Q2:Q)
```
- Average Price
```
=AVERAGE(Data!C2:C)
```
- Count of Reviews
```
=AVERAGE(Data!R:R)
```
- Top 5 Popular Brands
```
=query(A1:B16, "Select A, B Order by B Desc Limit 5")
```
- Top 5 Most Reviewed Phones
```
=query(Data!A1:R210, "Select B,R Order by R Desc Limit 5")
```
