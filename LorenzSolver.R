# Model specification

rm(list = ls())
graphics.off()
source("clear.R")

# set working directory
library(deSolve)
source("Lorenz.R")
clc()


# Model Parameters
parameters <- c(a = -8/3,
                b = -10,
                c = 28)

# State Variables
state <- c(X = 1,
           Y = 1,
           Z = 1)

# Time Specification
times <- seq (0, 100, by = 0.01)


# Model Integration

out <- ode(y = state, times = times, func = Lorenz, parms = parameters)
head(out)

#Plotting Results
png(filename = "Lorenz.png", width = 480, height = 480, units = "px")
par(oma = c(0, 0, 3, 0))
plot(out, xlab = "time", ylab = "-")
plot(out[, "X"], out[, "Z"], pch = ".")
mtext(outer = TRUE, side = 3, "Lorenz model", cex = 1.5)
dev.off()