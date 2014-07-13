## readData()
##
## This function reads in a data set from the UCI Machine Learning Arhicve.
## Data is then subset for a two day period in February 2007.
## A new field containing date and time is created to ease future processing.
## The file "household_power_consumption.txt" must be in the local directory
## or the function will throw an error.

readData <- function(){
  if (!file.exists("household_power_consumption.txt")){
    stop("Unable to locate household_power_consumption.txt file in current director")
  }
  data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
  
  #select for the dates we want
  data$Date <- as.Date(data$Date, format="%d/%m/%Y")
  data <- data[data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02"),]
  
  #Add a new field that has the date and time
  data <- cbind(data, DateTime = as.POSIXct(paste(data$Date, data$Time)))

  data
}