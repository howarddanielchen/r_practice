#* This is the practice file for chapter 2 from Muroch's R for Data Analysis
#* Functions, Data Structures, Boolean Expressions, Control Structures

# Functions #
first_name <- "Daniel"
last_name <- "Chen"
age <- 45

paste(first_name, last_name)
paste(last_name, first_name, sep = ", ")
sentence <- paste(first_name, last_name, "is", age, "years old.")

grep("old", sentence)
toupper(gsub("old", "young", sentence))

# Data Structures
## Lists (vectors)
temps <- c(95, 65, 45, 63, 24, 65, 80)
temps <- c("Mon" = temps[1], "Tue" = temps[2], "Wed" = temps[3], "Thu" = temps[4],
           "Fri" = temps[5], "Sat" = temps[6], "Sun" = temps[7])
temps["Sat"]

## Data Frame
months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep",
            "Oct", "Nov", "Dec")
num_days <- c(31,28,31,30,31,30,31,31,30,31,30,31)
season <- c("Winter", "Winter", "Spring", "Spring", "Spring", "Summer",
            "Summer", "Summer", "Fall", "Fall", "Fall", "Winter")

calendar_df <- data.frame(Month = months, NumDays = num_days, Season = season)
calendar_df[9:11, "Season"] <- "Autumn"
calendar_df


## Lists
calendar_list <- list("Misc Calendar Data",
                      headers = c("Month", "NumDays", "Season"),
                      rows = list(
                        list("Jan", 31, "Winter"),
                        list("Feb", 28, "Winter")
                      ))
calendar_list[2] #selects an item
calendar_list[[2]] # selects an item's value
calendar_list[['headers']]
calendar_list[["rows"]][2]
calendar_list[["rows"]][[2]][2]

## Adding values to Data Structures
numbers <- c(1,2,3,4)
numbers <- append(numbers, 5)
numbers <- append(numbers, c(6,8))
numbers <- append(numbers, 7, after = 6)

letters <- list("a", "b", "c", "d")
letters <- append(letters, "d")
letters <- append(letters, c("e", "h"))
letters[5] <- NULL
letters
letters <- append(letters, c("e", "h"))
letters
letters[7:8] <- NULL
letters
letters <-append(letters, c("f", "g"), after = 5)
letters

calendar_df
calendar_df <- rbind(calendar_df, list("NewJan", 31, "Bonus"),
                     list("NewFeb", 29, "Bonus"))
calendar_df
calendar_df <- rbind(calendar_df, c("NewMar", 31, "Bonus"))
calendar_df
avg_temp <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
calendar_df <- cbind(calendar_df, AvgTemp = avg_temp)
calendar_df

## Boolean Operators
num_days == 30
season == "Winter"
num_days != 28

# Control Structures like if, elseif, else

days <- 28
if (days < 30) {
  month <- "February"
}

## Loops
for (i in 1:3) {
  print(i)
}

grades <- c(100,90,110,70)
total <- 0
for (grade in grades) {
  total <- total + grade
}
total

for  (i in 1:length(grades)) {
  grades[i] <- grades[i] +10
}
grades

for (i in 1:length(grades)) {
  if (grades[i] > 100) {
    grades[i] <-100
  }
}
grades

## Functions

print_greeting <- function() {
  print("Greetings!")
}
print_greeting()

get_desc <- function(size) {
  if (size > 100) {
    desc <- "Large"
  } else {
    desc <- "Small"
  }
  return(desc)
}
get_desc(101)


get_points <- function(shot_type, shot_result) {
  if (shot_result == "made" & shot_type == "3pt") {
    points <- 3
  } else if (shot_result == "made" & shot_type == "2pt") {
    points <- 2
  } else {
    points <- 0
  }
  return(points)
}

get_points("2pt", "missed")
