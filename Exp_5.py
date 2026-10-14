

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

data = {
    'Study_hours': [2, 3, 4, 5, 6, 7],
    'Marks': [40, 50, 60, 70, 80, 90],
    'Age': [19, 20, 19, 21, 20, 22],
    'Gender': ['Male', 'Female', 'Male',
               'Female', 'Male', 'Female']
}

df = pd.DataFrame(data)

# Display dataset
print("Dataset:")
print(df)

# Descriptive statistics
print("\nDescriptive Statistics:")
print(df.describe())

# Mean, median and mode
print("\nMean of Marks:", np.mean(df['Marks']))
print("Median of Marks:", np.median(df['Marks']))
print("Mode of Marks:", df['Marks'].mode().tolist())

# 1. Histogram - Univariate Analysis
plt.figure(figsize=(6, 4))
sns.histplot(data=df, x='Marks', bins=5, kde=True)
plt.title("Distribution of Marks")
plt.xlabel("Marks")
plt.ylabel("Frequency")
plt.show()

# 2. Boxplot - Univariate Analysis
plt.figure(figsize=(6, 4))
sns.boxplot(data=df, y='Marks')
plt.title("Boxplot of Marks")
plt.ylabel("Marks")
plt.show()

# 3. Scatterplot - Multivariate Analysis
plt.figure(figsize=(6, 4))
sns.scatterplot(
    data=df,
    x='Study_hours',
    y='Marks',
    hue='Gender',
    s=100
)
plt.title("Study Hours vs Marks")
plt.show()

# 4. Heatmap - Correlation Analysis
corr_mat = df.corr(numeric_only=True)

plt.figure(figsize=(6, 4))
sns.heatmap(
    corr_mat,
    annot=True,
    cmap='coolwarm',
    vmin=-1,
    vmax=1
)
plt.title("Correlation Heatmap")
plt.show()

# 5. Barplot - Multivariate Analysis
plt.figure(figsize=(6, 4))
sns.barplot(data=df, x='Gender', y='Marks')
plt.title("Average Marks by Gender")
plt.xlabel("Gender")
plt.ylabel("Average Marks")
plt.show()