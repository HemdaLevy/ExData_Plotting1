columnNames = colnames(read.table("household_power_consumption.txt", sep = ";",  nrow = 1, header = TRUE))
df <- read.csv("hpc_short.txt", header = FALSE, sep = ";")
colnames(df)<- columnNames


##plot3
png( "plot3.png", width = 480, height = 480)

datetime <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
with(df, plot(datetime, Sub_metering_1, type="n", xlab = "", ylab = "Energy Sub Metering"))
with(df, points(datetime, Sub_metering_1, col="black", type="l"))
with(df, points(datetime, Sub_metering_2, col="red", type="l"))
with(df, points(datetime, Sub_metering_3, col="blue", type="l"))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()