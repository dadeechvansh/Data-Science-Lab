# Experiment 1(a)
# Implement descriptive statistics using Python libraries
# NumPy and Pandas

import pandas as pd
import numpy as np

# Create dataset
data = pd.DataFrame({
    "Student": [
        "Alice", "John", "Bob", "Emma",
        "David", "Sophia", "Mike", "Olivia"
    ],
    "Marks": [85, 78, 92, 85, 76, 90, 85, 88]
})

# Display dataset
print("Dataset:")
print(data)

# Calculate Mean
mean = np.mean(data["Marks"])

# Calculate Median
median = np.median(data["Marks"])

# Calculate Mode
mode = data["Marks"].mode()[0]

# Calculate Variance
variance = np.var(data["Marks"])

# Display results
print("\nDescriptive Statistics:")
print("Mean =", mean)
print("Median =", median)
print("Mode =", mode)
print("Variance =", variance)

# Conclusion
print("\nConclusion:")
print("Mean, median, mode and variance were successfully calculated using NumPy and Pandas.")