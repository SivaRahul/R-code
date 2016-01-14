datasrc<-"I:/basam/Education/JHU DATA SCIENCE/exdata-data-household_power_consumption/household_power_consumption.txt"
data<-read.table(datasrc,header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
subdata<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
subMetering1 <- as.numeric(subdata$Sub_metering_1)
subMetering2 <- as.numeric(subdata$Sub_metering_2)
subMetering3 <- as.numeric(subdata$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()