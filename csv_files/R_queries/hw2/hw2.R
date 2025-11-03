data <- scan("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//data.txt", what = numeric(), sep = ",")

# a. Construct a dot plot.
dotchart(data,
         main = "Dot Plot of Data",
         xlab = "Value",
         col = "blue")
# a. Construct a dot plot.

# b. Construct a stem-and-leaf display, using a leaf unit of 0.1.
stem(data, scale = 1)
# b. Construct a stem-and-leaf display, using a leaf unit of 0.1.

# c. Construct a stretched stem-and-leaf display, using a leaf unit of 0.1.
stem(data, scale = 2)
# c. Construct a stretched stem-and-leaf display, using a leaf unit of 0.1.


