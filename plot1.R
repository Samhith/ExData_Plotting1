data<-read.table("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors=FALSE)
sdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
names(sdata)[3]<-"GAP"
sdata$GAP<-as.numeric(sdata$GAP)
png("plot1.png",height=480,width=480)
hist(sdata$GAP,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()