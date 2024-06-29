# Install openxlsx package if not already installed
if (!requireNamespace("openxlsx", quietly = TRUE)) {
    install.packages("openxlsx") # nolint: indentation_linter.
}

# Import the openxlsx library
library(openxlsx)

# Hello, World in R
print("Hello, World!")
#import the openxls library
library(openxlsx)
# Prompt the user to enter their name
name <- readline("Enter your name: ")

# Prompt the user to enter 3 integers
num1 <- as.integer(readline("Enter the first integer: "))
num2 <- as.integer(readline("Enter the second integer: "))
num3 <- as.integer(readline("Enter the third integer: "))

# Calculate the sum
sum <- num1 + num2 + num3

# Output the sum
print(paste("The sum is:", sum))


# Calculate the average
avg <- sum / 3

# Save the average to a variable called dgsum
dgsum <- avg

# Output the average

print(paste("The average is:", avg))

#multiply the average by 2 and store it in a variable called dgsum

dgsum <- avg * 2
#print dgsum
print(paste("The double of the average is:", dgsum))

#promt the user for a path toa csv file and read the file into an array
path <- readline("Enter the path to the csv file: ")
data <- read.csv(path)
#print the data
print(data)

#export data to an xls file , promting the usre for a file name, and sheet name saving to the same directory as the input file  # nolint
library(openxlsx)   
write.xlsx(data, file = paste0(filename, ".xlsx"), sheetName = sheetname)
filename <- readline("Enter the name of the file to save the data to: ")
sheetname <- readline("Enter the name of the sheet to save the data to: ")