# Define the prime checking function
is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  
  sqrt_num <- floor(sqrt(num))
  if (sqrt_num >= 2) {
    for (i in 2:sqrt_num) {
      if (num %% i == 0) {
        return(FALSE)
      }
    }
  }
  return(TRUE)
}

# 1. Prompt the user for input
user_input <- readline(prompt = "Enter a whole number to check: ")

# 2. Convert the input text to an integer
number <- as.integer(user_input)

# 3. Check and display the result
if (is.na(number)) {
  print("Invalid input. Please enter a valid whole number.")
} else if (is_prime(number)) {
  print(paste(number, "is a PRIME number!"))
} else {
  print(paste(number, "is NOT a prime number."))
}
