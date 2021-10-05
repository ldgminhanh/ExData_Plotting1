dataset <- read.table("C:/Users/kimmi/Desktop/household_power_consumption.txt", header = T, sep = ";")
dataset$Date <- as.Date(dataset$Date, "%d/%m/%Y")
subsetdata <- dataset[dataset$Date >= "2007-02-01" & dataset$Date <= "2007-02-02", ]
png("plot2.png")
subsetdata$datetime <- as.POSIXct(paste(subsetdata$Date, subsetdata$Time), format = "%Y-%m-%d %H:%M:%S")
with(subsetdata, plot(datetime, Global_active_power, ylab = "Global Active Power (kilowatts)", type = "l"))
dev.off()