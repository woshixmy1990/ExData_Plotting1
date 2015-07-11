

data<-read.csv("household_power_consumption.txt",sep=";")
data$Date=as.Date(data$Date,"%d/%m/%Y")
head(data)
subset_data<-data[data$Date>="2007-02-01"&data$Date<"2007-02-03",]
View(subset_data)
subset_data$Global_active_power=
  as.numeric((as.character(subset_data$Global_active_power)))

##plot1:
hist(subset_data$Global_active_power, main="Global Active Power",
     col="red",xlab="Global Active Power (kilowatts)")

##plot2:
time_stamp=as.POSIXct(paste(subset_data$Date, subset_data$Time), format="%Y-%m-%d %H:%M:%S")

names(time_stamp)<-"Time_stamp"
subset_data2<-cbind(time_stamp,subset_data)
plot(subset_data2$time_stamp,subset_data2$Global_active_power,
     ylab="Global Active Power (kilowatts)",type="l")

##plot3:
library(ggplot2)
plot(subset_data2$time_stamp,subset_data2$Sub_metering_1,
     ylab="Energy subcmetering",type="l",col="red")
plot(subset_data2$time_stamp,subset_data2$Sub_metering_2,
     ylab="Energy subcmetering",type="l",col="green",add=TRUE)
par(new=TRUE)
plot(subset_data2$time_stamp,subset_data2$Sub_metering_3,
     ylab="Energy subcmetering",type="l",col="blue")

ggplot(subset_data2,aes(time_stamp))+
  geom_line(aes(y=Sub_metering_1), colour="red") +
  geom_line(aes(y=Sub_metering_2), colour="green")
  geom_line(aes(y=Sub_metering_3), colour="blue")

##plot4:
par(mfrow=c(2,2))
plot(subset_data2$time_stamp,subset_data2$Global_active_power,
     ylab="Global Active Power (kilowatts)",type="l")
plot(subset_data2$time_stamp,subset_data2$Voltage,
     ylab="Voltage",type="l",xlab="datetime")
print (plot2)
plot(subset_data2$time_stamp,subset_data2$Global_reactive_power,
     ylab="Global Reactive Power (kilowatts)",type="l",xlab="datetime")
