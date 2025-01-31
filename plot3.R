#import data only with the specified date
data <- fread("household_power_consumption.txt", sep = ";")[Date %in% c("1/2/2007", "2/2/2007")]

#3rd plot
subm1=as.numeric(data$Sub_metering_1)
subm2=as.numeric(data$Sub_metering_2)
subm3=as.numeric(data$Sub_metering_3)
png("plot3.png", width = 480, height = 480)
plot(subm1,type = "n",xlab="",ylab="Enegy sub metering",xaxt="n")
lines(subm1,col="black")
lines(subm2,col="red")
lines(subm3, col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1",
                                                             "Sub_metering_2",
                                                             "Sub_metering_3"))
axis(1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off()