# Plot 3

# Read in the data
dat <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
dat <- subset(dat, dat$Date == "1/2/2007" | dat$Date == "2/2/2007")

# Get the figure
png(filename = "plot3.png", width = 480, height = 480)
plot(c(1:length(dat$datetime)), dat$Sub_metering_1, main = "", type = "l", ylab = "Energy sub metering", xlab = "", axes=FALSE)
lines(c(1:length(dat$datetime)), dat$Sub_metering_2, col = "red")
lines(c(1:length(dat$datetime)), dat$Sub_metering_3, col = "blue")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()
