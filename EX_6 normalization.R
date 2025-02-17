min_age <- 20
max_age <- 70
mean_age <- 40
std_dev_age <- 12.94
value_to_transform <- 35
min_max_normalized <- (value_to_transform - min_age) / (max_age - min_age)
cat("Min-Max Normalized value: ", min_max_normalized, "\n")
z_score_normalized <- (value_to_transform - mean_age) / std_dev_age
cat("Z-score Normalized value: ", z_score_normalized, "\n")
j <- floor(log10(abs(max_age)))
decimal_scaled_value <- value_to_transform / (10^j)
cat("Decimal Scaled value: ", decimal_scaled_value, "\n")
