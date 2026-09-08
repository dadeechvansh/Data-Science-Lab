import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np
import os

print("Current Working Directory:", os.getcwd())

np.random.seed(42)

n = 200

data = pd.DataFrame({
    "date": pd.date_range(start="2024-01-01", periods=n, freq="D"),
    "category": np.random.choice(["A", "B", "C", "D"], size=n),
    "category_column": np.random.choice(["A", "B", "C", "D"], size=n),
    "column_1": np.random.normal(loc=60, scale=10, size=n),
    "value": np.random.normal(loc=50, scale=15, size=n),
    "value_column": np.random.normal(loc=100, scale=20, size=n)
})

# Add 150 to the first five values
data.loc[0:4, "value_column"] = data.loc[0:4, "value_column"] + 150

print("\nFirst Five Rows:")
print(data.head())

# Select numerical columns
numeric_data = data[["column_1", "value", "value_column"]]

# Calculate correlation matrix
correlation = numeric_data.corr(numeric_only=True)

print("\nCorrelation Matrix:")
print(correlation)

# Plot correlation heatmap
plt.figure(figsize=(6, 5))

sns.heatmap(
    correlation,
    annot=True,
    fmt=".2f",
    cmap="coolwarm",
    vmin=-1,
    vmax=1
)

plt.title("Correlation Heatmap")
plt.tight_layout()

# Save heatmap
output_path = os.path.join(os.getcwd(), "correlation.png")
plt.savefig(output_path, dpi=150)

print("\nHeatmap saved at:", output_path)

plt.show()