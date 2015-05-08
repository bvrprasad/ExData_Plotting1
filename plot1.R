source("getdata.R")
ds <- getdata();

# Plot-1
hist(ds$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()
