data(mtcars)
data_to_plot <- mtcars[, c("mpg", "qsec")]
matplot(1:nrow(data_to_plot), data_to_plot, type = "l", col = c("blue", "red"), lty = 1,
        xlab = "Car Index", ylab = "Value", main = "Line Chart of mpg and qsec")
legend("topright", legend = c("mpg", "qsec"), col = c("blue", "red"), lty = 1)
