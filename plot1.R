datasrc<-"I:/basam/Education/JHU DATA SCIENCE/exdata-data-household_power_consumption/household_power_consumption.txt"
data<-read.table(datasrc,header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
subdata<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
globalActivePower<-as.numeric(subdata$Global_active_power)
png("plot1.png",width = 480,height = 480)
hist(globalActivePower,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
