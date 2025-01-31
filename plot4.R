#import data only with the specified date
data <- fread("household_power_consumption.txt", sep = ";")[Date %in% c("1/2/2007", "2/2/2007")]

#4th plot
volt=as.numeric(data$Voltage)
grp=as.numeric(data$Global_reactive_power)
gap=as.numeric(data$Global_active_power)
subm1=as.numeric(data$Sub_metering_1)
subm2=as.numeric(data$Sub_metering_2)
subm3=as.numeric(data$Sub_metering_3)
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(gap,type = "S",xlab="",ylab="Global Active Power (kilowatts)", xaxt="n")
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
plot(volt,type = "S",xlab="datetime",ylab="Voltage", xaxt="n")
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
plot(subm1,type = "n",xlab="",ylab="Enegy sub metering",xaxt="n")
lines(subm1,col="black")
lines(subm2,col="red")
lines(subm3, col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1",
                                                             "Sub_metering_2",
                                                             "Sub_metering_3"),
       box.lty=0, inset=0.01)
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
plot(grp,type = "S",xlab="datetime",ylab="Global_reactive_power", xaxt="n")
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off()