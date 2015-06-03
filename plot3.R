data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors=FALSE)
sdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
wh<-numeric(2881)
for (i in 1:2881){
  wh[i]<-paste(sdata$Date[i],sdata$Time[i])
}
wh<-strptime(wh,format="%e/%m/%Y %H:%M:%S")
png("plot3.png",height=480,width=480)
with(sdata,plot(wh[1:2880],Sub_metering_1,type="l",col="black",ylab="Energy Sub Metering",xlab=""))
with(sdata,points(wh[1:2880],Sub_metering_2,type="l",col="red"))
with(sdata,points(wh[1:2880],Sub_metering_3,type="l",col="blue"))
legend("topright",col=c("black","red","blue"),pch="_",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()