
install.packages("corrplot")
install.packages("ggplot2")


library(corrplot)
library(ggplot2)


data <- read.csv("C:\\Users\\dadee\\Downloads\\datascience.csv")


numeric_data <- data[, c("Age", "StudyHours", "Marks", "Attendance")]


correlation_matrix <- cor(numeric_data)

print(round(correlation_matrix, 2))


corrplot(
  correlation_matrix,
  method = "color",
  addCoef.col = "black",
  type = "full",
  tl.col = "black",
  tl.srt = 45
)

title("Correlation Heatmap")

plot2 <- ggplot(
  data,
  aes(x = StudyHours, y = Marks)
) +
  geom_point() +
  labs(
    title = "Study Hours vs Marks",
    x = "Study Hours",
    y = "Marks"
  ) +
  theme_minimal()

print(plot2)