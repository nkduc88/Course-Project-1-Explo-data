plot2<-function(){
        data_full<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
        data<-data_full[c(which(data_full$Date %in% "1/2/2007"),which(data_full$Date %in% "2/2/2007")),]
        plot(c(1:length(data$Time)),as.numeric(data$Global_active_power)/1000,type="l",
             xlab="",ylab="Global active power [kW]",xaxt="n")
        axis(1,at=c(1,length(data$Time)/2,length(data$Time)),c("Thu","Fri","Sat"))
        dev.copy(png,"Plot2.png",width=480,height=480)
        dev.off()
}