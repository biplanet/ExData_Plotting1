ds = "./household_power_consumption.txt"
dataset= read.table(ds,header=TRUE, sep=";",dec=".")
subset=dataset[dataset$Date %in% c("1/2/2007","2/2/2007") ,]
dateformat = strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateformat,globalActivePower, type="l", main="Global Active Power", xlab="", ylab = "Global Active Power (kilowatts)")
dev.off()