columnNames = colnames(read.table("household_power_consumption.txt", sep = ";",  nrow = 1, header = TRUE))
df <- read.csv("hpc_short.txt", header = FALSE, sep = ";")
colnames(df)<- columnNames


##Plot2
datetime <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png( "plot2.png", width = 480, height = 480)
with(df, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)") )
dev.off()