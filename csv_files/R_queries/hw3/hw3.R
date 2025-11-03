data <- read.csv("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//Endowments.csv", header = TRUE, sep = ";")

# a. A frequency distribution (classes 0–1.9, 2.0–3.9, 4.0–5.9, 6.0–7.9, and so on).
# Δημιουργία των ορίων των διαστημάτων (breaks)
breaks <- seq(0, max(data$Endowment_Amount_in_Billions), by = 2)

# Δημιουργία του πίνακα συχνοτήτων
freq_table <- table(cut(data$Endowment_Amount_in_Billions,
                        breaks = breaks,
                        right = FALSE))
# a. A frequency distribution (classes 0–1.9, 2.0–3.9, 4.0–5.9, 6.0–7.9, and so on).

# b.A relative frequency distribution.
rel_freq <- freq_table / sum(freq_table)
# b.A relative frequency distribution.

# c. A cumulative frequency distribution.
cum_freq <- cumsum(freq_table)
# c. A cumulative frequency distribution.

# d. A cumulative relative frequency distribution.
cum_rel_freq <- cumsum(rel_freq)
# d. A cumulative relative frequency distribution.

# e. What do these distributions tell you about the endowments of universities?
'''
Most universities have endowments close to 0–5 billion dollars, 
while very few have much higher amounts. This indicates a strong right-skewed distribution, 
where a small number of universities with extremely large endowments raise the average.
'''
# e. What do these distributions tell you about the endowments of universities?

# f. Show a histogram. Comment on the shape of the distribution.
hist(data$Endowment_Amount_in_Billions,
     breaks = breaks,
     main = "University Endowments (2017)",
     xlab = "Endowment ($ billions)",
     col = "skyblue",
     border = "white")
# f. Show a histogram. Comment on the shape of the distribution.

# g. What is the largest university endowment and which university holds it?
max_value <- max(data$Endowment_Amount_in_Billions)
university <- data$University[which.max(data$Endowment_Amount_in_Billions)]

max_value
university
# g. What is the largest university endowment and which university holds it?
