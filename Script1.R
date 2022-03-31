# The first plot

#Reading, naming and sub-setting the power consumption data file 
power <- read.table("C:/Users/200061/OneDrive - Emirates Steel Industries/Desktop/Firstproj/EDA project1/exdata_data_household_power_consumption/household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#calling the basic plot function to plot the graph
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# giving the graph the title
title(main="Global Active Power")

