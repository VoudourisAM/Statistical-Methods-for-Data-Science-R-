brand_data  <- read.csv("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//BrandValue.csv", header = TRUE, sep = ";")

# a. Prepare a crosstabulation of the data on Industry (rows) and Brand Value ($ billions). Use classes of [0,10), [10,20), [20,30), [30,40), [40,50), and [50,60] for Brand Value ($ billions).
brand_data$BrandValue_cat <- cut(brand_data$Brand_Value_in_billions, breaks = c(0,10,20,30,40,50,60), right = FALSE)
# a. Prepare a crosstabulation of the data on Industry (rows) and Brand Value ($ billions). Use classes of [0,10), [10,20), [20,30), [30,40), [40,50), and [50,60] for Brand Value ($ billions).

# Crosstabulation
library(gmodels)

CrossTable(brand_data$Industry, brand_data$BrandValue_cat, prop.r=TRUE, prop.c=TRUE)
# a. Prepare a crosstabulation of the data on Industry (rows) and Brand Value ($ billions). Use classes of [0,10), [10,20), [20,30), [30,40), [40,50), and [50,60] for Brand Value ($ billions).

# b. Prepare a frequency distribution for the data on Industry.
table(brand_data$Industry)
# b. Prepare a frequency distribution for the data on Industry.

# c. Prepare a frequency distribution for the data on Brand Value ($ billions).
table(brand_data$BrandValue_cat)
# c. Prepare a frequency distribution for the data on Brand Value ($ billions).

# d. Compute the row and the column percentages for (b), (c).
CrossTable(brand_data$Industry, brand_data$BrandValue_cat, prop.r=TRUE, prop.c=TRUE)
# d. Compute the row and the column percentages for (b), (c).

# e. How has the crosstabulation helped in preparing the frequency distributions in parts (b) and (c)?
'''
The crosstabulation allows us to see the joint distribution of brands across industry types and Brand Value categories.
From it, we can easily calculate the total counts for each industry and for each Brand Value class. 
This provides the row and column totals needed to prepare the separate frequency distributions, 
along with the corresponding percentages.
'''
# e. How has the crosstabulation helped in preparing the frequency distributions in parts (b) and (c)?

# f. What conclusions can you draw about the type of industry and the brand value?
'''
From the crosstabulation, we can see patterns such as:
  
1) Technology and Automotive & Luxury brands often have higher brand values compared to other industries.
2) Consumer Packaged Goods and Other industries are more concentrated in lower Brand Value categories.
3) The distribution is right-skewed, meaning a few brands in certain industries dominate the highest value categories, while most brands fall into lower or mid-range values.
'''
# f. What conclusions can you draw about the type of industry and the brand value?