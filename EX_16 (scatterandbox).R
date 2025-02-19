# Load the diabetes dataset (ensure the file path is correct)
diabetes <- read.csv("C:\\Users\\Windows\\OneDrive\\Desktop\\diabetes.csv")

# View the first few rows
head(diabetes)

# Scatter plot for Blood Pressure vs Age
plot(diabetes$Age, diabetes$BloodPressure,
     xlab = "Age",
     ylab = "Blood Pressure",
     main = "Scatter Plot: Blood Pressure vs Age",
     col = "blue", pch = 16)

# Add trend line (linear regression)
abline(lm(BloodPressure ~ Age, data = diabetes), col = "red", lwd = 2)
