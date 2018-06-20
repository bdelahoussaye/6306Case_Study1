##Read in the Files
Beer <- read.csv(file="/Users/stevencocke/Downloads/CaseStudy_2_2_2/Beers.csv", header=TRUE, sep=",")
Breweries <-read.csv(file="/Users/stevencocke/Downloads/CaseStudy_2_2_2/Breweries.csv", header=TRUE, sep=",")

##Merge the files and assign to variable
BeerBreweries <- merge(Beer, Breweries, by.x="Brewery_id", by.y="Brew_ID", all=TRUE)

##Check out the first 6 rows
head(BeerBreweries,6)

##Check out the last 6 rows
tail(BeerBreweries,6)

##Write to a csv
write.csv(BeerBreweries, "/Users/stevencocke/Desktop/6306Case_Study1/BeerBreweries.csv", row.names=FALSE)

##Which state has the highest ABV?
BeerBreweries[which(BeerBreweries$ABV == max(BeerBreweries$ABV, na.rm=TRUE)),10]

##Which state has the most bitter beer?
BeerBreweries[which(BeerBreweries$IBU == max(BeerBreweries$IBU, na.rm=TRUE)),10]

##Summary statistics for the ABV variable
summary(BeerBreweries$ABV)