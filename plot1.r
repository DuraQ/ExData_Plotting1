# Read the table
h <- read.table("household_power_consumption.txt", header=TRUE, sep= ";",stringsAsFactors=FALSE, na.strings="?")

# make subset of the relevant dates
hsub <- subset(h, h$Date == "1/2/2007" | h$Date == "2/2/2007")

png("plot1.png")
hist(hsub$Global_active_power, xlab = "Global Active Power (kilowatts)",main = "Global Active Power",col = "red")
dev.off()
