columnNames = colnames(read.table("household_power_consumption.txt", sep = ";",  nrow = 1, header = TRUE))
df <- read.csv("hpc_short.txt", header = FALSE, sep = ";")
colnames(df)<- columnNames


##Plot 1
png( "plot1.png", width = 480, height = 480)
with(df, hist(Global_active_power, col = "red" , main = "Global Active Power", xlab = "Global Active Power (kilowatts)") )
dev.off()