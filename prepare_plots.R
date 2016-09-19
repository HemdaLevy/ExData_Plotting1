
library(lubridate)
con = file("household_power_consumption.txt", "r")

line <- readLines(con, n = 1)
dataLines <- vector()
dateRange <- seq(ymd("2007/2/01"), ymd("2007/2/2"), by = "day")
## 2007-02-01 and 2007-02-02
i = 0
while ( length (line <- readLines(con, n = 1)) > 0 ) 
{
  
  lineValues <- strsplit(line, ";")
  if (dmy(lineValues [[1]][1]) %in% dateRange)
  {
    dataLines <- c(dataLines, line) 
  }
  if (dmy(lineValues [[1]][1]) > dateRange[length(dateRange)])
      break;
  print(line)
}
close(con)
write(dataLines, "hpc_short.txt")

