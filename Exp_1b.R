# Experiment 1(b)
# Implement descriptive statistics using R packages
# dplyr and psych

# Load libraries
library(dplyr)
library(psych)

# Create dataset
marks <- c(65, 75, 70, 89, 90, 63, 70, 88)

# Display dataset
cat("Dataset:\n")
print(marks)

# Calculate Mean
mean_value <- mean(marks)

# Calculate Median
median_value <- median(marks)

# Calculate Mode
frequency <- table(marks)
mode_value <- names(frequency)[frequency == max(frequency)]

# Calculate Variance
variance_value <- var(marks)

# Display results
cat("\nDescriptive Statistics:\n")
cat("Mean =", mean_value, "\n")
cat("Median =", median_value, "\n")
cat("Mode =", mode_value, "\n")
cat("Variance =", variance_value, "\n")

# Descriptive statistics using psych package
cat("\nDescriptive Statistics using psych:\n")
print(describe(marks))

# Descriptive statistics using dplyr
data <- data.frame(Marks = marks)

summary_data <- data %>%
  summarise(
    Mean = mean(Marks),
    Median = median(Marks),
    Variance = var(Marks)
  )

cat("\nDescriptive Statistics using dplyr:\n")
print(summary_data)

# Conclusion
cat("\nConclusion:\n")
cat("Descriptive statistics were successfully calculated using R packages dplyr and psych.\n")