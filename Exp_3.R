# Install packages if not already installed
install.packages("corrplot")
install.packages("ggplot2")

# Load libraries
library(corrplot)
library(ggplot2)

# Load dataset
data <- read.csv("C:\\Users\\dadee\\Downloads\\datascience.csv")

# Select numerical columns
numeric_data <- data[, c("Age", "StudyHours", "Marks", "Attendance")]

# Calculate correlation matrix
correlation_matrix <- cor(numeric_data)

# Display correlation matrix
print(round(correlation_matrix, 2))

# Correlation heatmap
corrplot(
  correlation_matrix,
  method = "color",
  addCoef.col = "black",
  type = "full",
  tl.col = "black",
  tl.srt = 45
)

title("Correlation Heatmap")

# Scatter plot: Study Hours vs Marks
plot2 <- ggplot(
  data,
  aes(x = StudyHours, y = Marks)
) +
  geom_point() +
  labs(
    title = "Study Hours vs Marks",
    x = "Study Hours",
    y = "Marks"
  ) +
  theme_minimal()

print(plot2)