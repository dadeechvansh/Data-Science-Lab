
# Q1. Create a vector containing marks of 5 students
marks <- c(75, 82, 68, 90, 85)

# Display the vector
print(marks)

# Calculate mean
mean_marks <- mean(marks)
print(mean_marks)

# Calculate median
median_marks <- median(marks)
print(median_marks)


# Q.2 Create a vector
numbers <- c(10, 20, 30, 40, 50)

# Display the vector
print(numbers)

# Calculate sum
print(sum(numbers))

# Find maximum value
print(max(numbers))

# Find minimum value
print(min(numbers))

# Find length of vector
print(length(numbers))


# Q3. Create a vector
numbers <- c(45, 12, 78, 34, 56, 23)

# Display the original vector
print(numbers)

# Ascending order
ascending <- sort(numbers)
print(ascending)


# Descending order
descending <- sort(numbers, decreasing = TRUE)
print(descending)


# Q4. Create a vector of marks
marks <- c(45, 67, 34, 89, 76, 55)

# Display marks greater than 50
print(marks[marks > 50])

# Display marks less than 40
print(marks[marks < 40])

# Count students who scored more than 50
count <- sum(marks > 50)
print(count)
