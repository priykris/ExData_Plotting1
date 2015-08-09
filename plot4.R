
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

#Read and the alter the date column to suit the required format

	data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
	datedata <- data[(data$Date == "2007-02-01") | (data$Date == "2007-02-02"),]
	datedata$Global_active_power <- as.numeric(as.character(datedata$Global_active_power))
	datedata <- transform(datedata, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
	datedata$Sub_metering_1 <- as.numeric(as.character(datedata$Sub_metering_1))
	datedata$Sub_metering_2 <- as.numeric(as.character(datedata$Sub_metering_2))
	datedata$Sub_metering_3 <- as.numeric(as.character(datedata$Sub_metering_3))
	datedata$Voltage <- as.numeric(as.character(datedata$Voltage))
	datedata$Global_reactive_power <- as.numeric(as.character(datedata$Global_reactive_power))

#Plot4
	##Creating rows for placing the diff graphs	
	par(mfrow = c(2,2))
	##Plot 1
	plot(datedata$timestamp, datedata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
	##Plot 2
	plot(datedata$timestamp, datedata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
	##Plot 3
	plot(datedata$timestamp, datedata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub Metering")
	lines(datedata$timestamp, datedata$Sub_metering_2, col="red")
	lines(datedata$timestamp, datedata$Sub_metering_3, col="blue")
	legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1 ","Sub_metering_2 ","Sub_metering_3 "), 
	lty =c(1,1), bty = "n", lwd = c(1,1), cex = .5)
	##Plot 4
	plot(datedata$timestamp, datedata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Reactive Power")
	
	dev.copy(png, file="plot4.png", width = 480, height = 480)
	dev.off()





