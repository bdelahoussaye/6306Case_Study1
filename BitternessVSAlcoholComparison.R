######################################################################
# Bitterness Vs Alcohol Comparison
# Writen for Doing Data Science MidTerm  Summer 2018
# Authors: Terry Johnson, Brandon de la Houssaya, Steven Cocke
# Input files are "breweries.csv" and "beers.csv"
#
# 
# Updated Log
# 6/23/2018    TJ  Initial
#####################################################################
library(ggplot2)
# Read in the beers data
Beer <- read.csv(file="Beers.csv", header=TRUE, sep=",")
# Read in the breweries data
Breweries <-read.csv(file="Breweries.csv", header=TRUE, sep=",")

##Merge the files and assign to variable
BeerBreweries <- merge(Beer, Breweries, by.x="Brewery_id", by.y="Brew_ID", all=TRUE)
# Build Scatter plot
attach(BeerBreweries)
ggplot(BeerBreweries, aes(x=ABV, y=IBU, color=Beer_ID)) + geom_point(shape=1)
