################################################################################
## script for load data                                         ################
################################################################################
# load library lubridate for convert string data to Date Class
if(!library(lubridate, logical.return = TRUE)) {
    # It didn't exist, so install the package, and then load it
    install.packages('lubridate')
    library(lubridate)
}

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


