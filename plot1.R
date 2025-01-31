#import data only with the specified date
data <- fread("household_power_consumption.txt", sep = ";")[Date %in% c("1/2/2007", "2/2/2007")]

#1st plot
gap=as.numeric(data$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(gap,col="red",main="Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()