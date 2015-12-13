# load the data
source("loaddata.R")

# I from of the Mexico, i need specify that the days show in Englis
Sys.setlocale("LC_TIME", "C")

plot(dataset$Global_active_power ~ dataset$Time, type = "l", xlab = "",
     ylab="Global Active Power (kilowatts)")

# Save the plot to png file
dev.copy(device=png, file="plot2.png")
dev.off()