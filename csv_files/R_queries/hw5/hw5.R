snow <- read.csv("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//Snow.csv", header = TRUE, sep = ";")

# a. Construct a scatter diagram with the average annual low temperature on the horizontal axis and the average annual snowfall on the vertical axis.
plot(snow$Average_Low_temp, snow$Average_Snowfall,
     main = "Scatter Plot: Average Annual Low Temperature vs Snowfall",
     xlab = "Average Annual Low Temperature (°F)",
     ylab = "Average Annual Snowfall (inches)",
     pch = 19,        # Συμπαγείς κύκλοι
     col = "blue")    # Χρώμα κουκκίδων

# Προαιρετικά: προσθήκη γραμμής παλινδρόμησης
abline(lm(snow$Average_Snowfall ~ snow$Average_Low_temp, data = snow), col = "red", lwd = 2)


# Υπολογισμός συντελεστή συσχέτισης
cor(snow$Average_Low_temp, snow$Average_Snowfall)
# a. Construct a scatter diagram with the average annual low temperature on the horizontal axis and the average annual snowfall on the vertical axis.

# b. Does there appear to be any relationship between these two variables?
'''
The scatter plot shows a clear negative relationship between average low temperature and annual snowfall.
Cities with lower average temperatures (such as Buffalo, Rochester, and Minneapolis) 
tend to experience much higher snowfall, while warmer cities (like Miami, Phoenix, and Los Angeles) have little or none.
'''
# b. Does there appear to be any relationship between these two variables?