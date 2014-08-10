###plots active power,Voltage, energy sub metering,global reactive power  over time
 
source ('base.R')


png(filename="plot4.png", width=480, height=480, units="px")

#draw plots in 2 rows and 2 columns 
par(mfrow=c(2,2))

with(dat,{
  #active power graph
  plot(Time, Global_active_power,ylab = "Global Active Power (kilowatts)",type='l' )
  
  #voltage graph
  plot(Time, Voltage,ylab = "Voltage", xlab="datetime" ,  type='l' )
  
  #energy sub metering
  plot(Time, Sub_metering_1,ylab="Energy sub metering",xlab="",type='l' ,col='black')
  lines(Time, Sub_metering_2,col='red')
  lines(Time, Sub_metering_3,col='blue')
  legend("topright",pch=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  #global reactive power
  plot(Time, Global_reactive_power,ylab = "Global_reactive_power", xlab="datetime" ,  type='l' )
  
})

dev.off()


