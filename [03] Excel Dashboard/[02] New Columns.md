- Price Range
```
=IF(F2<10000,"Low",IF(F2<20000,"Mid","High"))
```
- Processor Type
```
=IF(ISNUMBER(SEARCH("Dimensity",O2)),"MediaTek",
IF(ISNUMBER(SEARCH("Helio",O2)),"MediaTek",
IF(ISNUMBER(SEARCH("G37",O2)),"MediaTek",
IF(ISNUMBER(SEARCH("Tensor",O2)),"Tensor",
IF(ISNUMBER(SEARCH("Snapdragon",O2)),"Snapdragon",
IF(ISNUMBER(SEARCH("Gen",O2)),"Snapdragon",
IF(ISNUMBER(SEARCH("Unisoc",O2)),"Unisoc",
IF(ISNUMBER(SEARCH("T",O2)),"Unisoc",
IF(ISNUMBER(SEARCH("SC",O2)),"Unisoc",
IF(ISNUMBER(SEARCH("Exynos",O2)),"Exynos",
"Other"))))))))))
```
