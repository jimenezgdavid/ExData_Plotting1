#this script makes the Plot 1
par(mar=c(4.2,4.2,3,0), mfrow=c(1,1))
hist(hpcdata$Global_active_power, 
     main= "Global Active Power", 
     ylab="Frequency", 
     xlab="Global Active Power (kilowatts)", 
     col="red",
     cex.axis=0.75,
     cex.main=0.75,
     cex.lab=0.75
     )

#Copying the plot to png device
#https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/png.html
dev.copy(png, 
         file="plot1.png", 
         height=480, 
         width=480,
         pointsize=11)
dev.off()
