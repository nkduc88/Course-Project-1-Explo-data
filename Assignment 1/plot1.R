plot1<-function(){
        
        data_full<-read.table("household_power_consumption.txt",sep=";",header=TRUE)
        data<-data_full[c(which(data_full$Date %in% "1/2/2007"),which(data_full$Date %in% "2/2/2007")),]
        hist(as.numeric(data$Global_active_power)/1000,
             main="Global Active Power",col="red",xlab="Global Active Power [kW]")
        dev.copy(png,"Plot1.png",width=480,height=480)
        dev.off()
        
        
}