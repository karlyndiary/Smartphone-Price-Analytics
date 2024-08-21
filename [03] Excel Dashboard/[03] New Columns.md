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
