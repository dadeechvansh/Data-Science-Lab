# Experiment 2


import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


students = int(input("Enter the number of students: "))
subjects = int(input("Enter the number of subjects: "))


np.random.seed(10)

marks = np.random.randint(
    0, 101,
    size=(students, subjects)
)


columns = [f"Subject {i}" for i in range(1, subjects + 1)]


df = pd.DataFrame(
    marks,
    columns=columns,
    index=[f"Student {i}" for i in range(1, students + 1)]
)


print("\nMarks Dataset:")
print(df)


overall_mean = df.mean().mean()


overall_median = df.median().median()


overall_variance = df.to_numpy().var()


print("\nOverall Statistics:")
print("Mean =", overall_mean)
print("Median =", overall_median)
print("Variance =", overall_variance)


ax = df.plot(
    kind="bar",
    figsize=(10, 6)
)

plt.title("Grouped Bar Graph of Student Marks")
plt.xlabel("Students")
plt.ylabel("Marks")


plt.axhline(
    y=overall_mean,
    linestyle="--",
    linewidth=2,
    label=f"Mean = {overall_mean:.2f}"
)


plt.axhline(
    y=overall_median,
    linestyle="-.",
    linewidth=2,
    label=f"Median = {overall_median:.2f}"
)

plt.legend()
plt.tight_layout()
plt.show()



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


print("\nConclusion:")
print(
    "The experiment successfully calculated mean, median "
    "and variance and visualized the marks using Matplotlib."
)