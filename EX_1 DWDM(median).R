age_intervals <- data.frame(
  lower = c(1, 5, 15, 20, 50, 80),
  upper = c(5, 15, 20, 50, 80, 110),
  frequency = c(200, 450, 300, 1500, 700, 44)
)

age_intervals$cumulative_freq <- cumsum(age_intervals$frequency)
N <- sum(age_intervals$frequency)
median_class_index <- which(age_intervals$cumulative_freq >= N/2)[1]
L <- age_intervals$lower[median_class_index]
F <- ifelse(median_class_index > 1, age_intervals$cumulative_freq[median_class_index - 1], 0)
f <- age_intervals$frequency[median_class_index]  # Frequency of median class
h <- age_intervals$upper[median_class_index] - age_intervals$lower[median_class_index]
median_value <- L + ((N/2 - F) / f) * h
print(paste("Approximate Median Age:", median_value))
