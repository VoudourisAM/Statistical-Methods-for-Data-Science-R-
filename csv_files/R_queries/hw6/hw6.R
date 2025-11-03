ev <- read.csv("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//ElectricVehicles.csv ", header = TRUE, sep = ";")

# a. Construct a side-by-side bar chart with year as the variable on the horizontal axis. Comment on any trend in the display.
ev_numeric <- ev[, 2:3]  # αν η 1η στήλη είναι χώρα
rownames(ev_numeric) <- ev[,1]  # βάζουμε τις χώρες ως ονόματα γραμμών

# Δημιουργούμε το διάγραμμα
barplot(t(as.matrix(ev_numeric)),
        beside = TRUE,
        col = c("skyblue", "orange"),
        main = "Electric Plug-in Vehicle Sales (2013 vs 2015)",
        xlab = "Country",
        ylab = "Sales (units)",
        legend.text = c("2013", "2015"))
# a. Construct a side-by-side bar chart with year as the variable on the horizontal axis. Comment on any trend in the display.

# b. Convert the above table to percentage allocation for each year. Construct a stacked bar chart with year as the variable on the horizontal axis.
ev_percent <- apply(ev_numeric, 2, function(x) x / sum(x) * 100)

barplot(as.matrix(ev_percent),
        beside = FALSE,
        col = rainbow(nrow(ev_percent)),
        main = "Percentage Share of Global Electric Vehicle Sales (2013 vs 2015)",
        xlab = "Year",
        ylab = "Percentage of Global Sales",
        legend.text = rownames(ev_percent))
# b. Convert the above table to percentage allocation for each year. Construct a stacked bar chart with year as the variable on the horizontal axis.

# c. Is the display in part (a) or part (b) more insightful? Explain.
'''
Part (a) highlights total growth, while part (b) reveals shifts in global market share. 
Both are valuable, but the stacked percentage chart offers deeper insight into relative changes between markets.
'''
# c. Is the display in part (a) or part (b) more insightful? Explain.