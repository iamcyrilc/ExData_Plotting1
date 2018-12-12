pwrConsumption <- read.csv("./data/household_power_consumption.txt", sep = ";")
pwrSubset <- subset(pwrConsumption, Date == "1/2/2007" | Date == "2/2/2007") 

gap.numeric <- as.numeric(pwrSubset$Global_active_power)

dateTime <- strptime(paste(pwrSubset$Date, pwrSubset$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)
plot(dateTime, gap.numeric , type = "l", ylab = "Global Active Power (Kilowatts)")
dev.off()