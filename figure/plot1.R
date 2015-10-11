rm(list=ls(all=TRUE))
train <- read.table("R:/ExData_Plotting1/household_power_consumption.txt", header = TRUE,na.strings="?",sep=";")

train$Date1<-as.Date(train$Date,"%d/%m/%Y")
train2<-train[train$Date1=="2007-02-01" | train$Date1=="2007-02-02",]

train2$Date2<-strptime(paste(train2$Date,train2$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")

#pic1

png(file="R:/ExData_Plotting1/plot1.png")
hist(train2$Global_active_power,col="red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()


