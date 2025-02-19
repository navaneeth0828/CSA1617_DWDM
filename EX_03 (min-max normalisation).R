data <- c(200, 300, 400, 600, 1000)
min_val <- min(data)
max_val <- max(data)
min_max_normalized <- (data - min_val) / (max_val - min_val)
mean_val <- mean(data)
sd_val <- sd(data)
z_score_normalized <- (data - mean_val) / sd_val
print("Min-Max Normalization:")
print(min_max_normalized)
print("Z-Score Normalization:")
print(z_score_normalized)̥
