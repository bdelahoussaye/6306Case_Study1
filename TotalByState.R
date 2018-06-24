######################################################################
#Total Breweries by state
# Writen for Doing Data Science MidTerm  Summer 2018
# Author(s): "Brandon de la Houssaya, Steven Cocke, Terry Johnson"
# Input files are "breweries.csv" and "beers.csv"
#
# Computes the total breweries by state in sorted order
# displays top 6 and barchart by state
# 
# Updated Log
# 6/13/2018    TJ  Initial
# 6/23/2018    TJ Added Bar chart
#####################################################################
# Read in the breweries data
breweries <- read.csv("breweries.csv", header  = TRUE)
# compile the number by state using the aggregate function in R
breweries.by.State <- aggregate( rep(1,dim(breweries)[1]), by=list(breweries$State), sum)
# Update the column names to something more meaningful
colnames(breweries.by.State) <- c("State","Number")
# Sort by state from largest to smallest number of breweries
sortedBreweriesByState <- breweries.by.State[order(breweries.by.State$Number, decreasing = TRUE),]
# Display the Breweries by States in descending order top 6
head(sortedBreweriesByState,6)
# DIsplay as BarChart for easier viewing of a large data set
barplot(sortedBreweriesByState[,2], beside = TRUE, names.arg = sortedBreweriesByState$State,ylab="# Breweries", main = "Brweries By State", xlab = "State", yxcfghjmnlim=c(0,50))
