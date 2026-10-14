import pandas as pd
import numpy as np
from sklearn.ensemble import IsolationForest

data = {
    "Age": [20, 21, 22, 23, 24, 100],
    "Salary": [25000, 27000, 28000, 30000, 32000, 200000]
}

df = pd.DataFrame(data)

model = IsolationForest(
    random_state=42,
    contamination=0.1
)

result = model.fit_predict(df[["Age", "Salary"]])
df["Outlier"] = result

df_clean = df[df["Outlier"] == 1].copy()

for col in ["Age", "Salary"]:
    col_min = df_clean[col].min()
    col_max = df_clean[col].max()

    df_clean[col] = (
        (df_clean[col] - col_min) /
        (col_max - col_min)
    )

print(df_clean)