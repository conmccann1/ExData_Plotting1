colNames = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
power = read.table('household_power_consumption.txt',header=TRUE,sep=';',skip=66636,nrows=2880,col.names = colNames)
png(filename = "plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))
with(power,{
  plot(Global_active_power,type='l',xaxt='n',ylab= 'Global Active Power',xlab='')
  axis(1,at=c(1,1450,2900),labels=c('Thu','Fri','Sat'))
  
  plot(Voltage,type='l',xaxt='n',ylab='Voltage',xlab='datetime')
  axis(1,at=c(1,1450,2900),labels=c('Thu','Fri','Sat'))
  
  plot(Sub_metering_1,type='l',xaxt='n',ylab= 'Energy sub metering',xlab='')
  lines(Sub_metering_2,type='l',xaxt='n',ylab= 'Energy sub metering',xlab='',col='red')
  lines(Sub_metering_3,type='l',xaxt='n',ylab= 'Energy sub metering',xlab='',col='blue')
  axis(1,at=c(1,1450,2900),labels=c('Thu','Fri','Sat'))
  legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),fill=c(1,'red','blue'),bty='n')
  
  plot(Global_reactive_power,type='l',xaxt='n',ylab='Global_reactive_power',xlab='datetime')
  axis(1,at=c(1,1450,2900),labels=c('Thu','Fri','Sat'))
})





dev.off()
