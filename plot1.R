pwrConsumption <- read.csv("./data/household_power_consumption.txt", sep = ";")
pwrSubset <- subset(pwrConsumption, Date == "1/2/2007" | Date == "2/2/2007") 

globalActivePower <- as.numeric(pwrSubset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 
