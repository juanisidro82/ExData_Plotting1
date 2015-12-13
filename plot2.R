# load the data
source("loaddata.R")

plot(dataset$Global_active_power ~ dataset$Time, type = "l", xlab = "",
     ylab="Global Active Power (kilowatts)")

# Save the plot to png file
dev.copy(device=png, file="plot2.png")
dev.off()