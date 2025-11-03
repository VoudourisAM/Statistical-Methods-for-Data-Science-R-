# Δεδομένα
mean_x <- 30
sd_x <- 5

#a. Use Chebyshev’s theorem to determine the percentage of the data within each of the following ranges: 20 to 40, 15 to 45.
# Εύρος 20-40
k1 <- (40 - mean_x) / sd_x   # πάνω από τον μέσο όρο
k2 <- (mean_x - 20) / sd_x   # κάτω από τον μέσο όρο
k_min1 <- min(k1, k2)
chebyshev1 <- 1 - 1/(k_min1^2)
chebyshev1_pct <- chebyshev1 * 100

# Εύρος 15-45
k1 <- (45 - mean_x) / sd_x
k2 <- (mean_x - 15) / sd_x
k_min2 <- min(k1, k2)
chebyshev2 <- 1 - 1/(k_min2^2)
chebyshev2_pct <- chebyshev2 * 100

cat("Chebyshev's theorem:\n")
cat("20 to 40: ", chebyshev1_pct, "%\n")
cat("15 to 45: ", chebyshev2_pct, "%\n\n")
#a. Use Chebyshev’s theorem to determine the percentage of the data within each of the following ranges: 20 to 40, 15 to 45.

#b. Suppose the data has a bell-shaped distribution. Use the empirical rule to determine the percentage of data within each of the above ranges.
# Εύρος 20-40 -> mean ± 2*sd -> 95%
empirical1_pct <- ifelse(mean_x - 2*sd_x <= 20 & mean_x + 2*sd_x >= 40, 95, NA)
# Εύρος 15-45 -> mean ± 3*sd -> 99.7%
empirical2_pct <- ifelse(mean_x - 3*sd_x <= 15 & mean_x + 3*sd_x >= 45, 99.7, NA)

cat("Empirical rule:\n")
cat("20 to 40: ", empirical1_pct, "%\n")
cat("15 to 45: ", empirical2_pct, "%\n")
#b. Suppose the data has a bell-shaped distribution. Use the empirical rule to determine the percentage of data within each of the above ranges.
