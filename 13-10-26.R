
# Q1: Descriptive Statistical Analysis

data <- c(10, 20, 20, 30, 40, 20, 50)

# Calculate mean
cat("Mean:", mean(data), "\n")

# Calculate median
cat("Median:", median(data), "\n")

# Calculate mode
get_mode <- function(x) {
  values <- unique(x)
  values[which.max(tabulate(match(x, values)))]
}

cat("Mode:", get_mode(data), "\n")

# Calculate variance
cat("Variance:", var(data), "\n")

# Calculate standard deviation
cat("Standard Deviation:", sd(data), "\n")



# Q2: User-Defined Function

# Define a function to calculate the sum of two numbers
add_numbers <- function(a, b) {
  sum <- a + b
  return(sum)
}

# Call the function
result <- add_numbers(10, 20)

# Display the result
cat("Sum:", result, "\n")




# Q3: Univariate EDA

# Create a dataset
marks <- c(45, 60, 70, 75, 80, 85, 90, 65, 75, 95)

# Display basic statistics
cat("Summary Statistics:\n")
print(summary(marks))

cat("\nMean:", mean(marks), "\n")
cat("Median:", median(marks), "\n")
cat("Standard Deviation:", sd(marks), "\n")

# Histogram
hist(marks,
     main = "Histogram of Marks",
     xlab = "Marks",
     col = "lightblue",
     border = "black")

# Boxplot
boxplot(marks,
        main = "Boxplot of Marks",
        ylab = "Marks",
        col = "lightgreen")

# Density plot
plot(density(marks),
     main = "Density Plot of Marks",
     xlab = "Marks")





# Q4: Multivariate EDA

# Create a data frame
data <- data.frame(
  Age = c(20, 21, 22, 23, 24),
  Marks = c(70, 75, 80, 85, 90),
  StudyHours = c(2, 3, 4, 5, 6)
)

# Display dataset
print(data)

# Calculate correlation matrix
correlation <- cor(data)

cat("Correlation Matrix:\n")
print(correlation)

# Scatter plot
plot(data$StudyHours, data$Marks,
     main = "Study Hours vs Marks",
     xlab = "Study Hours",
     ylab = "Marks",
     pch = 19,
     col = "blue")

# Scatter plot matrix
pairs(data,
      main = "Scatter Plot Matrix",
      col = "red",
      pch = 19)

# Correlation heatmap
heatmap(correlation,
        main = "Correlation Heatmap",
        Rowv = NA,
        Colv = NA,
        scale = "none")


# Q5: Filter and Sort Data

# Create a data frame
students <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Name = c("Aman", "Riya", "Rahul", "Priya", "Karan"),
  Marks = c(75, 90, 65, 85, 95)
)

cat("Original Data:\n")
print(students)

# Filter students with marks greater than 80
filtered_data <- subset(students, Marks > 80)

cat("\nFiltered Data (Marks > 80):\n")
print(filtered_data)

# Sort students by marks in ascending order
sorted_data <- students[order(students$Marks), ]

cat("\nSorted Data (Ascending Order):\n")
print(sorted_data)

# Sort students by marks in descending order
descending_data <- students[order(-students$Marks), ]

cat("\nSorted Data (Descending Order):\n")
print(descending_data)



# Q6: Group Data and Calculate Summary Statistics

# Create a data frame
students <- data.frame(
  Name = c("Aman", "Riya", "Rahul", "Priya",
           "Karan", "Neha"),
  Department = c("CSE", "IT", "CSE", "IT",
                 "CSE", "IT"),
  Marks = c(75, 90, 65, 85, 95, 80)
)

cat("Original Data:\n")
print(students)

# Group data by department and calculate mean marks
group_mean <- aggregate(
  Marks ~ Department,
  data = students,
  FUN = mean
)

cat("\nAverage Marks by Department:\n")
print(group_mean)

# Calculate multiple summary statistics
group_summary <- aggregate(
  Marks ~ Department,
  data = students,
  FUN = function(x) {
    c(
      Mean = mean(x),
      Median = median(x),
      Minimum = min(x),
      Maximum = max(x)
    )
  }
)

cat("\nSummary Statistics by Department:\n")
print(group_summary)



