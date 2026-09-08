# Experiment 1(a)


import pandas as pd
import numpy as np

data = pd.DataFrame({
    "Student": [
        "Alice", "John", "Bob", "Emma",
        "David", "Sophia", "Mike", "Olivia"
    ],
    "Marks": [85, 78, 92, 85, 76, 90, 85, 88]
})


print("Dataset:")
print(data)

mean = np.mean(data["Marks"])

median = np.median(data["Marks"])

mode = data["Marks"].mode()[0]

variance = np.var(data["Marks"])

print("\nDescriptive Statistics:")
print("Mean =", mean)
print("Median =", median)
print("Mode =", mode)
print("Variance =", variance)


print("\nConclusion:")
print("Mean, median, mode and variance were successfully calculated using NumPy and Pandas.")