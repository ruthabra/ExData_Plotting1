png("plot2.png")
hpc<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings=c("?", "NA"))
hpc$Date<-as.Date(hpc$Date, "%d/%m/%Y")
h<-hpc[hpc$Date >= as.Date("2007-02-01") & hpc$Date <= as.Date("2007-02-02"),]
h$dt<-as.POSIXct(paste(h$Date, h$Time), format="%Y-%m-%d %H:%M:%S")
plot(h$dt, h$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
