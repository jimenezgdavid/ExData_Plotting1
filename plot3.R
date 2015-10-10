par(mar=c(2.2,4.2,3,1),mfrow=c(1,1))
plot(hpcdata$Time,
     hpcdata$Sub_metering_1,
     ylab="Energy sub metering",
     xlab="",
     cex.axis=0.75,
     cex.main=0.75,
     cex.lab=0.75,
     type="n"
)

points(hpcdata$Time,hpcdata$Sub_metering_1, type="l")
points(hpcdata$Time,hpcdata$Sub_metering_2, col="red", type="l")
points(hpcdata$Time,hpcdata$Sub_metering_3, col="blue", type="l")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1:1, cex=0.60)

#Copying the plot to png device
#https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/png.html
dev.copy(png, 
         file="plot3.png", 
         height=480, 
         width=480,
         pointsize=11)
dev.off()