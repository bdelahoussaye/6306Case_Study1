######################################################################
# ABV and IBU by state
# Writen for Doing Data Science MidTerm  Summer 2018
# Author(s): "Brandon de la Houssaya, Steven Cocke, Terry Johnson"
# Input files are "breweries.csv" and "beers.csv"
#
# Computes total IBU and IBV by State
#
# Updated Log
# 6/24/2018      Initial
#####################################################################
Beer <- read.csv(file="Beers.csv", header=TRUE, sep=",")
Breweries <-read.csv(file="Breweries.csv", header=TRUE, sep=",")

BeerBreweries <- merge(Beer, Breweries, by.x="Brewery_id", by.y="Brew_ID", all=TRUE)
colnames(BeerBreweries) <- c("Brewery_ID","Beer","Beer_ID","ABV","IBU","Style","Ounces","Brewery","City","State")
BeerBreweriesDF <-na.omit(BeerBreweries)
ByState <- aggregate(BeerBreweriesDF[,4:5], list(BeerBreweriesDF$State), median)
barplot(ByState[,2], beside = TRUE, names.arg = ByState$Group.1,xlab="ABV", main = "Median ABV by State", ylab = "State")
barplot(ByState[,3], beside = TRUE, names.arg = ByState$Group.1,xlab="IBU", main = "Median IBU by State", ylab = "State")
