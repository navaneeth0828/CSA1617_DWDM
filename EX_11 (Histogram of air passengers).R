# Load the AirPassengers dataset
data("AirPassengers")

# Define the bins
breaks <- c(100, seq(200, 700, by = 150))

# Create the histogram
hist(AirPassengers, breaks = breaks, col = "lightblue", border = "black",
     main = "Histogram of AirPassengers", xlab = "Number of Passengers",
     ylab = "Frequency")
