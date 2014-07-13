## This function plots Energy sub metering for a two day period in February
## 2007.
##
## The graph is saved as a file in the local directory named "plot3.png"
##
## Appropriate data may be passed to the function.  If this does not occur,
## the "readData.R" function as well as the appropriate dataset under the file
## name "household_power_consumption.txt" must be in the local working
## directory.


plot3 <- function(data = NULL){
  #load data
  if (is.null(data)){
    source("readData.R")
    data <- readData()
  }
  
  png(file = "plot3.png")
  plot(data$DateTime, data$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")
  lines(data$DateTime, data$Sub_metering_2, col = 2)
  lines(data$DateTime, data$Sub_metering_3, col = 4)
  legend("topright", lty="solid", col = c(1, 2, 4), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()
}