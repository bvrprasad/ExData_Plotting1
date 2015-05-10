library(dplyr)

#
# This file contains the generic function getdata() that reads
# the "household_power_consumption.txt and filters out the contents
# for 01.Feb.2007 and 02.Feb.2007
# This function is called from all the plot[1-4].R files
#

getdata <- function() { 
## Read the complete file as table
dataset <- read.table("../../exdata/household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?", stringsAsFactors = FALSE)

## grep for the dates we are interested in
fil <- grep("^[12]/2/2007", dataset$Date)

## Just extract the subset we are interested in
ds <- dataset[c(fil),]

## Create a DateTime variable in the dataset 'ds'
dt <- paste(ds$Date, ds$Time)
dtc <- strptime(dt, format = "%d/%m/%Y %H:%M:%S")
ds$DateTime <- dtc

## A short examination of the data
str(ds)

# return the dataset
ds
}