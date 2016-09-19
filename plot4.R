columnNames = colnames(read.table("household_power_consumption.txt", sep = ";",  nrow = 1, header = TRUE))
df <- read.csv("hpc_short.txt", header = FALSE, sep = ";")
colnames(df)<- columnNames


##plot4
png( "plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

with(df, plot(datetime, Global_active_power, main = "", xlab = "",  ylab = "Global Active Power" , type="l") )

with(df, plot(datetime, Voltage, type="l", xlab="datetime", ylab="Voltage") )

with(df, plot(datetime, Sub_metering_1, type="n", xlab = "", ylab = "Energy Sub Metering"))
with(df, points(datetime, Sub_metering_1, col="black", type="l"))
with(df, points(datetime, Sub_metering_2, col="red", type="l"))
with(df, points(datetime, Sub_metering_3, col="blue", type="l"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty = "n")

with(df, plot(datetime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power") )

dev.off()