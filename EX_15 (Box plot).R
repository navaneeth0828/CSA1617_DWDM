# Sample data: Points scored by 10 players
player_scores <- c(12, 15, 18, 10, 22, 30, 25, 28, 35, 60)  # 60 is an outlier

# Create a boxplot
boxplot(player_scores, 
        main = "Boxplot of Tennis Player Scores",
        ylab = "Scores",
        col = "lightblue",
        border = "black",
        notch = TRUE)

# Add grid lines for clarity
grid()
