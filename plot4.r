##plot4:
par(mfrow=c(2,2))
plot(subset_data2$time_stamp,subset_data2$Global_active_power,
     ylab="Global Active Power (kilowatts)",type="l",xlab="")
plot(subset_data2$time_stamp,subset_data2$Voltage,
     ylab="Voltage",type="l",xlab="datetime")
plot(subset_data2$time_stamp, subset_data2$Sub_metering_1, type="n", xlab="", 
     ylab="Energy sub metering") 
points(subset_data2$time_stamp, subset_data2$Sub_metering_1, type="l", col="black") 
points(subset_data2$time_stamp, subset_data2$Sub_metering_2, type="l", col="red") 
points(subset_data2$time_stamp, subset_data2$Sub_metering_3, type="l", col="blue") 
legend("topright", col=c("black", "red", "blue"), lty=c(1,1,1),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex=0.1) 
plot(subset_data2$time_stamp,subset_data2$Global_reactive_power,
     ylab="Global Reactive Power (kilowatts)",type="l",xlab="datetime")
dev.copy(png,filename="plot4.png");
dev.off ();
