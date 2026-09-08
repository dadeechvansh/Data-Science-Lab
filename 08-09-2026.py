import pandas as pd
import numpy as np

data = {
    "Name": ["Raj", "Aman", "Riya", "Arjun",],
    "Age": [20, 21, 19, 22],
    "Marks": [85, 90, 88, 92]
}

df=pd.DataFrame(data)
print("Original Dataset:")
print(df)

features = ["Age", "Marks"]

