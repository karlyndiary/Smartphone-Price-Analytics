### Correlation Heatmap 
columns - price, screen_size, ram, storage, battery, rating, rear_camera, front_camera
```
=CORREL(PhonesView[screen_size],PhonesView[screen_size])
```
### Feature Contribution
```
cumulative percentage =(B2/SUM($B$2:$B$9))*100
```
### Top 5 Phones by Brand & Rating
- Helper column - Returns the row number for the first occurrence of each brand.
```
=IF(COUNTIF($B$2:B2, B2)=1, ROW(), "")
```
- Ranking - Keeps the first occurrence of the brand 
```
=IF(COUNTIF($B$2:B2, B2)=1, "Yes", "No")
```
