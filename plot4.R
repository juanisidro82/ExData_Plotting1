# load the data
source("loaddata.R")

# specify that the show 2x2 graphics
par(mfrow=c(2,2))
plot(dataset$Global_active_power ~ dataset$Time, type = "l", xlab = "",
     ylab="Global Active Power (kilowatts)")

plot(dataset$Voltage ~ dataset$Time, type = "l", xlab = "datetime",
     ylab="Voltage")

# Plot the course
plot(dataset$Sub_metering_1 ~ dataset$Time, type = "l", xlab = "",
     ylab="Energy sub meeting")
lines(dataset$Sub_metering_2 ~ dataset$Time, col="red")
lines(dataset$Sub_metering_3 ~ dataset$Time, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1)

plot(dataset$Global_reactive_power ~ dataset$Time, type = "l", xlab = "datetime",
     ylab="Global Active Power (kilowatts)")

# Save the plot to png file
dev.copy(device=png, file="plot4.png", width=600, height=600)
dev.off()
