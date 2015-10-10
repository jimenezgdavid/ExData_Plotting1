cex=0.7
bor=4
par(mar=c(bor,bor,bor,2),mfrow=c(2,2))
#Plotting plot2

plot(hpcdata$Time,
     hpcdata$Global_active_power,
     ylab="Global Active Power",
     xlab="",
     cex.axis=cex,
     cex.main=cex,
     cex.lab=cex,
     type="l"
)
#Ploting plot voltage
plot(hpcdata$Time,
     hpcdata$Voltage,
     ylab="Voltage",
     xlab="datetime",
     cex.axis=cex,
     cex.main=cex,
     cex.lab=cex,
     type="l"
)
##Plotting plot3
plot(hpcdata$Time,
     hpcdata$Sub_metering_1,
     ylab="Energy sub metering",
     xlab="",
     cex.axis=cex,
     cex.main=cex,
     cex.lab=cex,
     type="n"
)

points(hpcdata$Time,hpcdata$Sub_metering_1, type="s")
points(hpcdata$Time,hpcdata$Sub_metering_2, col="red", type="s")
points(hpcdata$Time,hpcdata$Sub_metering_3, col="blue", type="s")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
       col=c("black","red","blue"), lty=1:1, bty="n",  cex=0.5)

##Plotting Global_reactive_power
plot(hpcdata$Time,
     hpcdata$Global_reactive_power,
     ylab="Global_reactive_power",
     xlab="datetime",
     cex.axis=cex,
     cex.main=cex,
     cex.lab=cex,
     type="l"
)

#Copying the plot to png device
#https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/png.html
dev.copy(png, 
         file="plot4.png", 
         height=480, 
         width=480,
         pointsize=11)
dev.off()