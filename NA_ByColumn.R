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
# Number of N/A's in the Brewery_id Column
sum(is.na(BeerBreweries$Brewery_id))
# Number of N/A's in the Name.x Column
sum(is.na(BeerBreweries$Name.x))
# Number of N/A's in the Beer_id Column
sum(is.na(BeerBreweries$Beer_ID))
# Number of N/A's in the ABV Column
sum(is.na(BeerBreweries$ABV))
# Number of N/A's in the IBU Column
sum(is.na(BeerBreweries$IBU))
# Number of N/A's in the Syle Column
sum(is.na(BeerBreweries$Style))
# Number of N/A's in the Ounces Column
sum(is.na(BeerBreweries$Ounces))
# Number of N/A's in the Name.y Column
sum(is.na(BeerBreweries$Name.y))
# Number of N/A's in the City Column
sum(is.na(BeerBreweries$City))
# Number of N/A's in the State Column
sum(is.na(BeerBreweries$State))