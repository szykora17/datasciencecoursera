#import data only with the specified date
data <- fread("household_power_consumption.txt", sep = ";")[Date %in% c("1/2/2007", "2/2/2007")]

#2nd plot
gap=as.numeric(data$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(gap,type = "S",xlab="",ylab="Global Active Power (kilowatts)", xaxt="n")
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off()