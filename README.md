# Exploratory Data Analyisis

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

    Date: Date in format dd/mm/yyyy
    Time: time in format hh:mm:ss
    Global_active_power: household global minute-averaged active power (in kilowatt)
    Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
    Voltage: minute-averaged voltage (in volt)
    Global_intensity: household global minute-averaged current intensity (in ampere)
    Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
    Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
    Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.


## Load the data

	The first step is obtain the data from the website and load it, and unzip it to have the txt file ready for
	our use.
	
	Then we will need to preprocess it such that we extract the data for the dates 2007-02-01 and 
	2007-02-02
	
	THen we will need to convert the Date and Time variables using the as.Date() function.
	Also we will need to convert the differnt variables used for plotting into numeric.

#Plot 1

	Create a historam using the hist() funtion with the histogram being red color. 
	The x axis has the Global Active Power in kwatts and the y axis by default has frequency.

#Plot 2

	Create a line plot using the plot() function and using type = 'l' for a line plot.
	The x axis has the 3 days that we are plottng for and the y axis has Global Active Power in kwatts
	
#Plot 3

	Create 3 line plots using the plot() and the lines() function and using type = 'l' for a line plot.
	Also use different colors in the arguments to identify the different variables. This graph also has
	a legend in teh top right corners created by the legend funtion.
	The x axis has the 3 days that we are plottng for and the y axis has Enerygy sub metering

#Plot4

	Create 4 line plots using the plot() side by side, with using the 2 rows and 2 columns arguments to the 
	par function.
	The first plot has x axis has the 3 days with no label that we are plottng for and the y axis has Global Active power.
	The second plot has x axis has the datetime label that we are plottng for and the y axis has Voltage.
	The third plot has x axis has the 3 days with no label that we are plottng for and the y axis has Energy submetering with its legend.
	The fourth plot has x axis has the datetime label that we are plottng for and the y axis has Global Reactive power.
	
After we plot all these graphs we copy them to a .png file of 480*480 and once the copy is complete we close the connection.


	

	
