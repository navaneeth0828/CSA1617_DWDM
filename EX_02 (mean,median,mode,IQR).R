data <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

mean_value <- mean(data)
cat("Mean:", mean_value, "\n")

median_value <- median(data)
cat("Median:", median_value, "\n")

get_mode <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}

mode_value <- get_mode(data)
cat("Mode:", mode_value, "\n")

midrange_value <- (min(data) + max(data)) / 2
cat("Midrange:", midrange_value, "\n")

quartiles <- quantile(data)
cat("First Quartile (Q1):", quartiles[2], "\n")
cat("Third Quartile (Q3):", quartiles[4], "\n")̥``