###plot active power frequency and save result to plot1.png


source ('base.R')


png(filename="plot1.png", width=480, height=480, units="px")

hist(dat$Global_active_power,col="red", main = "Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()
