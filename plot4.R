# PLOT 4

source("read.R")

library(dplyr)
library(datasets)
library(lattice)


datos <- read() # data ready for ploting

inicio <- as.POSIXct(strftime("2007-02-01 00:00:00"))
final <- as.POSIXct(strftime("2007-02-03 00:00:00"))



par(mfrow = c(2,2), mar = c(5,4,2,1))

# plot A  ------------------------

plot(
  datos$Time,
  datos$Global_active_power,
  xlab = "",
  ylab = "Global Active Power",
  xlim = c(inicio,final),
  type="l",
  xaxt="n"
)
axis.POSIXct(1, at = seq(inicio,final,by="day"),format="%a")

# plot B  ------------------------

plot(
  datos$Time,
  datos$Voltage,
  ylab = "Voltage",
  xlab = "datetime",
  xlim = c(inicio,final),
  type="l",
  xaxt="n"
)
axis.POSIXct(1, at = seq(inicio,final,by="day"),format="%a")


# plot C  ------------------------

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

# plot D  ------------------------

plot(
  datos$Time,
  datos$Global_reactive_power,
  xlab = "datetime",
  ylab = "Global_reactive_power",
  xlim = c(inicio,final),
  type="l",
  xaxt="n"
)

# ------------------------------


dev.copy(png,file="plot4.png",width=480,height=480)
dev.off()






