plot4<-function(){
        data_full<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
        data<-data_full[c(which(data_full$Date %in% "1/2/2007"),which(data_full$Date %in% "2/2/2007")),]
        
        par(mfrow=c(2,2))
        
        print(par("mar"))
        
        plot(c(1:length(data$Time)),as.numeric(data$Global_active_power)/1000,type="l",
             xlab="",ylab="Global active power [kW]",xaxt="n")
        axis(1,at=c(1,length(data$Time)/2,length(data$Time)),c("Thu","Fri","Sat"))
        
        plot(c(1:length(data$Time)),as.numeric(data$Voltage),type="l",
             xlab="datatime",ylab="Global active power [kW]",xaxt="n")
        axis(1,at=c(1,length(data$Time)/2,length(data$Time)),c("Thu","Fri","Sat"))
        
        plot(c(1:length(data$Time)),as.numeric(data$Sub_metering_1),type="l",
             xlab="",ylab="Energy sub metering",xaxt="n",col="red")
        points(c(1:length(data$Time)),as.numeric(data$Sub_metering_2),type="l",
               xlab="",ylab="Energy sub metering",xaxt="n",col="gray")
        points(c(1:length(data$Time)),as.numeric(data$Sub_metering_3),type="l",
               xlab="",ylab="Energy sub metering",xaxt="n",col="blue")
        legend("topright",pch=c(NA,NA,NA),col=c("red","gray","blue"),lty=c(1,1,1),
               legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        axis(1,at=c(1,length(data$Time)/2,length(data$Time)),c("Thu","Fri","Sat"))
        
        plot(c(1:length(data$Time)),as.numeric(data$Global_reactive_power)/1000,type="l",
             xlab="datatime",ylab="Global reactive power [kW]",xaxt="n")
        axis(1,at=c(1,length(data$Time)/2,length(data$Time)),c("Thu","Fri","Sat"))
        
        dev.copy(png,"Plot4.png",width=480,height=480)
        dev.off()
}