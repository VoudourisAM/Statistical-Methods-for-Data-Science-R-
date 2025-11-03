ipad_data <- scan("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//iPad.txt", sep = ",")

#a. Compute the mean and median percentage of students currently using Apple iPads.
mean_ipad <- mean(ipad_data)
median_ipad <- median(ipad_data)
#a. Compute the mean and median percentage of students currently using Apple iPads.

#b. Compare the first and third quartiles for these data.
quartiles <- quantile(ipad_data, probs = c(0.25, 0.75))
#b. Compare the first and third quartiles for these data.


#c. Compute the range and interquartile range for these data.
range_ipad <- range(ipad_data)
iqr_ipad <- IQR(ipad_data)
#c. Compute the range and interquartile range for these data.


#d. Compute the variance and standard deviation for these data.
var_ipad <- var(ipad_data)
sd_ipad <- sd(ipad_data)
#d. Compute the variance and standard deviation for these data.

#e. Are there any outliers in this data?
Q1 <- quartiles[1]
Q3 <- quartiles[2]
lower_bound <- Q1 - 1.5 * iqr_ipad
upper_bound <- Q3 + 1.5 * iqr_ipad
outliers <- ipad_data[ipad_data < lower_bound | ipad_data > upper_bound]
#e. Are there any outliers in this data?

#f. Based on your calculated values, what can we say about the percentage of students using iPads in public school districts?
summary_statement <- if(length(outliers) == 0) {
  "No significant outliers. Most school districts have percentages near the center."
} else {
  paste("There are outliers:", paste(outliers, collapse = ", "))
}

# Εκτύπωση αποτελεσμάτων
cat("Mean:", mean_ipad, "\n")
cat("Median:", median_ipad, "\n")
cat("Q1:", Q1, "Q3:", Q3, "\n")
cat("Range:", range_ipad[1], "to", range_ipad[2], "\n")
cat("IQR:", iqr_ipad, "\n")
cat("Variance:", var_ipad, "\n")
cat("Standard Deviation:", sd_ipad, "\n")
cat("Outliers:", if(length(outliers)==0) "None" else outliers, "\n")
cat("Summary:", summary_statement, "\n")
#f. Based on your calculated values, what can we say about the percentage of students using iPads in public school districts?
