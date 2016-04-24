# Plot 1

# Read in the data
dat <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
dat <- subset(dat, dat$Date == "1/2/2007" | dat$Date == "2/2/2007")

# Get the figure
png(filename = "plot1.png", width = 480, height = 480)
hist(dat$Global_active_power, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
