## This function plots a histogram of Global Active Power for a two day period
## in February 2007.
##
## The graph is saved as a file in the local directory named "plot1.png"
##
## Appropriate data may be passed to the function.  If this does not occur,
## the "readData.R" function as well as the appropriate dataset under the file
## name "household_power_consumption.txt" must be in the local working
## directory.

plot1 <- function(data = NULL){
  #load data
  if (is.null(data)){
    source("readData.R")
    data <- readData()
  }
  
  #plot and save
  hist(data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowats)", col = 2)
  png(file = "plot1.png")
  hist(data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowats)", col = 2)
  dev.off()
}
