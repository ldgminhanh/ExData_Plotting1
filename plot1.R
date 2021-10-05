dataset <- read.table("C:/Users/kimmi/Desktop/household_power_consumption.txt", header = T, sep = ";")
dataset$Date <- as.Date(dataset$Date, "%d/%m/%Y")
subsetdata <- dataset[dataset$Date >= "2007-02-01" & dataset$Date <= "2007-02-02", ]
subsetdata$Global_active_power <- as.numeric(subsetdata$Global_active_power)
png("plot1.png")
hist(subsetdata$Global_active_power, xlab = "Global active power (kilowatts)"  ,col = "red", main = "Global active power")
dev.off()