# Plot 2

# Read in the data
dat <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
dat <- subset(dat, dat$Date == "1/2/2007" | dat$Date == "2/2/2007")

# convert to date/time
dat$datetime <- strptime(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S")
dat$datetime <- format(dat$datetime, format = "%a %H:%M:%S")

# Get the figure
png(filename = "plot2.png", width = 480, height = 480)
plot(c(1:length(dat$datetime)), dat$Global_active_power, main = "", type = "l", ylab = "Global Active Power (kilowatts)", xlab = "", axes=FALSE)
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()
dev.off()
