png("plot1.png")
hpc<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings=c("?", "NA"))
hpc$Date<-as.Date(hpc$Date, "%d/%m/%Y")
h<-hpc[hpc$Date >= as.Date("2007-02-01") & hpc$Date <= as.Date("2007-02-02"),]
hist(h$Global_active_power, breaks=16, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

