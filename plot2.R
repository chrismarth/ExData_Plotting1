data <- read.table("household_power_consumption_abbrv.txt", sep=";", header = TRUE)
fulldate <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S") # Concatenate the date and time
plot(fulldate, data$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
