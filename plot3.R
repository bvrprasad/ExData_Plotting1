source("getdata.R")
ds <- getdata();

# Plot-3
png("plot3.png")
with(ds, plot(DateTime, Sub_metering_1, cex = 0.7, type = "l", xlab = "", ylab = "Energy sub metering"))
with(ds, points(DateTime, Sub_metering_2, col = "red", type = "l"))
with(ds, points(DateTime, Sub_metering_3, col = "blue", type = "l"))
legend("topright", pch = c(NA,NA,NA), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1) )
#dev.copy(png, file = "plot3.png")
dev.off()
