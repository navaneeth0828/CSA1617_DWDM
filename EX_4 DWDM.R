data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bin_size <- 4
bins <- split(data, ceiling(seq_along(data) / bin_size))
bin_mean <- unlist(lapply(bins, function(bin) rep(mean(bin), length(bin))))
bin_median <- unlist(lapply(bins, function(bin) rep(median(bin), length(bin))))
bin_boundaries <- unlist(lapply(bins, function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - min_val) < abs(x - max_val), min_val, max_val))
}))
print("Smoothing by Bin Mean:")
print(bin_mean)
print("Smoothing by Bin Median:")
print(bin_median)
print("Smoothing by Bin Boundaries:")
print(bin_boundaries)
̥