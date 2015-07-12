## plot the first graphe

data<-read.csv("household_power_consumption.txt",sep=";")
data$Date=as.Date(data$Date,"%d/%m/%Y")
head(data)
subset_data<-data[data$Date>="2007-02-01"&data$Date<"2007-02-03",]
View(subset_data)
subset_data$Global_active_power=
  as.numeric((as.character(subset_data$Global_active_power)))
  
 ##plot1:
par(mfrow=c(1,1))
hist(subset_data$Global_active_power, main="Global Active Power",
     col="red",xlab="Global Active Power (kilowatts)")
dev.copy(png,filename="plot1.png");
dev.off ();
