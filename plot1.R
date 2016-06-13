ds = "./household_power_consumption.txt"
dataset= read.table(ds,header=TRUE, sep=";",dec=".")
subset=dataset[dataset$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", ylab = 'Frequency',xlab="Global Active Power (kilowatts)")
dev.off()