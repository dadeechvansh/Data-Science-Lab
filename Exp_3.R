# Install packages if needed:
install.packages("corrplot")
install.packages("ggplot2")

library(corrplot)
library(ggplot2)

set.seed(42)

n <- 200

data <- data.frame(
  date = seq(as.Date("2024-01-01"), by = "day", length.out = n),
  category = sample(c("A", "B", "C", "D"), size = n, replace = TRUE),
  category_column = sample(c("A", "B", "C", "D"), size = n, replace = TRUE),
  column_1 = rnorm(n, mean = 60, sd = 10),
  value = rnorm(n, mean = 50, sd = 15),
  value_column = rnorm(n, mean = 100, sd = 20)
)

# Add 150 to the first five values
data$value_column[1:5] <- data$value_column[1:5] + 150

cat("\nFirst Five Rows:\n")
print(head(data))

# Select numerical columns
numeric_data <- data[c("column_1", "value", "value_column")]

# Calculate correlation matrix
correlation <- cor(numeric_data)

cat("\nCorrelation Matrix:\n")
print(correlation)

# Correlation plot
corrplot(
  correlation,
  method = "circle",
  type = "upper",
  addCoef.col = "black",
  tl.col = "black",
  title = "Correlation Plot",
  mar = c(0, 0, 2, 0)
)

# Scatter plot with regression line
p <- ggplot(
  data,
  aes(x = column_1, y = value)
) +
  geom_point() +
  geom_smooth(
    method = "lm",
    se = FALSE
  ) +
  labs(
    title = "Column 1 vs Value",
    x = "Column 1",
    y = "Value"
  ) +
  theme_minimal()

print(p)
