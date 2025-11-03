#Δεδομένα
quarter_mile <- c(0.92, 0.98, 1.04, 0.90, 0.99)
mile <- c(4.52, 4.35, 4.60, 4.70, 4.50)

#Μέσος όρος
mean_qm <- mean(quarter_mile)
mean_m <- mean(mile)

#Τυπική απόκλιση
sd_qm <- sd(quarter_mile)
sd_m <- sd(mile)

#Συντελεστής μεταβλητότητας (CV = SD / mean * 100)
cv_qm <- (sd_qm / mean_qm) * 100
cv_m <- (sd_m / mean_m) * 100

#Εκτύπωση αποτελεσμάτων
cat("Quarter-Mile: Mean =", mean_qm, ", SD =", sd_qm, ", CV =", cv_qm, "%\n")
cat("Mile: Mean =", mean_m, ", SD =", sd_m, ", CV =", cv_m, "%\n")
