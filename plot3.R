colNames = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
power = read.table('household_power_consumption.txt',header=TRUE,sep=';',skip=66636,nrows=2880,col.names = colNames)
png(filename = "plot3.png",width = 480, height = 480)
with(power,{
  plot(Sub_metering_1,type='l',xaxt='n',ylab= 'Energy sub metering',xlab='')
  lines(Sub_metering_2,type='l',xaxt='n',ylab= 'Energy sub metering',xlab='',col='red')
  lines(Sub_metering_3,type='l',xaxt='n',ylab= 'Energy sub metering',xlab='',col='blue')
  legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),fill=c(1,'red','blue'))
})






dev.off()