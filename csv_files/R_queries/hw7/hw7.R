online_game <- read.csv("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//OnlineGame.csv", header = TRUE, sep = ";")

previous <- online_game$Downloads_in_thousands_p
current  <- online_game$Downloads_in_thousands_c

#Function to calculate mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# a. Compute the mean, median, and mode for number of downloads in the previous year.
a_mean <- mean(previous, na.rm = TRUE)
a_median <- median(previous, na.rm = TRUE)
a_mode <- getmode(previous)
# a. Compute the mean, median, and mode for number of downloads in the previous year.

# b. Compute the mean, median, and mode for number of downloads in the current year.
b_mean <- mean(current, na.rm = TRUE)
b_median <- median(current, na.rm = TRUE)
b_mode <- getmode(current)
# b. Compute the mean, median, and mode for number of downloads in the current year.

# c. Compute the first and third quartiles for downloads in the previous year.
c_quartiles <- quantile(previous, probs = c(0.25, 0.75), na.rm = TRUE)
# c. Compute the first and third quartiles for downloads in the previous year.

# d. Compute the first and third quartiles for downloads in the current year.
d_quartiles <- quantile(current, probs = c(0.25, 0.75), na.rm = TRUE)
# d. Compute the first and third quartiles for downloads in the current year.

# e. Compare the values calculated in parts (a)-(d) for the previous and current years. What does this tell you about the downloads of the game in the current year compared to the previous year?
e_comparison <- list(
  PreviousYear = list(Mean = a_mean, Median = a_median, Mode = a_mode, Quartiles = c_quartiles),
  CurrentYear  = list(Mean = b_mean, Median = b_median, Mode = b_mode, Quartiles = d_quartiles))
# e. Compare the values calculated in parts (a)-(d) for the previous and current years. What does this tell you about the downloads of the game in the current year compared to the previous year?