#this script makes the Plot 2
par(mar=c(2.2,4.2,3,1),mfrow=c(1,1))
plot(hpcdata$Time,
     hpcdata$Global_active_power,
     ylab="Global Active Power (kilowatts)",
     xlab="",
     cex.axis=0.75,
     cex.main=0.75,
     cex.lab=0.75,
     type="l"
     )


#Copying the plot to png device
#https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/png.html
dev.copy(png, 
         file="plot2.png", 
         height=480, 
         width=480,
         pointsize=11)
dev.off()