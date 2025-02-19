pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean_value <- mean(pencils)
cat("Mean: ", mean_value, "\n")
median_value <- median(pencils)
cat("Median: ", median_value, "\n")
mode_value <- as.numeric(names(sort(table(pencils), decreasing = TRUE))[1])
cat("Mode: ", mode_value, "\n")
̥̥̥̥̥
