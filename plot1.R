
## Getting the data

# url

	fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#file URL

	fileUrl <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# zipfile

	zipfile <- "./exdata%2Fdata%2Fhousehold_power_consumption.zip"
# directory

	dirfile <- "./exdata_data_household_power_consumption"
# Download the file if it doesnt exist
	if(file.exists(zipfile) ==FALSE) {
		download.file(fileUrl, destfile = zipfile)
	}
#Unzip the file
	if(file.exists(dirfile) == FALSE){
	unzip(zipfile)
	}
## Reading the required data based on the dates mentioned to plot the graph

# Read the whole file into a variable first
	
	data <- read.table ("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
	datedata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
# print (datedata)
	date <- as.Date(datedata$Date, format = "%d/%m/%Y")
	datedata$Global_active_power <- as.numeric(as.character(datedata$Global_active_power))
	
#Plot1
	hist(datedata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kwatts)")
	
	dev.copy(png, file="plot1.png", width = 480, height = 480)
	dev.off()





