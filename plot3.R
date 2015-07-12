data <- read.table("household_power_consumption_abbrv.txt", sep=";", header = TRUE)
fulldate <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
plot(fulldate, data$Sub_metering_1, col="black", type="l", ylab="Energy sub metring", xlab="")
lines(fulldate, data$Sub_metering_2, col="red", type="l")
lines(fulldate, data$Sub_metering_3, col="blue", type="l")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1 ", "Sub_metering_2 ", "Sub_metering_3 "))

dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
