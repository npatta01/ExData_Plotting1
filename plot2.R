###plot active power over time and save result to plot2.png

source ('base.R')


png(filename="plot2.png", width=480, height=480, units="px")
with(dat,plot(Time, Global_active_power,xlab="",ylab = "Global Active Power (kilowatts)",type='l' ))
dev.off()



