df <- read.csv("C://Users//voudo//OneDrive//Υπολογιστής//Σημαντικα//MASTER//3st Semester//Statistical Methods for Data Science//Lessons//Homeworks//Homework 1_27-10-2025//BBB.csv")

# a. Show the frequency and percent frequency of complaints by industry.
# Συχνότητα ανά κλάδο
frequency <- table(df)

# Ποσοστιαία συχνότητα (%)
percent_table <- prop.table(frequency) * 100
# a. Show the frequency and percent frequency of complaints by industry.

# b. Construct a bar chart and a pie chart of the percent frequency distribution.
barplot(percent_table,
        main = "Percent Frequency of Complaints by Industry",
        ylab = "Percent (%)",
        col = "lightblue",
        ylim = c(0, max(percent_table) + 5))

pie(percent_table,
    labels = paste(names(percent_table), round(percent_table, 1), "%"),
    main = "Distribution of Complaints by Industry",
    col = rainbow(length(percent_table)))
# b. Construct a bar chart and a pie chart of the percent frequency distribution.

# c. Which industry had the highest number of complaints?
which.max(frequency)
# c. Which industry had the highest number of complaints?

# d. Comment on the percentage frequency distribution for complaints.
'''
The percentage frequency distribution shows that Cellular Phone Providers received the highest percentage of complaints (30%), followed by Cable/Satellite Television Companies (22%) and New Car Dealerships (21%).
Together, these three industries account for more than 70% of all complaints, indicating that customers experience the most issues with communication services and automotive sales.

On the other hand, Banks (13%) and Collection Agencies (14%) have fewer reported complaints in comparison.
This suggests that while financial and collection services still generate a notable number of complaints, telecommunication industries face the most significant customer dissatisfaction overall.
'''
# d. Comment on the percentage frequency distribution for complaints.
