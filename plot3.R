# load the data
source("loaddata.R")

# Plot the course
plot(dataset$Sub_metering_1 ~ dataset$Time, type = "l", xlab = "",
     ylab="Energy sub meeting")
lines(dataset$Sub_metering_2 ~ dataset$Time, col="red")
lines(dataset$Sub_metering_3 ~ dataset$Time, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1)

# Save the plot to png file
dev.copy(device=png, file="plot3.png", width=600, height=600)
dev.off()