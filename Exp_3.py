import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load dataset
df = pd.read_csv(r"C:\Users\dadee\Downloads\datascience.csv")

# Select numerical columns
data = df[["Age", "StudyHours", "Marks", "Attendance"]]

# Calculate correlation matrix
correlation = data.corr()

# Display correlation matrix
print("Correlation Matrix:")
print(correlation)

# Heatmap
sns.heatmap(
    correlation,
    annot=True,
    cmap="coolwarm"
)

plt.title("Correlation Heatmap")
plt.show()