# Plot 4

# Read in the data
dat <- read.table(file = "household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
dat <- subset(dat, dat$Date == "1/2/2007" | dat$Date == "2/2/2007")

# Get the figure
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
# plot 1
plot(c(1:length(dat$datetime)), dat$Global_active_power, main = "", type = "l", ylab = "Global Active Power", xlab = "", axes=FALSE)
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()
# plot 2
plot(c(1:length(dat$datetime)), dat$Voltage, main = "", type = "l", ylab = "Voltage", xlab = "datetime", axes=FALSE)
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()
# plot 3
plot(c(1:length(dat$datetime)), dat$Sub_metering_1, main = "", type = "l", ylab = "Energy sub metering", xlab = "", axes=FALSE)
lines(c(1:length(dat$datetime)), dat$Sub_metering_2, col = "red")
lines(c(1:length(dat$datetime)), dat$Sub_metering_3, col = "blue")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1, bty = "n")
# plot 4
plot(c(1:length(dat$datetime)), dat$Global_reactive_power, main = "", type = "l", ylab = "Global_reactive_power", xlab = "datetime", axes=FALSE)
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()
dev.off()
