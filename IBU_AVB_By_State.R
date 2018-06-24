######################################################################
#Total Breweries by state
# Writen for Doing Data Science MidTerm  Summer 2018
# Authors: Terry Johnson, Brandon de la Houssaya, Steven Cocke
# Input files are "breweries.csv" and "beers.csv"
#
# Computes the total breweries by state in sorted order
# displays top 6 and barchart by state
# 
# Updated Log
# 6/13/2018      Initial
# 6/23/2018    TJ Added Bar chart
#####################################################################
BeerBreweriesDF <-na.omit(BeerBreweries)
ByState <- aggregate(BeerBreweriesDF[,4:5], list(BeerBreweriesDF$State), median)
barplot(ByState[,2], beside = TRUE, names.arg = ByState$Group.1,xlab="ABV", main = "Median ABV by State", ylab = "State")
barplot(ByState[,3], beside = TRUE, names.arg = ByState$Group.1,xlab="IBU", main = "Median IBU by State", ylab = "State")