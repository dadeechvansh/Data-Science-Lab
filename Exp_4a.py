import pandas as pd
from sklearn.ensemble import IsolationForest

df = pd.DataFrame({
    "Age": [20,21,22,23,24,25,26,27,28,100],
    "Salary": [25000,27000,29000,30000,32000,35000,37000,40000,42000,200000]
})

print("Original Data:")
print(df)

iso = IsolationForest(contamination=0.1, random_state=42)
df["outlier"] = iso.fit_predict(df)

print("\nOutliers:")
print(df[df["outlier"] == -1])


df = df[df["outlier"] == 1].drop(columns="outlier")

print("\nClean Data:")
print(df)

df = (df - df.min()) / (df.max() - df.min())

print("\nScaled Data:")
print(df)