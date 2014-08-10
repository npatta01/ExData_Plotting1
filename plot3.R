###plot sub metering oveer time and save result to plot3.png



source ('base.R')


png(filename="plot3.png", width=480, height=480, units="px")

with(dat,{
  plot(Time, Sub_metering_1,ylab="Energy sub metering",xlab="",type='l' ,col='black')
  lines(Time, Sub_metering_2,col='red')
  lines(Time, Sub_metering_3,col='blue')
  legend("topright",pch=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
})

dev.off()