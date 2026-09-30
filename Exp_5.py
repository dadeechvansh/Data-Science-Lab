import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Create dataset
data = {
    "Age": [20, 21, 20, 22, 23, 21, 24, 22, 20, 23],
    "Gender": ["Female", "Male", "Female", "Male", "Female",
               "Male", "Female", "Male", "Female", "Male"],
    "Study_Hours": [5, 3, 6, 2, 7, 4, 8, 3, 5, 6],
    "Marks": [85, 72, 90, 65, 92, 75, 95, 68, 88, 82]
}

df = pd.DataFrame(data)

plt.hist(df["Marks"], bins=5, edgecolor="black")
plt.xlabel("Marks")
plt.ylabel("Frequency")
plt.title("Distribution of Marks")
plt.show()


plt.figure()
sns.boxplot(x=df["Marks"])
plt.title("Boxplot of Marks")
plt.show()


plt.figure()
correlation = df.corr(numeric_only=True)
sns.heatmap(correlation, annot=True, cmap="coolwarm")
plt.title("Correlation Heatmap")
plt.show()

plt.figure()
sns.scatterplot(
    data=df,
    x="Study_Hours",
    y="Marks",
    hue="Gender"
)
plt.title("Study Hours vs Marks")
plt.show()