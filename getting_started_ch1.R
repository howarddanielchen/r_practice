#* This is the practice file for chapter 1 from Muroch's R for Data Analysis
#* 
# Creates a variable
message <- "Hello World"

# Displays the value in the variable
message

# Create two two varables with values and a variable to calculate the average
total <- 453
count <- 32
avg <- total / count
avg

# Calculate rate per 100,000 people
rate <- 0.0198
rate_per_100k <- rate * 100000
rate_per_100k

# Calcualte hours and remaining minutes
minutes <- 127
hours <- minutes %/% 60
hours
minutes_remaining <- minutes %% 60
minutes_remaining