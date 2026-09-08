# Experiment 1(b)


library(dplyr)
library(psych)


marks <- c(65, 75, 70, 89, 90, 63, 70, 88)


cat("Dataset:\n")
print(marks)


mean_value <- mean(marks)


median_value <- median(marks)


frequency <- table(marks)
mode_value <- names(frequency)[frequency == max(frequency)]

variance_value <- var(marks)


cat("\nDescriptive Statistics:\n")
cat("Mean =", mean_value, "\n")
cat("Median =", median_value, "\n")
cat("Mode =", mode_value, "\n")
cat("Variance =", variance_value, "\n")


cat("\nDescriptive Statistics using psych:\n")
print(describe(marks))


data <- data.frame(Marks = marks)

summary_data <- data %>%
  summarise(
    Mean = mean(Marks),
    Median = median(Marks),
    Variance = var(Marks)
  )

cat("\nDescriptive Statistics using dplyr:\n")
print(summary_data)


cat("\nConclusion:\n")
cat("Descriptive statistics were successfully calculated using R packages dplyr and psych.\n")