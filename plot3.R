pwrConsumption <- read.csv("./data/household_power_consumption.txt", sep = ";")
pwrSubset <- subset(pwrConsumption, Date == "1/2/2007" | Date == "2/2/2007") 

gap.numeric <- as.numeric(pwrSubset$Global_active_power)
pwrSubset$Sub_metering_1 <- as.numeric(pwrSubset$Sub_metering_1)
pwrSubset$Sub_metering_2 <- as.numeric(pwrSubset$Sub_metering_2)
pwrSubset$Sub_metering_3 <- as.numeric(pwrSubset$Sub_metering_3)

dateTime <- strptime(paste(pwrSubset$Date, pwrSubset$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480)

plot(dateTime, pwrSubset$Sub_metering_1, type = "l", xlab="", ylab = "Globale Active Power (kilowatts")
lines(dateTime, pwrSubset$Sub_metering_2, col="Red")
lines(dateTime, pwrSubset$Sub_metering_3, col="Blue")
legend("topright", c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"),col = c("Black","Red", "Blue"), lty = 1, lwd = 2 )

dev.off()
