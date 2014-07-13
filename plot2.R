## This function plots Global Active Power for a two day period in February
## 2007.
##
## The graph is saved as a file in the local directory named "plot2.png"
##
## Appropriate data may be passed to the function.  If this does not occur,
## the "readData.R" function as well as the appropriate dataset under the file
## name "household_power_consumption.txt" must be in the local working
## directory.

plot2 <- function (data = NULL){
  #load data
  if (is.null(data)){
    source("readData.R")
    data <- readData()
  }
  
  plot(data$DateTime, data$Global_active_power, type="l", ylab = "Global Active Power (kilowats)", xlab="")
  png(file = "plot2.png")
  plot(data$DateTime, data$Global_active_power, type="l", ylab = "Global Active Power (kilowats)", xlab="")
  dev.off()
}
