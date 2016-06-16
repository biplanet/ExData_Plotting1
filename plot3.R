ds = "./household_power_consumption.txt"
dataset= read.table(ds,header=TRUE, sep=";",dec=".")
subset=dataset[dataset$Date %in% c("1/2/2007","2/2/2007") ,]
dateformat = strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Sub_metering_1 <- as.character(subset$Sub_metering_1)
Sub_metering_2 <- as.character(subset$Sub_metering_2)
Sub_metering_3 <- as.character(subset$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(dateformat,Sub_metering_1, type="l", xlab="", ylab = "Energy Sub Metering")
lines(dateformat, Sub_metering_2, type="l", col="red")
lines(dateformat, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()