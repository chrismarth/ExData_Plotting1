data <- read.table("household_power_consumption_abbrv.txt", sep=";", header = TRUE)
fulldate <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2,2))
plot(fulldate, data$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="")
plot(fulldate, data$Voltage, type='l', xlab="datetime", ylab="Voltage")
plot(fulldate, data$Sub_metering_1, col="black", type="l", ylab="Energy sub metring", xlab="")
lines(fulldate, data$Sub_metering_2, col="red", type="l")
lines(fulldate, data$Sub_metering_3, col="blue", type="l")
legend("topright", xjust=1, bty="n",lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "))
plot(fulldate, data$Global_reactive_power, type='l', ylab="Global_reactive_power", xlab="datetime")

dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()