stock_data  <- read.csv("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//StockComparison.csv ", header = TRUE, sep = ";")

#a. Develop a scatter diagram with Apple stock price on the horizontal axis and P&G stock price on the vertical axis.
plot(stock_data$Apple_Adjusted_Stock_Price, stock_data$PG_Adjusted_Stock_Price,
     xlab = "Apple Stock Price (Adjusted)",
     ylab = "P&G Stock Price (Adjusted)",
     main = "Scatter Plot: Apple vs P&G Stock Prices",
     pch = 19, col = "blue")
#a. Develop a scatter diagram with Apple stock price on the horizontal axis and P&G stock price on the vertical axis.

#b. What appears to be the relationship between these two stock prices?
'''
From the scatter plot titled "Scatter Plot: Apple vs P&G Stock Prices", it appears that there is a positive relationship between Apple’s and P&G’s adjusted stock prices.
As the Apple stock price increases, the P&G stock price also tends to increase. This indicates a positive correlation between the two stocks — when one performs well, the other generally does too.
However, the relationship does not look perfectly linear — while the general trend is upward, there is some scatter and variability, especially at higher Apple stock prices where P&G’s prices appear to level off or vary more.
'''
#b. What appears to be the relationship between these two stock prices?

#c. Compute and interpret the sample covariance.
cov_ap_pg <- cov(stock_data$Apple_Adjusted_Stock_Price, stock_data$PG_Adjusted_Stock_Price)
cat("Sample Covariance (Apple, P&G):", cov_ap_pg, "\n")
#c. Compute and interpret the sample covariance.

#d. Compute the sample correlation coefficient. What does this value indicate about the relationship between the stock price of Apple and the stock price of P&G?
cor_ap_pg <- cor(stock_data$Apple_Adjusted_Stock_Price, stock_data$PG_Adjusted_Stock_Price)
cat("Sample Correlation Coefficient (Apple, P&G):", cor_ap_pg, "\n")
#d. Compute the sample correlation coefficient. What does this value indicate about the relationship between the stock price of Apple and the stock price of P&G?