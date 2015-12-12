# load the data
source("loaddata.R")

# plot the histogram
hist(dataset$Global_active_power, col="Red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

# Save the histogram to png file
dev.copy(device=png, file="plot1.png")
dev.off()