# PLOT 1

source("read.R")

library(dplyr)
library(datasets) 

datos <- read() # data ready for ploting


# plot 1

hist(as.numeric(datos$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()


