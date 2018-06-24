######################################################################
#Total NA's by Column
# Writen for Doing Data Science MidTerm  Summer 2018
# Author(s): "Brandon de la Houssaya, Steven Cocke, Terry Johnson"
# Input files are "breweries.csv" and "beers.csv"
#
# Computes the total number of N/A's in teh beerbreweries dataframe 
# per column heading
# 
# Updated Log
# 6/24/2018      Initial
#####################################################################
Beer <- read.csv(file="Beers.csv", header=TRUE, sep=",")
Breweries <-read.csv(file="Breweries.csv", header=TRUE, sep=",")

BeerBreweries <- merge(Beer, Breweries, by.x="Brewery_id", by.y="Brew_ID", all=TRUE)
colnames(BeerBreweries) <- c("Brewery_ID","Beer","Beer_ID","ABV","IBU","Style","Ounces","Brewery","City","State")
attach(BeerBreweries)
# Number of N/A's in the Brewery_id Column
message("Number of NA's in Brewery ID Column: ", sum(is.na(Brewery_ID)))
# Number of N/A's in the Name.x Column
message("Number of NA's in Beer Name Column: ", sum(is.na(Beer)))
# Number of N/A's in the Beer_id Column
message("Number of NA's in Beer ID Column: ", sum(is.na(Beer_ID)))
# Number of N/A's in the ABV Column
message("Number of NA's in ABV Column: ", sum(is.na(BeerBreweries$ABV)))
# Number of N/A's in the IBU Column
message("Number of NA's in IBU Column: ", sum(is.na(BeerBreweries$IBU)))
# Number of N/A's in the Syle Column
message("Number of NA's in Style Column: ", sum(is.na(Style)))
# Number of N/A's in the Ounces Column
message("Number of NA's in Ounces Column: ", sum(is.na(Ounces)))
# Number of N/A's in the Name.y Column
message("Number of NA's in Brewer name Column: ", sum(is.na(Brewery)))
# Number of N/A's in the City Column
message("Number of NA's in City Column: ", sum(is.na(City)))
# Number of N/A's in the State Column
message("Number of NA's in State Column: ", sum(is.na(State)))

