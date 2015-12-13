# PLOT 3

source("read.R")

library(dplyr)
library(datasets)
library(lattice)

datos <- read() # data ready for ploting


# plot 3

inicio <- as.POSIXct(strftime("2007-02-01 00:00:00"))
final <- as.POSIXct(strftime("2007-02-03 00:00:00"))


plot(
  datos$Time,
  datos$Sub_metering_1,
  xlab = "",
  ylab = "Enery sub metering",
  xlim = c(inicio,final),
  type="l",
  xaxt="n"
)

lines(datos$Time, datos$Sub_metering_2, col="red")
lines(datos$Time, datos$Sub_metering_3, col = "blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lty = c(1,1,1))

axis.POSIXct(1, at = seq(inicio,final,by="day"),format="%a")

dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()






