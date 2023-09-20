# Read the CSV file into an R data frame
data <- read.csv("C:/Users/16475/Desktop/EXPE.csv")

# Check if data was successfully loaded
if (exists("data")) {
  # Generate a summary of the data
  summary_data <- summary(data)
  
  # Print the summary to the R console
  print(summary_data)
} else {
  # Print an error message if data loading fails
  print("Error: Unable to load the CSV file.\n")
}

price_relative <- (data$Close)/(data$Open) 


simple_daily <- price_relative - 1

compounded_daily <- log(data$Close) - log(data$Open)

#simple_monthly <- 









