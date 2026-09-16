print("Hello World")
a <- 5 
b <- 6 
print(a)
class(a)

c <- "D Sci"
d <- 6
e <- 85.5
f <- TRUE

class(c)
class(d)
class(e)
class(f)

g <- 10
h <- 3

print(g+h)
print(g-h)
print(g*h)
print(g/h)
print(g%%h)
print(g^h)

# vectors have same datatype
marks <- c(70,80,80,90,75)
print(marks)
print(marks[1])
print(marks[4])

sum(marks)
mean(marks)
median(marks)
max(marks)
min(marks)

# list can store different types of data
student <- list(
  name = "BAman",
  age = 20,
  marks = 85,
  passed = TRUE
)
print(student)
print(student$name)

# Data frames -A data frame is a table containing rows and columns

students = data.frame(
  Name = c("Aman","Riya"),
  Age = c(20,21,19),
  Marks = c(85,90,78)
)

print(students)
print(students$Name)

# Ask the user for their name
user_name <- readline(prompt = "Enter your name: ")

print(paste("Hello", user_name))



# matrix

m <- matrix(
  c(1,2,3,4,5,6),
  nrow=2,
  ncol=3
)
print(m)


# ///////////////////////

students <- data.frame(
  Name=c("Aman","Riya","Rahul"),
  Age=c(20,21,20),
  Marks=c(80,90,75)
)
print(students)

# if wanna add new column

students.Result <- c("Pass", "Pass","Pass")

# filter rows
students[students[Marks > 70,]]



# Visualization in R
x <- c(1,2,3,4,5)
y <-c(10,20,15,17,30)
plot(x,y)

# Histogram

marks <-c(45,50,55,60,65,70,80,85,90)
hist(marks)
 
# Bar Plot

marks <-c(80,90,70)
names<-c("Rahul","Priya","Aman")

barplot(marks,
        names.arg=names
)

# names.arg= tells R to label each bar on the axis using the names vector instead of just s

# scatter plot

hours <-c(1,2,3,4,5)
marks<-c(40,50,60,70,85)

plot(hours,marks)

Box