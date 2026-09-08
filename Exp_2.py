# Experiment 2
# Calculate central tendency and dispersion
# and visualize the distribution using Matplotlib

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Number of students and subjects
students = int(input("Enter the number of students: "))
subjects = int(input("Enter the number of subjects: "))

# Generate random marks
np.random.seed(10)

marks = np.random.randint(
    0, 101,
    size=(students, subjects)
)

# Create column names
columns = [f"Subject {i}" for i in range(1, subjects + 1)]

# Create DataFrame
df = pd.DataFrame(
    marks,
    columns=columns,
    index=[f"Student {i}" for i in range(1, students + 1)]
)

# Display dataset
print("\nMarks Dataset:")
print(df)

# Calculate overall mean
overall_mean = df.mean().mean()

# Calculate overall median
overall_median = df.median().median()

# Calculate overall variance
overall_variance = df.to_numpy().var()

# Display statistics
print("\nOverall Statistics:")
print("Mean =", overall_mean)
print("Median =", overall_median)
print("Variance =", overall_variance)

# --------------------------------------------------
# Visualization: Grouped Bar Chart
# --------------------------------------------------

ax = df.plot(
    kind="bar",
    figsize=(10, 6)
)

plt.title("Grouped Bar Graph of Student Marks")
plt.xlabel("Students")
plt.ylabel("Marks")

# Display overall mean
plt.axhline(
    y=overall_mean,
    linestyle="--",
    linewidth=2,
    label=f"Mean = {overall_mean:.2f}"
)

# Display overall median
plt.axhline(
    y=overall_median,
    linestyle="-.",
    linewidth=2,
    label=f"Median = {overall_median:.2f}"
)

plt.legend()
plt.tight_layout()
plt.show()

# --------------------------------------------------
# Histogram
# --------------------------------------------------

plt.figure(figsize=(8, 5))

plt.hist(
    df.to_numpy().flatten(),
    bins=10,
    edgecolor="black"
)

plt.title("Distribution of Marks")
plt.xlabel("Marks")
plt.ylabel("Frequency")

plt.tight_layout()
plt.show()

# Conclusion
print("\nConclusion:")
print(
    "The experiment successfully calculated mean, median "
    "and variance and visualized the marks using Matplotlib."
)