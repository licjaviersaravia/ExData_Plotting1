
# PLOT 2

source("read.R")

library(dplyr)
library(datasets)

datos <- read() # data ready for ploting


# plot 2

inicio <- as.POSIXct(strftime("2007-02-01 00:00:00"))
final <- as.POSIXct(strftime("2007-02-03 00:00:00"))


plot(
datos$Time,
datos$Global_active_power,
xlab = "",
ylab = "Global Active Power (kilowatt)",
xlim = c(inicio,final),
type="l",
xaxt="n"
)

axis.POSIXct(1, at = seq(inicio,final,by="day"),format="%a")

dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()






