##plot the third plots

plot(subset_data2$time_stamp, subset_data2$Sub_metering_1, type="n", xlab="", 
      ylab="Energy sub metering") 
points(subset_data2$time_stamp, subset_data2$Sub_metering_1, type="l", col="black") 
points(subset_data2$time_stamp, subset_data2$Sub_metering_2, type="l", col="red") 
points(subset_data2$time_stamp, subset_data2$Sub_metering_3, type="l", col="blue") 
legend("topright", col=c("black", "red", "blue"), lty=c(1,1,1),
legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 

dev.copy(png,filename="plot3.png");
dev.off ();
 
