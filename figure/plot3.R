rm(list=ls(all=TRUE))
train <- read.table("R:/ExData_Plotting1/household_power_consumption.txt", header = TRUE,na.strings="?",sep=";")

train$Date1<-as.Date(train$Date,"%d/%m/%Y")
train2<-train[train$Date1=="2007-02-01" | train$Date1=="2007-02-02",]

train2$Date2<-strptime(paste(train2$Date,train2$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")

#pic1

png(file="R:/ExData_Plotting1/plot3.png")
#pic3
plot(train2$Date2,train2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(train2$Date2,train2$Sub_metering_2,type="l",col="red")
lines(train2$Date2,train2$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=1:3,lwd = 1)
dev.off()