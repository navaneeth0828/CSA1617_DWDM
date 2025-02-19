# Load the built-in mtcars dataset
data(mtcars)

# Convert 'cyl' to a factor (categorical variable) for grouping
mtcars$cyl <- as.factor(mtcars$cyl)

# Create the boxplot
boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon (mpg)",
        main = "Boxplot of MPG vs. Number of Cylinders",
        col = c("lightblue", "lightgreen", "lightcoral"),
        border = "black")

# Add grid lines for better readability
grid()
