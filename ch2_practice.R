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
