################################################################################
## script for load data                                         ################
################################################################################
# load library lubridate for convert string data to Date Class
if(!library(lubridate, logical.return = TRUE)) {
    # It didn't exist, so install the package, and then load it
    install.packages('lubridate')
    library(lubridate)
}

# I from of the Mexico, i need specify that the days show in English
Sys.setlocale("LC_TIME", "C")

entiredataset <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
## Apply subset that include only neccesary data alone
dataset <- subset(entiredataset, Date =="1/2/2007" | Date == "2/2/2007")
# convert the column variable Global active power to numeric
dataset$Global_active_power <- as.character(dataset$Global_active_power)
dataset$Global_active_power <- as.numeric(dataset$Global_active_power)

# convert column Date to date class
dataset$Date <- as.character(dataset$Date)
dataset$Time <- as.character(dataset$Time)
dataset$Time <- paste(dataset$Date, dataset$Time)
dataset$Time <- dmy_hms(dataset$Time)

# convert the columns variables  Sub_metering_1, Sub_metering_2, Sub_metering_3 
#to numeric
dataset$Sub_metering_1 <- as.character(dataset$Sub_metering_1)
dataset$Sub_metering_2 <- as.character(dataset$Sub_metering_2)
dataset$Sub_metering_3 <- as.character(dataset$Sub_metering_3)

dataset$Sub_metering_1 <- as.numeric(dataset$Sub_metering_1)
dataset$Sub_metering_2 <- as.numeric(dataset$Sub_metering_2)
dataset$Sub_metering_3 <- as.numeric(dataset$Sub_metering_3)

# Convert the column variable voltage to numeric
dataset$Voltage <- as.character(dataset$Voltage)
dataset$Voltage <- as.numeric(dataset$Voltage)

# Convert the column variable Global_reactive_power to numeric
dataset$Global_reactive_power <- as.character(dataset$Global_reactive_power)
dataset$Global_reactive_power <- as.numeric(dataset$Global_reactive_power)
