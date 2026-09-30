library(outliers)
library(caret)

# Sample dataset
df <- data.frame(
  Age    = c(20, 21, 22, 23, 24, 25, 26, 27, 28, 100),
  Salary = c(25000, 27000, 29000, 30000, 32000, 
             35000, 37000, 40000, 42000, 200000)
)

cat("Original Dataset:\n")
print(df)

# 1. Detect outliers using the outliers package
# scores() computes a Z-score for every value: (x - mean) / sd
age_scores    <- scores(df$Age, type = "z")
salary_scores <- scores(df$Salary, type = "z")

cat("\nz-scores (outliers::scores):\n")
print(data.frame(
  Age      = df$Age,    Age_z    = round(age_scores, 2),
  Salary   = df$Salary, Salary_z = round(salary_scores, 2)
))

# Flag a row as an outlier if EITHER column's |z-score| exceeds the threshold
threshold <- 2
df$outlier_flag <- (abs(age_scores) > threshold) | (abs(salary_scores) > threshold)

cat("\nOutliers detected (|z| > 2):\n")
print(df[df$outlier_flag, c("Age", "Salary")])

# grubbs.test() formally tests whether the single most extreme value
# in a vector is a statistical outlier (returns a p-value)
cat("\nGrubbs' test - Age:\n")
print(grubbs.test(df$Age))

cat("\nGrubbs' test - Salary:\n")
print(grubbs.test(df$Salary))

# outlier() simply returns the most extreme value in a vector
cat("\nMost extreme Age value: ", outlier(df$Age), "\n")
cat("Most extreme Salary value:", outlier(df$Salary), "\n")

# 2. Handle Outliers (remove flagged rows)
df_clean <- df[!df$outlier_flag, c("Age", "Salary")]
rownames(df_clean) <- NULL  # reset row indices

cat("\nDataset after removing outliers:\n")
print(df_clean)
# -
# 3. Data Transformation using caret (Min-Max Scaling)
# ---------------------------------------------------
# preProcess(method = "range") rescales each numeric column to [0, 1]
preproc <- preProcess(df_clean, method = "range")
df_scaled <- predict(preproc, df_clean)

cat("\nDataset after Min-Max Transformation (caret):\n")
print(df_scaled)