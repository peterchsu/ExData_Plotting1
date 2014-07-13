## This function plots Global Active Power, Energy sub metering, Voltage, and
## Global Reactive Power for a two day period in February 2007.
##
## The graph is saved as a file in the local directory named "plot3.png"
##
## Appropriate data may be passed to the function.  If this does not occur,
## the "readData.R" function as well as the appropriate dataset under the file
## name "household_power_consumption.txt" must be in the local working
## directory.

plot4 <- function(data = NULL, writeFile = TRUE){
  #load data
  if (is.null(data)){
    source("readData.R")
    data <- readData()
  }
  
  if(writeFile){png(file = "plot4.png")}
  
  par(mfrow = c(2, 2))
  with(data, {
    plot(DateTime, Global_active_power, type="l", ylab = "Global Active Power", xlab="")
    
    plot(DateTime, Voltage, type="l", xlab="datetime")
    
    plot(DateTime, Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")
    lines(DateTime, Sub_metering_2, col = 2)
    lines(DateTime, Sub_metering_3, col = 4)
    legend("topright", lty="solid", col = c(1, 2, 4), bty="n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
    plot(DateTime, Global_reactive_power, type="l", xlab="datetime")
  })
  
  if(writeFile){dev.off()}
}