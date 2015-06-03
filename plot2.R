data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors=FALSE)
sdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
wh<-numeric(2881)
for (i in 1:2881){
  wh[i]<-paste(sdata$Date[i],sdata$Time[i])
}
wh<-strptime(wh,format="%e/%m/%Y %H:%M:%S")
png("plot2.png",height=480,width=480)
plot(wh[1:2880],sdata$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()