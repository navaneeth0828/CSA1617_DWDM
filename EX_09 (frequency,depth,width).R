marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
n_bins <- 3
sorted_marks <- sort(marks)
bin_size <- length(marks) / n_bins
equal_freq_bins <- split(sorted_marks, ceiling(seq_along(sorted_marks) / bin_size))
min_mark <- min(marks)
max_mark <- max(marks)
bin_width <- (max_mark - min_mark) / n_bins
equal_width_bins <- cut(marks, breaks = seq(min_mark, max_mark, by = bin_width), include.lowest = TRUE)
par(mfrow = c(1, 2)) 
hist(marks, breaks = c(min_mark, unlist(lapply(equal_freq_bins, max))), col = "lightblue",
     main = "Equal-Frequency Partitioning", xlab = "Marks", ylab = "Frequency")
hist(marks, breaks = seq(min_mark, max_mark, by = bin_width), col = "lightgreen",
     main = "Equal-Width Partitioning", xlab = "Marks", ylab = "Frequency")
speed <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)
iqr_speed <- IQR(speed)
sd_speed <- sd(speed)
print(paste("Interquartile Range (IQR):", iqr_speed))
print(paste("Standard Deviation:", sd_speed))
̥