source("getdata.R")
ds <- getdata();

# Plot-2
plot(ds$DateTime, ds$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()
