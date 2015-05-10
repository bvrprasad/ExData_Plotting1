source("getdata.R")
ds <- getdata();

# Plot-4
png("plot4.png")
par(mfrow = c(2,2))
plot(ds$DateTime, ds$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(ds$DateTime, ds$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
with(ds, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
with(ds, points(DateTime, Sub_metering_2, col = "red", type = "l"))
with(ds, points(DateTime, Sub_metering_3, col = "blue", type = "l"))
legend("topright", pch = c(NA,NA,NA), cex=0.7, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1) )
plot(ds$DateTime, ds$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
#dev.copy(png, file = "plot4.png")
dev.off()

