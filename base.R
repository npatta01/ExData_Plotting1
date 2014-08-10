
###Base script that reads the power consumption data into a datframe and puts in the global namespace a variable dat that contains data
### fro Feb 1 and Feb 2


#Electric power consuimption from http://archive.ics.uci.edu/ml/



#data from the attached zip file
dat<-read.csv('exdata-data-household_power_consumption/household_power_consumption.txt',sep = ';',na.strings="?")


#convert to date time
dat$Time <- strptime(paste(dat$Date,dat$Time), "%d/%m/%Y %H:%M:%S")

#convert date
dat$Date <- as.Date(dat$Date,"%d/%m/%Y")

#feb 1 and feb 2 date 
DATE1 <- as.Date("2007-02-01","%Y-%m-%d")
DATE2 <- as.Date("2007-02-02","%Y-%m-%d")

#filter the data for between those dates
dat<-dat[dat$Date  >= DATE1 & dat$Date <= DATE2,]