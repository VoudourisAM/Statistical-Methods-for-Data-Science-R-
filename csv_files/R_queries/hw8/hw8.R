auto_supplies <- read.csv("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//AutoSupplies.csv", header = TRUE, sep = ";")

average_price <- sum(auto_supplies$Price * auto_supplies$Sales_cases) / sum(auto_supplies$Sales_cases)
average_price