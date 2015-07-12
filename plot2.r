##plot the second plot

##plot2:
time_stamp=as.POSIXct(paste(subset_data$Date, subset_data$Time), format="%Y-%m-%d %H:%M:%S")

names(time_stamp)<-"Time_stamp"
subset_data2<-cbind(time_stamp,subset_data)
plot(subset_data2$time_stamp,subset_data2$Global_active_power,
     ylab="Global Active Power (kilowatts)",type="l", xlab="")
dev.copy(png,filename="plot2.png");
dev.off ();
