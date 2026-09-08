import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt


df = pd.read_csv(r"C:\Users\dadee\Downloads\datascience.csv")

data = df[["Age", "StudyHours", "Marks", "Attendance"]]


correlation = data.corr()

print("Correlation Matrix:")
print(correlation)

sns.heatmap(
    correlation,
    annot=True,
    cmap="coolwarm"
)

plt.title("Correlation Heatmap")
plt.show()