water <- read.csv("C:/Users/Windows/OneDrive/Desktop/water.csv")


# View first few rows
head(water)

# Scatter plot of mortality vs. hardness
plot(water$hardness, water$mortality, 
     xlab = "Water Hardness", ylab = "Mortality",
     main = "Scatter Plot of Mortality vs. Hardness",
     col = "blue", pch = 16)

# Add a linear trend line
abline(lm(mortality ~ hardness, data = water), col = "red", lwd = 2)
# Fit a linear regression model
model <- lm(mortality ~ hardness, data = water)

# Display the model summary
summary(model)
# Predict mortality when hardness = 88
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(model, new_data)

# Output the predicted value
print(predicted_mortality)
